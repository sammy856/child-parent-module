# module "rgs" {
#     source = "../../modules/resource_group"
#     rgname = "rg-easyshop-pay-eus"
#     location = "eastus"
            
#         }


module "RGS" {
    source = "../../modules/resource_group"
    rgdetails = var.rg_details
    # rgdetails = {
    #         RG1 = { 

    #             name = "demo-rg"
    #             location = "eastus" 
                
    #             }
            
           
      
    # }

}


module "vnets" {
    source = "../../modules/virtual_network"
    vnetdetails = var.vnet_details
}


module "nics" {
    source = "../../modules/nic"
    nicdetails = var.nic_details
}


module "lvm" {
    source = "../../modules/LinuxVm"
    lvmdetails = var.lvm_details
}


module "kvs" {
    source = "../../modules/keyvault"
    kvdetails = kv_details
}
