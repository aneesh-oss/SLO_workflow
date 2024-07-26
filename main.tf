provider "newrelic" {
  account_id = var.newrelic_account_id
  api_key = var.newrelic_api_key
  region = "US"
}

resource "newrelic_service_level" "browser_slo" {
  for_each = var.browser_slis_slos

  guid        = each.value.guid
  name        = each.value.slo_name
  description = each.value.description

  events {
    account_id = var.newrelic_account_id

    valid_events {
      from  = "PageView"
      where = each.value.valid_events
    }

    good_events {
      from  = "PageView"
      where = each.value.good_events
    }
  }

  objective {
    target = each.value.slo_target

    time_window {
      rolling {
        count = each.value.rolling_count
        unit  = each.value.rolling_unit
      }
    }
  }
}
