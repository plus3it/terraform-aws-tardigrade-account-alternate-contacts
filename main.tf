resource "aws_account_alternate_contact" "billing" {
  count = var.account_alternate_contacts.billing != null ? 1 : 0

  alternate_contact_type = "BILLING"
  email_address          = var.account_alternate_contacts.billing.email_address
  name                   = var.account_alternate_contacts.billing.name
  phone_number           = var.account_alternate_contacts.billing.phone_number
  title                  = var.account_alternate_contacts.billing.title
}

resource "aws_account_alternate_contact" "operations" {
  count = var.account_alternate_contacts.operations != null ? 1 : 0

  alternate_contact_type = "OPERATIONS"
  email_address          = var.account_alternate_contacts.operations.email_address
  name                   = var.account_alternate_contacts.operations.name
  phone_number           = var.account_alternate_contacts.operations.phone_number
  title                  = var.account_alternate_contacts.operations.title
}

resource "aws_account_alternate_contact" "security" {
  count = var.account_alternate_contacts.security != null ? 1 : 0

  alternate_contact_type = "SECURITY"
  email_address          = var.account_alternate_contacts.security.email_address
  name                   = var.account_alternate_contacts.security.name
  phone_number           = var.account_alternate_contacts.security.phone_number
  title                  = var.account_alternate_contacts.security.title
}
