module "test-account-alternates" {
  source = "../.."

  account_alternate_contacts = {
    billing    = local.result
    operations = local.result
    security   = local.result
  }
}

locals {

  result = {
    name          = var.name
    title         = var.title
    email_address = var.email
    phone_number  = var.phone
  }
}
