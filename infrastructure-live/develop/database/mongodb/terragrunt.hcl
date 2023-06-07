
include "root" {
  path = find_in_parent_folders()
}

# Include the envcommon configuration for the component. The envcommon configuration contains settings that are common
# for the component across all environments.
include "envcommon" {
  path = "${get_original_terragrunt_dir()}/../../../_common/mongodb.hcl"
}


inputs={
  private_endpoint_enabled = true
}