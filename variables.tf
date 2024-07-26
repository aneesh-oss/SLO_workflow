# Variable to store the New Relic API Key
variable "newrelic_api_key" {
  description = "The New Relic API key used to authenticate API requests."
  type        = string
}

# Variable to store the New Relic Account ID
variable "newrelic_account_id" {
  description = "The New Relic account ID where the SLOs are created."
  type        = number
}

# Variable to define SLI and SLO configurations
variable "browser_slis_slos" {
  description = "A map of SLI and SLO configurations for browser monitoring."
  type = map(object({
    slo_name        = string
    description     = string
    guid            = string
    valid_events    = string
    good_events     = string
    slo_target      = number
    rolling_count   = number
    rolling_unit    = string
  }))
  default = {}
}
