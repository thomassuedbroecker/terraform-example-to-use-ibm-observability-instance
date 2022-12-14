# *********
# Outputs
# *********

# Verify information here: https://github.com/terraform-ibm-modules/terraform-ibm-observability-instances#outputs

output "activity_tracker_resource_key" {
  value = module.observability_instances.activity_tracker_resource_key
  sensitive = true
  description = "The resource/service key for agents to use"
}

output "logdna_resource_key" {
  value = module.observability_instances.logdna_resource_key
  sensitive = true
  description = "LogDNA service key for agents to use"
}

output "sysdig_resource_key" {
  value = module.observability_instances.sysdig_access_key
  sensitive = true
  description = "Sysdig access key for agents to use"
}

