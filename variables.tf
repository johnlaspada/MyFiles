##############################################################################
# Sensitive Account Variables
##############################################################################

variable ibmcloud_api_key {
  description = "The IBM Cloud platform API key"
}

##############################################################################
# Account Variables
##############################################################################

variable ibm_region {
  description = "IBM Cloud region resources will be deployed"
}

variable resource_group {
  description = "Name of resource group"
}

##############################################################################
# VPC Variables
##############################################################################

variable vpc_name {
  description = "ID of VPC"
  default     = "test-vpc"
}

variable cluster_zones {
  description = "List maps containing a zone numbers and the ids of a subnet in that zone."
  type        = "list"
    /*
   example =[
    {
      zone     = 1
      subnet_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    },
    {
      zone     = 2
      subnet_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    }
  ]
  */
}


##############################################################################
# Cluster Variables
##############################################################################

variable cluster_name {
  description = "name for the cluster"
  default     = "xyz-vpc-cluter"
}

variable machine_type {
  description = "Machine type"
  default     = "b2.4x16"
}

variable worker_count {
  description = "Number of workers"
  default     = 1
}

variable disable_pse {
  description = "Disable public service endpoint for cluster. True or false"
  default     = false
}

variable enable_albs {
  description = "Enable ALBs for cluster"
  default     = true
}

variable only_private_albs {
  description = "enable only private albs"
  default     = false
}

