# Helm chart definition
helm_charts = {
  argocd = {
    name             = "argo-cd"
    chart            = "argo-cd"
    version          = "5.45.0"
    create_namespace = true
    wait             = false
    namespace        = "argocd"
    repository       = "https://argoproj.github.io/argo-helm"
    file             = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/argocd-values.yaml.tpl"
  }
  backstage = {
    name             = "backstage"
    chart            = "backstage"
    version          = "1.3.0"
    create_namespace = true
    wait             = false
    namespace        = "backstage-dev"
    repository       = "https://backstage.github.io/charts"
    file             = "#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/values.yaml"
  }

}

manifests = {
  backstage_secret_zero = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-0.yaml"
  }
  backstage_secret_one = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-1.yaml"
  }
  backstage_secret_two = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-2.yaml"
  }
  backstage_secret_three = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-3.yaml"
  }
  backstage_secret_four = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-4.yaml"
  }
  backstage_secret_five = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-5.yaml"
  }
  backstage_secret_six = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-6.yaml"
  }
  backstage_secret_seven = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-7.yaml"
  }
  backstage_secret_eight = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-8.yaml"
  }
  backstage_secret_nine = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-9.yaml"
  }
  backstage_secret_ten = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-10.yaml"
  }
  backstage_secret_eleven = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-11.yaml"
  }
  backstage_secret_twelve = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-12.yaml"
  }
  backstage_secret_thirteen = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-13.yaml"
  }
  backstage_secret_fourteen = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-14.yaml"
  }
  backstage_secret_fifthteen = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-15.yaml"
  }
  backstage_secret_sixteen = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-16.yaml"
  }
  backstage_secret_seventeen = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-17.yaml"
  }
  backstage_secret_eighteen = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-18.yaml"
  }
  backstage_secret_nineteen = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-19.yaml"
  }
  backstage_secret_twenty = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-20.yaml"
  }
  backstage_secret_twentyone = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-21.yaml"
  }
  backstage_secret_twentytwo = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-22.yaml"
  }
  backstage_secret_twentythree = {
    file = "/#{SystemDefaultWorkingDirectory}#/configuration/level4/shared_services/applications/backstage-secrets-akv2k8s-23.yaml"
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
  argocd_sso_tenant_id = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "shared-services-argocd-identity-caf-spn-tenant-id"
  }
  argocd_sso_client_id = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "shared-services-argocd-identity-caf-spn-client-id"
  }
  # Note that argocd_vault_plugin_role_id and argocd_vault_plugin_secret_id needs to be created/updated in shared_services_identity_caf keyvault with the correct value prior to applying this landing zone
  # This landingzone is trying to datasource the value from keyvault and inject it argocd-values.yaml.tpl
  argocd_vault_plugin_role_id = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "argocd-vault-plugin-role-id"
  }
  argocd_vault_plugin_secret_id = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "argocd-vault-plugin-secret-id"
  }
  argocd_sso_client_secret = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "shared-services-argocd-identity-caf-spn-client-secret"
  }
  argocd_admins_group_id = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "argocd-admins-group-id"
  }
  azdo_albumera_ssh_key = {
    key         = "shared_services_identity_caf"
    lz_key      = "shared_services_identity"
    secret_name = "azdo-albumera-ssh-key"
  }
}

