module "new-request60" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "newaccount420@yopmail.com"
    AccountName               = "tii-acount1"
    ManagedOrganizationalUnit = "Final (ou-kcb4-iaeuceu9)" 
    SSOUserEmail              = "newaccount420@yopmail.com"
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