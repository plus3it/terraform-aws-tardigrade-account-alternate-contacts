# terraform-aws-tardigrade-account-alternate-contacts
This module manages AWS account alternate contacts, including: Billing, operations, and security. 

<!-- BEGIN TFDOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_alternate_contacts"></a> [account\_alternate\_contacts](#input\_account\_alternate\_contacts) | n/a | <pre>object({<br>    billing = optional(object({<br>      name          = string<br>      title         = string<br>      email_address = string<br>      phone_number  = string<br>    }))<br>    operations = optional(object({<br>      name          = string<br>      title         = string<br>      email_address = string<br>      phone_number  = string<br>    }))<br>    security = optional(object({<br>      name          = string<br>      title         = string<br>      email_address = string<br>      phone_number  = string<br>    }))<br>  })</pre> | n/a | yes |

## Outputs

No outputs.

<!-- END TFDOCS -->
