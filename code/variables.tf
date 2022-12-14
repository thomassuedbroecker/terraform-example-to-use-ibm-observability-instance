# *********
# Variables
# *********

# ********************
# IBM Cloud basics
# ********************
variable "ibmcloud_api_key" { 
    description = "IBM Cloud API Key"
}

variable "ibm_region" {
    description = "IBM Cloud region"
}

variable "resource_group" {
    description = "IBM Cloud resource group"
}

# ********************
# Sysdig (Montoring)
# ********************
variable "sysdig_instance_name" {
    description = "IBM Cloud activity_tracker_ats_instance name"
    type        = string
    default     = "my-terraform-sysdig-instance"
}

variable "sysdig_plan" {
    description = "IBM Cloud sysdig_plan (Monitoring) plan"
    type        = string
    default     = "graduated-tier"
}

# ********************
# Activity Tracker
# ********************
variable "activity_tracker_instance_name" {
    description = "IBM Cloud activity_tracker_instance_name"
    type        = string
    default     = "terraform-test-activity-tracker-instance"
}

variable "activity_tracker_plan" {
    description = "IBM Cloud activity_tracker_plan"
    type        = string
    default     = "7-day"
}

# ********************
# Log DNA
# ********************
variable "logdna_instance_name" {
    description = "IBM Cloud activity_tracker_ats_instance name"
    type        = string
    default     = "my-terraform-logdna-instance"
}

variable "logdna_plan" {
    description = "IBM Cloud logdna_plan"
    type        = string
    default     = "7-day"
}






