projects = {
  keymate_infrastructure = {
    create = false # Setting to false as it's already created
    name   = "keymate-infrastructure"
    features = {
      "artifacts"    = "enabled"
      "boards"       = "disabled"
      "pipelines"    = "enabled"
      "repositories" = "enabled"
      "testplans"    = "disabled"
    }
  }
}
