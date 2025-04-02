# Helm chart definition
helm_charts = {
  vault = {
    name             = "vault"
    chart            = "vault"
    version          = "0.25.0"
    create_namespace = true
    wait             = false
    namespace        = "vault"
    repository       = "https://helm.releases.hashicorp.com"
    sets = [
      {
        name  = "global.externalVaultAddr"
        value = "https://vault.keymatehosting.internal:8200"
      },
      {
        name  = "injector.tolerations[0].key"
        value = "CriticalAddonsOnly"
      },
      {
        name  = "injector.tolerations[0].operator"
        value = "Equal"
      },
      {
        name  = "injector.tolerations[0].value"
        value = "true"
        type  = "string"
      }
    ]
  }
  external_dns = {
    name             = "external-dns"
    chart            = "external-dns"
    version          = "6.21.0"
    create_namespace = true
    wait             = false
    namespace        = "external-dns"
    repository       = "https://charts.bitnami.com/bitnami"
    sets = [
      {
        name  = "containerSecurityContext.allowPrivilegeEscalation"
        value = "false"
      },
      {
        name  = "provider"
        value = "azure-private-dns"
      },
      {
        name  = "txtOwnerId"
        value = "shared-services-aks"
      },
      {
        name  = "azure.resourceGroup"
        value = "pildev-rg-dns-connectivity-non_prod-odr"
      },
      {
        name         = "azure.tenantId"
        keyvault_key = "shared_services_tenant_id"
      },
      {
        name  = "azure.subscriptionId"
        value = "16e59691-bf0d-44ec-acbe-9797f673378d" # keymatedev-management
      },
      {
        name  = "azure.useManagedIdentityExtension"
        value = "true"
      },
      {
        name         = "azure.userAssignedIdentityID"
        keyvault_key = "kubelet_msi_client_id" # Kubelet MSI of shared-services-aks
      },
      {
        name  = "domainFilters[0]"
        value = "keymatehosting.internal"
      },
      {
        name  = "tolerations[0].key"
        value = "CriticalAddonsOnly"
      },
      {
        name  = "tolerations[0].operator"
        value = "Equal"
      },
      {
        name  = "tolerations[0].value"
        value = "true"
        type  = "string"
      }
    ]
  }
  ingress_nginx = {
    name             = "ingress-nginx"
    chart            = "ingress-nginx"
    version          = "4.7.1"
    create_namespace = true
    wait             = false
    namespace        = "ingress-nginx"
    repository       = "https://kubernetes.github.io/ingress-nginx"
    sets = [
      {
        name  = "controller.image.allowPrivilegeEscalation"
        value = false
      },
      {
        name  = "controller.tolerations[0].key"
        value = "CriticalAddonsOnly"
      },
      {
        name  = "controller.tolerations[0].operator"
        value = "Equal"
      },
      {
        name  = "controller.tolerations[0].value"
        value = "true"
        type  = "string"
      },
      {
        name  = "controller.admissionWebhooks.patch.tolerations[0].key"
        value = "CriticalAddonsOnly"
      },
      {
        name  = "controller.admissionWebhooks.patch.tolerations[0].operator"
        value = "Equal"
      },
      {
        name  = "controller.admissionWebhooks.patch.tolerations[0].value"
        value = "true"
        type  = "string"
      },
      {
        name  = "controller.image.allowPrivilegeEscalation"
        value = "false"
      },
      {
        name  = "controller.service.internal.annotations.service\\.beta\\.kubernetes\\.io/azure-load-balancer-internal"
        value = "true"
      },
      {
        name  = "controller.service.internal.enabled"
        value = "true"
      },
      {
        name  = "controller.service.external.enabled"
        value = "false"
      },
      {
        name  = "controller.service.internal.externalTrafficPolicy"
        value = "Local"
      }
    ]
  }

  akv2k8s = {
    name             = "akv2k8s"
    repository       = "https://charts.spvapi.no"
    chart            = "akv2k8s"
    namespace        = "akv2k8s"
    create_namespace = true
    file             = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/core/values-akv2k8s.yaml"
  }
}

# Cluster to authenticate
aks_clusters = {
  lz_key = "shared_services"
  key    = "shared_services_aks"
}

# Keyvault to fetch secrets from in order to authenticate with kubernetes provider. a SP credentials must exists
# and shall have cluster admin role to perform necessary operations
keyvaults = {
  kubernetes_auth_client_id = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "shared-services-identity-caf-spn-client-id"
  }
  kubernetes_auth_client_secret = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "shared-services-identity-caf-spn-client-secret"
  }
  kubernetes_auth_tenant_id = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "shared-services-identity-caf-spn-tenant-id"
  }
  kubelet_msi_client_id = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "kubelet-msi-client-id"
  }
  shared_services_tenant_id = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "tenant-id"
  }
}

