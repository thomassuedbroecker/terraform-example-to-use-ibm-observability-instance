#!/bin/bash

# **************** Global variables
source ./.env

export TF_VAR_ibmcloud_api_key=$IBMCLOUD_APIKEY
export TF_VAR_ibm_region=$REGION
export TF_VAR_resource_group=$RESOURCE_GROUP

echo "*********************************"
echo ""
echo "Initialize Terraform"
terraform init

echo ""
echo "Press any key"
read 
# **************** plan **************** 

echo "*********************************"
echo ""
echo "Generate a Terraform plan for the IBM Cloud resources"
terraform plan
