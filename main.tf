##############################################################################
# IBM Cloud Provider
# Here is an example Terraform configuration file that provisions an instance in IBM Cloud:
##############################################################################

provider ibm {
  ibmcloud_api_key = "${var.ibmcloud_api_key}"
  region           = "${var.ibm_region}"
  generation       =    1
  ibmcloud_timeout =    60
}

##############################################################################
# Resource Group
##############################################################################

data ibm_resource_group resource_group {
    name = "${var.resource_group}"
}

##############################################################################
# VPC Data
##############################################################################
data ibm_is_vpc vpc {
  name = "${var.vpc_name}"
}

