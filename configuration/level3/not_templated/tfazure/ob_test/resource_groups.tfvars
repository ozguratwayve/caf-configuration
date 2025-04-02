resource_groups = {
  ob_test = {
    name   = "ob-test"
    region = "region1"
    tags = {
      level = "level3"
      owner = "devsecops@keymate.co.uk"
    }
  }
  ob_test_caf = {
    name   = "ob-test2-caf-rg"
    region = "region1"
    tags = {
      level = "level3"
      owner = "devsecops@keymate.co.uk"
    }
  }
  ob_test_identity_rg = {
    name  = "ob-test2-identity-rg"
    region = "region1"
    tags = {
      level = "level3"
      owner = "devsecops@keymate.co.uk"
    }    
  }
}