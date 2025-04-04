# Ref: https://learn.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-inject#network-security-group-rules-for-workspaces-created-after-january-13-2020
network_security_group_definition = {
  dm_nsg_databricks_nscc = {
    version            = 1
    resource_group_key = "dm_rg_networking"
    name               = "databricks-nscc"
    nsg = [
      ## Inbound Security Rules
      {
        # Generated by Azure Databricks too.
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-worker-inbound"
        description                = "Required for worker nodes communication within a cluster."
        priority                   = "100"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        # Generated by Azure Databricks too (Only if SCC is disabled).
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-proxy"
        description                = "Required for Databricks control plane communication with worker nodes."
        priority                   = "101"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "5557"
        source_address_prefix      = "AzureDatabricks"
        destination_address_prefix = "*"
      },
      {
        # Generated by Azure Databricks too (Only if SCC is disabled).
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-ssh"
        description                = "Required for Databricks control plane management of worker nodes."
        priority                   = "102"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "AzureDatabricks"
        destination_address_prefix = "*"
      },

      ## Outbound Security Rules
      {
        # Generated by Azure Databricks too.
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-worker-outbound"
        description                = "Required for worker nodes communication within a cluster."
        priority                   = "100"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        # Generated by Azure Databricks too.
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-sql"
        description                = "Required for workers communication with Azure SQL services."
        priority                   = "101"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "3306"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "Sql"
      },
      {
        # Generated by Azure Databricks too.
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-storage"
        description                = "Required for workers communication with Azure Storage services."
        priority                   = "102"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "Storage"
      },
      {
        # Generated by Azure Databricks too.
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-eventhub"
        description                = "Required for worker communication with Azure Eventhub services."
        priority                   = "103"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "9093"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "EventHub"
      },
      {
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-databricks-webapp"
        description                = "Required for workers communication with Databricks Webapp."
        priority                   = "104"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "AzureDatabricks"
      },
      # {
      #   name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-nfs-111"
      #   description                = "Required for worker communication with Azure NFS services."
      #   priority                   = "105"
      #   direction                  = "Outbound"
      #   access                     = "Allow"
      #   protocol                   = "*"
      #   source_port_range          = "*"
      #   destination_port_range     = "111"
      #   source_address_prefix      = "VirtualNetwork"
      #   destination_address_prefix = "Nfs"
      # },
      # {
      #   name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-nfs-2049"
      #   description                = "Required for worker communication with Azure NFS services."
      #   priority                   = "106"
      #   direction                  = "Outbound"
      #   access                     = "Allow"
      #   protocol                   = "*"
      #   source_port_range          = "*"
      #   destination_port_range     = "2049"
      #   source_address_prefix      = "VirtualNetwork"
      #   destination_address_prefix = "Nfs"
      # },
    ]
  }
  dm_nsg_databricks_scc = {
    version            = 1
    resource_group_key = "dm_rg_networking"
    name               = "databricks-scc"
    nsg = [
      ## Inbound Security Rules
      {
        # Generated by Azure Databricks too.
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-worker-inbound"
        description                = "Required for worker nodes communication within a cluster."
        priority                   = "100"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        # Generated by Azure Databricks too (Only if SCC is disabled).
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-proxy"
        description                = "Required for Databricks control plane communication with worker nodes."
        priority                   = "101"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "5557"
        source_address_prefix      = "AzureDatabricks"
        destination_address_prefix = "*"
      },
      {
        # Generated by Azure Databricks too (Only if SCC is disabled).
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-ssh"
        description                = "Required for Databricks control plane management of worker nodes."
        priority                   = "102"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "AzureDatabricks"
        destination_address_prefix = "*"
      },

      ## Outbound Security Rules
      {
        # Generated by Azure Databricks too.
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-worker-outbound"
        description                = "Required for worker nodes communication within a cluster."
        priority                   = "100"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        # Generated by Azure Databricks too.
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-sql"
        description                = "Required for workers communication with Azure SQL services."
        priority                   = "101"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "3306"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "Sql"
      },
      {
        # Generated by Azure Databricks too.
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-storage"
        description                = "Required for workers communication with Azure Storage services."
        priority                   = "102"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "Storage"
      },
      {
        # Generated by Azure Databricks too.
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-eventhub"
        description                = "Required for worker communication with Azure Eventhub services."
        priority                   = "103"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "9093"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "EventHub"
      },
      {
        name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-databricks-webapp"
        description                = "Required for workers communication with Databricks Webapp."
        priority                   = "104"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "AzureDatabricks"
      },
      # {
      #   name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-nfs-111"
      #   description                = "Required for worker communication with Azure NFS services."
      #   priority                   = "105"
      #   direction                  = "Outbound"
      #   access                     = "Allow"
      #   protocol                   = "*"
      #   source_port_range          = "*"
      #   destination_port_range     = "111"
      #   source_address_prefix      = "VirtualNetwork"
      #   destination_address_prefix = "Nfs"
      # },
      # {
      #   name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-nfs-2049"
      #   description                = "Required for worker communication with Azure NFS services."
      #   priority                   = "106"
      #   direction                  = "Outbound"
      #   access                     = "Allow"
      #   protocol                   = "*"
      #   source_port_range          = "*"
      #   destination_port_range     = "2049"
      #   source_address_prefix      = "VirtualNetwork"
      #   destination_address_prefix = "Nfs"
      # },
    ]
  }
  dm_nsg_databricks_end = {
    version            = 1
    resource_group_key = "dm_rg_networking"
    name               = "databricks-end"
  }
}