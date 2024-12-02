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

  validation {
    condition = alltrue([
      for contact in var.account_alternate_contacts :
      length(contact.name) >= 1 &&
      length(contact.name) <= 64
      if contact != null
    ])
    error_message = "Invalid value for Name (must be between 1 and 64 characters)"
  }

  validation {
    condition = alltrue([
      for contact in var.account_alternate_contacts :
      length(contact.title) >= 1 &&
      length(contact.title) <= 50
      if contact != null
    ])
    error_message = "Invalid value for Title (must be between 1 and 50 characters)"
  }

  validation {
    condition = alltrue([
      for contact in var.account_alternate_contacts :
      length(contact.email_address) >= 1 &&
      length(contact.email_address) <= 254 &&
      can(regex("^[\\s]*[\\w+=.#|!&-]+@[\\w.-]+\\.[\\w]+[\\s]*$", contact.email_address))
      if contact != null
    ])
    error_message = "Invalid value for email address (must be between 1 and 254 characters and correct syntax)"
  }

  validation {
    condition = alltrue([
      for contact in var.account_alternate_contacts :
      length(contact.phone_number) >= 1 &&
      length(contact.phone_number) <= 25 &&
      can(regex("^[\\s0-9()+-]+$", contact.phone_number))
      if contact != null
    ])
    error_message = "Invalid value for phone number (must be between 1 and 25 characters and correct syntax)"
  }
}
