rg_details = {
  RG1 = {
    rgname     = "rg-meesho-pay-eus-01"
    location = "eastus"
  }

#   RG2 = {
#     rgname     = "rg-meesho-cart-eus-01"
#     location = "eastus"
#   }
}

vnet_details = {

  vnet1 = {

    vnetname          = "vnet-meesho-pay-eus-01"
    location      = "East US"
    rgname        = "rg-meesho-pay-eus-01"
    address_space = ["10.0.0.0/16"]

    subnets = [

      {
        name           = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      },

      {
        name           = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }

    ]
  }



#     vnet2 = {

#     vnetname          = "vnet-meesho-cart-eus-01"
#     location      = "East US"
#     rgname        = "rg-meesho-cart-eus-01"
#     address_space = ["172.0.0.0/16"]

#     subnets = [

#       {
#         name           = "frontend-subnet"
#         address_prefixes = ["172.0.1.0/24"]
#       },

#       {
#         name           = "backend-subnet"
#         address_prefixes = ["172.0.2.0/24"]
#       }

#     ]
#   }
}



nic_details = {
  nic1 = {
    nicname = "nic-meesho-pay-eus-01"
    rgname = "rg-meesho-pay-eus-01"
    location = "eastus"
    subnet_name = "frontend-subnet"
  }


  nic2 = {
    nicname = "nic-meesho-pay-eus-02"
    rgname = "rg-meesho-pay-eus-01"
    location = "eastus"
    subnet_name = "backend-subnet"
  }
}



lvm_details = {
  vmname = "lvm-meesho-pay-eus-01"
  rgname = "rg-meesho-pay-eus-01"
  location = "eastus"
  vmsize = "Standard_B1s"

}


  kv_details = {

  dev = {

    kvname   = "devkv123"
    rgname   =  "rg-meesho-pay-eus-01"
    location = "East US"

  }
  }



# azure- vnet,subnet, nsg, asg, rbac - iam, sp, managed identity, load balancer, azure lb, azure agw, traffic, frontdoor, 
# firewall, s2s, p2s, express route, azure ad, azure key vault, azure monitor, azure log analytics, 
# serverless = azure function, logic, service bus, app service , aca, aci, adf, databricks, 
# synapse, azure data lake, azure sql, cosmos db, azure cache for redis, azure app configuration, azure event grid, azure event hub, azure notification hub, azure service bus, azure storage account, azure blob storage, azure file storage, azure queue storage, azure table storage


# must regular things - git, 