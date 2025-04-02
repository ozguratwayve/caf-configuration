# Level 2: Core platform connectivity
The different landing zones represented in different state files at level 2 would typically be:

* The connectivity subscription components: including the virtual networking components like classic Virtual Network-based Hub and Spoke, Azure Virtual WAN, Azure Virtual WAN regional hub, site-to-site, point-to-site and ExpressRoute connectivity objects, or third parties Network Virtual Appliances. Due to their regional nature, it is likely that each of those components would live inside a different Terraform state file.
* Additional identity subscription services: could be Azure Active Directory Domain Services (managed AD), or Virtual-machine-based domain controllers.
* Additional management subscription services: could be System Center Configuration Manager, Shared Imaged Galleries, Monitor Alerts or third parties management tools.

reference: https://aztfmod.github.io/documentation/docs/fundamentals/lz-intro/#level-2-core-platform-connectivity