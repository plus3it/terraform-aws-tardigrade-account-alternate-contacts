variable "account_alternate_contacts" {
  type = object({
    billing = optional(object({
      name          = string
      title         = string
      email_address = string
      phone_number  = string
    }))
    operations = optional(object({
      name          = string
      title         = string
      email_address = string
      phone_number  = string
    }))
    security = optional(object({
      name          = string
      title         = string
      email_address = string
      phone_number  = string
    }))
  })
}
