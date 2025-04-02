organization_agent_pools = {
  level0 = {
    name           = "gitops-level0"
    auto_provision = false # When set to false the agent pool is not populated automatically into the devops projects (recommended)
  }
  level1 = {
    name           = "gitops-level1"
    auto_provision = false
  }
  level2 = {
    name           = "gitops-level2"
    auto_provision = false
  }
  level3 = {
    name           = "gitops-level3"
    auto_provision = false
  }
  level4 = {
    name           = "gitops-level4"
    auto_provision = false
  }
  prod_level0 = {
    name           = "gitops-prod-level0"
    auto_provision = false # When set to false the agent pool is not populated automatically into the devops projects (recommended)
  }
  prod_level1 = {
    name           = "gitops-prod-level1"
    auto_provision = false
  }
  prod_level2 = {
    name           = "gitops-prod-level2"
    auto_provision = false
  }
  prod_level3 = {
    name           = "gitops-prod-level3"
    auto_provision = false
  }
  prod_level4 = {
    name           = "gitops-prod-level4"
    auto_provision = false
  }
}

project_agent_pools = {
  keymatedev_management = {
    level0 = {
      key          = "level0"
      grant_access = true
    }
    level1 = {
      key          = "level1"
      grant_access = true
    }
    level2 = {
      key          = "level2"
      grant_access = true
    }
    level3 = {
      key          = "level3"
      grant_access = true
    }
    level4 = {
      key          = "level4"
      grant_access = true
    }
    prod_level0 = {
      key          = "prod_level0"
      grant_access = true
    }
    prod_level1 = {
      key          = "prod_level1"
      grant_access = true
    }
    prod_level2 = {
      key          = "prod_level2"
      grant_access = true
    }
    prod_level3 = {
      key          = "prod_level3"
      grant_access = true
    }
    prod_level4 = {
      key          = "prod_level4"
      grant_access = true
    }
  }
}