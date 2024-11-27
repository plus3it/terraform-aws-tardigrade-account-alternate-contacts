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
      for type in var.account_alternate_contacts :
      length(type.name) >= 1 &&
      length(type.name) <= 64
    ])
    error_message = "Invalid value for Name (must be between 1 and 64 characters)"
  }
  validation {
    condition = alltrue([
      for type in var.account_alternate_contacts :
      length(type.title) >= 1 &&
      length(type.title) <= 50
    ])
    error_message = "Invalid value for Title (must be between 1 and 50 characters)"
  }
  validation {
    condition = alltrue([
      for type in var.account_alternate_contacts :
      length(type.email_address) >= 1 &&
      length(type.email_address) <= 50 &&
      can(regex("^[\\s]*[\\w+=.#|!&-]+@[\\w.-]+\\.[\\w]+[\\s]*$", type.email_address))
    ])
    error_message = "Invalid value for email address (must be between 1 and 50 characters and correct syntax)"
  }
  validation {
    condition = alltrue([
      for type in var.account_alternate_contacts :
      length(type.phone_number) >= 1 &&
      length(type.phone_number) <= 5 &&
      can(regex("^[\\s0-9()+-]+$", type.phone_number))
    ])
    error_message = "Invalid value for phone number (must be between 1 and 50 characters and correct syntax)"
  }
}
