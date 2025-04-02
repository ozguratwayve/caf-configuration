global:
  enabled: true
  imagePullSecrets: []
  tlsDisable: false
  # External vault server address for the injector and CSI provider to use.
  # Setting this will disable deployment of a vault server.
  externalVaultAddr: ""
  # Create PodSecurityPolicy for pods
  psp:
    enable: false

injector:

  image:
    repository: "hashicorp/vault-k8s"
    tag: "1.2.1"
    pullPolicy: IfNotPresent

  # agentImage sets the repo and tag of the Vault image to use for the Vault Agent
  # containers.  This should be set to the official Vault image.  Vault 1.3.1+ is
  # required.
  agentImage:
    repository: "hashicorp/vault"
    tag: "1.13.1"

  # The default values for the injected Vault Agent containers.
  agentDefaults:
    # For more information on configuring resources, see the K8s documentation:
    # https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    cpuLimit: "500m"
    cpuRequest: "250m"
    memLimit: "128Mi"
    memRequest: "64Mi"

  nodeSelector:
    kubernetes.azure.com/agentpool: user

server:

  image:
    repository: "hashicorp/vault"
    tag: "1.13.1"

  resources:
    requests:
      memory: 256Mi
      cpu: 250m
    limits:
      memory: 256Mi
      cpu: 250m

  nodeSelector:
    kubernetes.azure.com/agentpool: user

  service:
    type: LoadBalancer
    publishNotReadyAddresses: true
    # The externalTrafficPolicy can be set to either Cluster or Local
    # and is only valid for LoadBalancer and NodePort service types.
    # The default value is Cluster.
    # ref: https://kubernetes.io/docs/concepts/services-networking/service/#external-traffic-policy
    externalTrafficPolicy: Cluster
    port: 8200
    targetPort: 8200
    annotations:
      service.beta.kubernetes.io/azure-load-balancer-internal: "true"
      service.beta.kubernetes.io/azure-load-balancer-internal-subnet: "pildev-snet-aks_nodepool_system-kbn"

  # For HA configuration and because we need to manually init the vault,
  # we need to define custom readiness/liveness Probe settings
  readinessProbe:
    enabled: true
    path: "/v1/sys/health?standbyok=true&sealedcode=204&uninitcode=204"
  livenessProbe:
    enabled: true
    path: "/v1/sys/health?standbyok=true"
    initialDelaySeconds: 360

  # extraEnvironmentVars is a list of extra environment variables to set with the stateful set. These could be
  # used to include variables required for auto-unseal.
  extraEnvironmentVars:
    VAULT_CACERT: /vault/userconfig/tls-ca/ca.crt

  # extraVolumes is a list of extra volumes to mount. These will be exposed
  # to Vault in the path `/vault/userconfig/<name>/`.
  extraVolumes:
    - type: secret
      name: tls-server
    - type: secret
      name: tls-ca

  dataStorage:
    enabled: true
    size: 30Gi
  # This configures the Vault Statefulset to create a PVC for audit logs.
  # See https://www.vaultproject.io/docs/audit/index.html to know more
  auditStorage:
    enabled: true
    size: 30Gi

  standalone:
    enabled: false

  # Run Vault in "HA" mode.
  ha:
    enabled: true
    replicas: 3
    raft:
      enabled: true
      setNodeId: true

      # tls_prefer_server_cipher_suites: https://wiki.mozilla.org/Security/Server_Side_TLS
      # update seal.resource to managedhsm.azure.net for production environments https://www.vaultproject.io/docs/configuration/seal/azurekeyvault#azurekeyvault-parameters
      config: |
        ui = true
        listener "tcp" {
          address                         = "[::]:8200"
          cluster_address                 = "[::]:8201"
          tls_disabled                    = false
          tls_min_version                 = "tls12"
          tls_cipher_suites               = "TLS_CHACHA20_POLY1305_SHA256,TLS_AES_256_GCM_SHA384,TLS_AES_128_GCM_SHA256"
          tls_prefer_server_cipher_suites = "true"
          tls_cert_file                   = "/vault/userconfig/tls-server/server.crt"
          tls_key_file                    = "/vault/userconfig/tls-server/server.key"
          tls_ca_cert_file                = "/vault/userconfig/tls-ca/ca.crt"
        }

        seal "azurekeyvault" {
          tenant_id      = "${tenant_id}"
          vault_name     = "${vault_name}"
          key_name       = "hashicorp-vault-key"
        }

        storage "raft" {
          path = "/vault/data"
          retry_join {
            leader_api_addr = "https://hashicorp-vault-0.hashicorp-vault-internal:8200"
            leader_ca_cert_file = "/vault/userconfig/tls-ca/ca.crt"
            leader_client_cert_file = "/vault/userconfig/tls-server/server.crt"
            leader_client_key_file = "/vault/userconfig/tls-server/server.key"
          }

          retry_join {
            leader_api_addr = "https://hashicorp-vault-1.hashicorp-vault-internal:8200"
            leader_ca_cert_file = "/vault/userconfig/tls-ca/ca.crt"
            leader_client_cert_file = "/vault/userconfig/tls-server/server.crt"
            leader_client_key_file = "/vault/userconfig/tls-server/server.key"
          }

          retry_join {
            leader_api_addr = "https://hashicorp-vault-2.hashicorp-vault-internal:8200"
            leader_ca_cert_file = "/vault/userconfig/tls-ca/ca.crt"
            leader_client_cert_file = "/vault/userconfig/tls-server/server.crt"
            leader_client_key_file = "/vault/userconfig/tls-server/server.key"
          }

          autopilot {
            cleanup_dead_servers = "true"
            last_contact_threshold = "200ms"
            last_contact_failure_threshold = "10m"
            max_trailing_logs = 250000
            min_quorum = 3
            server_stabilization_time = "10s"
          }
        }

        disable_mlock = true
        service_registration "kubernetes" {}

# Vault UI
ui:
  enabled: true
  serviceType: "ClusterIP"
  serviceNodePort: null
  externalPort: 8200

  # # For Added Security, edit the below
  # #loadBalancerSourceRanges:
  # #   - < Your IP RANGE Ex. 10.0.0.0/16 >
  # #   - < YOUR SINGLE IP Ex. 1.78.23.3/32 >
  # loadBalancerSourceRanges:
  #   - 10.100.4.0/22   # management_re1 network spoke
