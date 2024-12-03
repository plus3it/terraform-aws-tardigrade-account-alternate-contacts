module "test_all_inputs" {
  source = "../.."

  account_alternate_contacts = {
    billing    = null
    operations = local.contact
    security   = local.contact
  }
}

locals {
  contact = {
    name          = "John_Doe"
    title         = "Cloud_Engineer"
    email_address = "mail@example.com"
    phone_number  = "555-555-5555"
  }
}
