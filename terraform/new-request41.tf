module "new-request41" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "newaccount1433@yopmail.com"
    AccountName               = "automations accounts"
    ManagedOrganizationalUnit = "Test-2 (ou-kcb4-q56yj9ij)" 
    SSOUserEmail              = "newaccount1433@yopmail.com"
    SSOUserFirstName          = "automations"
    SSOUserLastName           = "accounts"
  }

  account_tags = {
    "ABC:Owner"       = "Shanmukh"
    "ABC:Division"    = "ENT"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
    run_create_pipeline = "false"
  }

  account_customizations_name = "tobeseen"
}