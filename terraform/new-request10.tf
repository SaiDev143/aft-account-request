module "new-request10" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "newaccount98@yopmail.com"
    AccountName               = "new accunt"
    ManagedOrganizationalUnit = "Test-OU" 
    SSOUserEmail              = "newaccount98@yopmail.com"
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
  }

  account_customizations_name = "tobeseen"
}