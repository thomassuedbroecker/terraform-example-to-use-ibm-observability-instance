# Terraform example to use the "ibm-observability-instances" module 

Short example how to use the new module [terraform-ibm-observability-instances](https://github.com/terraform-ibm-modules/terraform-ibm-observability-instances).


### Step 1: Git clone 

```sh
git clone https://github.com/thomassuedbroecker/terraform-example-to-use-ibm-observability-instance.git
cd terraform-example-to-use-ibm-observability-instance/code
```

### Step 2: Configure the environment variables

```sh
cat .env-template > .env
```

```sh
# used as 'environment' variables
RESOURCE_GROUP="default"
REGION="us-south"
IBMCLOUD_APIKEY="YOUR_IBMCLOUD_APIKEY"
``` 

### Step 2: Execute bash script

```sh
sh plan-observability-environment.sh
```

* Example output:

* **Init**

```sh
*********************************

Initialize Terraform
Initializing modules...
Downloading git::https://github.com/terraform-ibm-modules/terraform-ibm-observability-instances?ref=main for observability_instances...
- observability_instances in .terraform/modules/observability_instances
Downloading git::https://github.com/terraform-ibm-modules/terraform-ibm-resource-group?ref=main for resource_group...
- resource_group in .terraform/modules/resource_group

Initializing the backend...

Initializing provider plugins...
- Finding ibm-cloud/ibm versions matching ">= 1.38.1, >= 1.48.0"...
- Installing ibm-cloud/ibm v1.48.0...
- Installed ibm-cloud/ibm v1.48.0 (self-signed, key ID AAD3B791C49CC253)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/cli/plugins/signing.html

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

Press any key
```

* **Plan**

```sh
*********************************

Generate a Terraform plan for the IBM Cloud resources

Terraform used the selected providers to generate the following execution plan.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.observability_instances.ibm_resource_instance.activity_tracker[0] will be created
  + resource "ibm_resource_instance" "activity_tracker" {
      + account_id              = (known after apply)
      + allow_cleanup           = (known after apply)
      + created_at              = (known after apply)
      + created_by              = (known after apply)
      + crn                     = (known after apply)
      + dashboard_url           = (known after apply)
      + deleted_at              = (known after apply)
      + deleted_by              = (known after apply)
      + extensions              = (known after apply)
      + guid                    = (known after apply)
      + id                      = (known after apply)
      + last_operation          = (known after apply)
      + location                = "us-south"
      + locked                  = (known after apply)
      + name                    = "terraform-test-activity-tracker-instance"
      + plan                    = "7-day"
      + plan_history            = (known after apply)
      + resource_aliases_url    = (known after apply)
      + resource_bindings_url   = (known after apply)
      + resource_controller_url = (known after apply)
      + resource_crn            = (known after apply)
      + resource_group_crn      = (known after apply)
      + resource_group_id       = "7d3434056bc14c688eacaeddcac465b9"
      + resource_group_name     = (known after apply)
      + resource_id             = (known after apply)
      + resource_keys_url       = (known after apply)
      + resource_name           = (known after apply)
      + resource_plan_id        = (known after apply)
      + resource_status         = (known after apply)
      + restored_at             = (known after apply)
      + restored_by             = (known after apply)
      + scheduled_reclaim_at    = (known after apply)
      + scheduled_reclaim_by    = (known after apply)
      + service                 = "logdnaat"
      + service_endpoints       = (known after apply)
      + state                   = (known after apply)
      + status                  = (known after apply)
      + sub_type                = (known after apply)
      + tags                    = (known after apply)
      + target_crn              = (known after apply)
      + type                    = (known after apply)
      + update_at               = (known after apply)
      + update_by               = (known after apply)
    }

  # module.observability_instances.ibm_resource_instance.logdna[0] will be created
  + resource "ibm_resource_instance" "logdna" {
      + account_id              = (known after apply)
      + allow_cleanup           = (known after apply)
      + created_at              = (known after apply)
      + created_by              = (known after apply)
      + crn                     = (known after apply)
      + dashboard_url           = (known after apply)
      + deleted_at              = (known after apply)
      + deleted_by              = (known after apply)
      + extensions              = (known after apply)
      + guid                    = (known after apply)
      + id                      = (known after apply)
      + last_operation          = (known after apply)
      + location                = "us-south"
      + locked                  = (known after apply)
      + name                    = "my-terraform-logdna-instance"
      + parameters              = {
          + "default_receiver" = "true"
        }
      + plan                    = "7-day"
      + plan_history            = (known after apply)
      + resource_aliases_url    = (known after apply)
      + resource_bindings_url   = (known after apply)
      + resource_controller_url = (known after apply)
      + resource_crn            = (known after apply)
      + resource_group_crn      = (known after apply)
      + resource_group_id       = "7d3434056bc14c688eacaeddcac465b9"
      + resource_group_name     = (known after apply)
      + resource_id             = (known after apply)
      + resource_keys_url       = (known after apply)
      + resource_name           = (known after apply)
      + resource_plan_id        = (known after apply)
      + resource_status         = (known after apply)
      + restored_at             = (known after apply)
      + restored_by             = (known after apply)
      + scheduled_reclaim_at    = (known after apply)
      + scheduled_reclaim_by    = (known after apply)
      + service                 = "logdna"
      + service_endpoints       = (known after apply)
      + state                   = (known after apply)
      + status                  = (known after apply)
      + sub_type                = (known after apply)
      + tags                    = (known after apply)
      + target_crn              = (known after apply)
      + type                    = (known after apply)
      + update_at               = (known after apply)
      + update_by               = (known after apply)
    }

  # module.observability_instances.ibm_resource_instance.sysdig[0] will be created
  + resource "ibm_resource_instance" "sysdig" {
      + account_id              = (known after apply)
      + allow_cleanup           = (known after apply)
      + created_at              = (known after apply)
      + created_by              = (known after apply)
      + crn                     = (known after apply)
      + dashboard_url           = (known after apply)
      + deleted_at              = (known after apply)
      + deleted_by              = (known after apply)
      + extensions              = (known after apply)
      + guid                    = (known after apply)
      + id                      = (known after apply)
      + last_operation          = (known after apply)
      + location                = "us-south"
      + locked                  = (known after apply)
      + name                    = "my-terraform-sysdig-instance"
      + parameters              = {
          + "default_receiver" = "true"
        }
      + plan                    = "graduated-tier"
      + plan_history            = (known after apply)
      + resource_aliases_url    = (known after apply)
      + resource_bindings_url   = (known after apply)
      + resource_controller_url = (known after apply)
      + resource_crn            = (known after apply)
      + resource_group_crn      = (known after apply)
      + resource_group_id       = "7d3434056bc14c688eacaeddcac465b9"
      + resource_group_name     = (known after apply)
      + resource_id             = (known after apply)
      + resource_keys_url       = (known after apply)
      + resource_name           = (known after apply)
      + resource_plan_id        = (known after apply)
      + resource_status         = (known after apply)
      + restored_at             = (known after apply)
      + restored_by             = (known after apply)
      + scheduled_reclaim_at    = (known after apply)
      + scheduled_reclaim_by    = (known after apply)
      + service                 = "sysdig-monitor"
      + service_endpoints       = (known after apply)
      + state                   = (known after apply)
      + status                  = (known after apply)
      + sub_type                = (known after apply)
      + tags                    = (known after apply)
      + target_crn              = (known after apply)
      + type                    = (known after apply)
      + update_at               = (known after apply)
      + update_by               = (known after apply)
    }

  # module.observability_instances.ibm_resource_key.at_resource_key[0] will be created
  + resource "ibm_resource_key" "at_resource_key" {
      + account_id            = (known after apply)
      + created_at            = (known after apply)
      + created_by            = (known after apply)
      + credentials           = (sensitive value)
      + credentials_json      = (sensitive value)
      + crn                   = (known after apply)
      + deleted_at            = (known after apply)
      + deleted_by            = (known after apply)
      + guid                  = (known after apply)
      + iam_compatible        = (known after apply)
      + id                    = (known after apply)
      + name                  = "AtManagerKey"
      + resource_group_id     = (known after apply)
      + resource_instance_id  = (known after apply)
      + resource_instance_url = (known after apply)
      + role                  = "Manager"
      + source_crn            = (known after apply)
      + state                 = (known after apply)
      + status                = (known after apply)
      + updated_at            = (known after apply)
      + updated_by            = (known after apply)
      + url                   = (known after apply)
    }

  # module.observability_instances.ibm_resource_key.log_dna_resource_key[0] will be created
  + resource "ibm_resource_key" "log_dna_resource_key" {
      + account_id            = (known after apply)
      + created_at            = (known after apply)
      + created_by            = (known after apply)
      + credentials           = (sensitive value)
      + credentials_json      = (sensitive value)
      + crn                   = (known after apply)
      + deleted_at            = (known after apply)
      + deleted_by            = (known after apply)
      + guid                  = (known after apply)
      + iam_compatible        = (known after apply)
      + id                    = (known after apply)
      + name                  = "LogDnaManagerKey"
      + resource_group_id     = (known after apply)
      + resource_instance_id  = (known after apply)
      + resource_instance_url = (known after apply)
      + role                  = "Manager"
      + source_crn            = (known after apply)
      + state                 = (known after apply)
      + status                = (known after apply)
      + updated_at            = (known after apply)
      + updated_by            = (known after apply)
      + url                   = (known after apply)
    }

  # module.observability_instances.ibm_resource_key.sysdig_resource_key[0] will be created
  + resource "ibm_resource_key" "sysdig_resource_key" {
      + account_id            = (known after apply)
      + created_at            = (known after apply)
      + created_by            = (known after apply)
      + credentials           = (sensitive value)
      + credentials_json      = (sensitive value)
      + crn                   = (known after apply)
      + deleted_at            = (known after apply)
      + deleted_by            = (known after apply)
      + guid                  = (known after apply)
      + iam_compatible        = (known after apply)
      + id                    = (known after apply)
      + name                  = "SysdigManagerKey"
      + resource_group_id     = (known after apply)
      + resource_instance_id  = (known after apply)
      + resource_instance_url = (known after apply)
      + role                  = "Manager"
      + source_crn            = (known after apply)
      + state                 = (known after apply)
      + status                = (known after apply)
      + updated_at            = (known after apply)
      + updated_by            = (known after apply)
      + url                   = (known after apply)
    }

Plan: 6 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + activity_tracker_resource_key = (sensitive value)
  + logdna_resource_key           = (sensitive value)
  + sysdig_resource_key           = (sensitive value)

────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" now.
```

