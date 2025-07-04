module "new-request21" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "newaccount7432@yopmail.com"
    AccountName               = "automation account"
    ManagedOrganizationalUnit = "Test-OU" 
    SSOUserEmail              = "newaccount7432@yopmail.com"
    SSOUserFirstName          = "automation"
    SSOUserLastName           = "account"
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