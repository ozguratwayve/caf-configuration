global_settings = {
  # passthrough means the default CAF naming convention is not applied and you are responsible
  # of the unicity of the names you are giving. the CAF provider will clear out
  passthrough = true
  # adds random chars at the end of the names produced by the provider
  # Do not change the following values once the launchpad deployed.
  # Enable tag inheritance (can be changed)
  # inherit_tags = false
  # When passthrough is set to false, define the number of random characters to add to the names
  # random_length = 3

  # Set the prefix that will be added to all azure resources.
  # if not set and passthrough=false, the CAF module generates a random one.
  prefix = ""

  # Default region. When not set to a resource it will use that value
  default_region = "region1"

  regions = {
    region1 = "uksouth"
    region2 = "ukwest"
  }
}