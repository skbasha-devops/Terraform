module m1{
				source="./config"
				f1="123.txt"
				c1="content from module"
			}
			module m2{
				source="./config"
				f1="456.txt"
				c1="content from module 2"
			}
			
			
			
			module m5{
				source  = "Azure/vnet/azurerm"
				version = "5.0.1"
 resource_group_name = "eastus"
  vnet_location       = "eastus"
		
	}
			output m1f1{
				value = module.m1.fa1
			}
			
			output m2f1 {
				value = module.m2.fa1
			}
