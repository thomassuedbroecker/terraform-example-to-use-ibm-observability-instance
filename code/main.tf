# ********
# Module definitions
# ********

# ********
# Use the existing 'terraform-ibm-resource-group' module and
# define the new module called: "resource_group".
# Information: https://github.com/terraform-ibm-modules/terraform-ibm-resource-group#usage
# ********
module "resource_group" {
  # Replace "main" with a GIT release version to lock into a specific release
  source                       = "git::https://github.com/terraform-ibm-modules/terraform-ibm-resource-group?ref=main"
  existing_resource_group_name = var.resource_group
}

# ********
# Use the existing 'terraform-ibm-observability-instances' and 'resource_group' modules to 
# define the new module called: "observability_instances".
# Verify inputs here: https://github.com/terraform-ibm-modules/terraform-ibm-observability-instances#inputs
module "observability_instances" {
  source                             = "git::https://github.com/terraform-ibm-modules/terraform-ibm-observability-instances?ref=main"
  resource_group_id                  = module.resource_group.resource_group_id
  region                             = var.ibm_region
  logdna_instance_name               = var.logdna_instance_name
  logdna_plan                        = var.logdna_plan
  sysdig_instance_name               = var.sysdig_instance_name
  sysdig_plan                        = var.sysdig_plan
  activity_tracker_instance_name     = var.activity_tracker_instance_name
  activity_tracker_plan              = var.activity_tracker_plan
}