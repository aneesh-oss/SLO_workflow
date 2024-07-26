//newrelic_api_key    = "NRAK-2UW3K2FVUT559K0O3T1C9Q3GK4R"
//newrelic_account_id = "4438265"

browser_slis_slos = {
  "page_load_time" = {
    slo_name      = "Page Load Time SLO"
    description   = "Proportion of page loads faster than a threshold."
    guid          = "NDQzODI2NXxCUk9XU0VSfEFQUExJQ0FUSU9OfDEzODYxODI2OTk"
    valid_events  = "appName = 'Foodme-Frontend'"
    good_events   = "appName = 'Foodme-Frontend' AND duration < 3"
    slo_target    = 95.00
    rolling_count = 7
    rolling_unit  = "DAY"
  },
  "apdex_score" = {
    slo_name      = "Apdex Score SLO"
    description   = "Proportion of requests with good Apdex score."
    guid          = "NDQzODI2NXxCUk9XU0VSfEFQUExJQ0FUSU9OfDEzODYxODQwMzY"
    valid_events  = "appName = 'Foodme-Frontend'"
    good_events   = "appName = 'Foodme-Frontend' AND apdexScore > 0.9"
    slo_target    = 90.00
    rolling_count = 7
    rolling_unit  = "DAY"
  },
  "error_rate" = {
    slo_name      = "Error Rate SLO"
    description   = "Proportion of page views with no errors."
    guid          = "NDQzODI2NXxCUk9XU0VSfEFQUExJQ0FUSU9OfDEzODYxODI2OTk"
    valid_events  = "appName = 'Foodme-Frontend'"
    good_events   = "appName = 'Foodme-Frontend' AND error IS FALSE"
    slo_target    = 99.00
    rolling_count = 7
    rolling_unit  = "DAY"
  },
  "page_views" = {
    slo_name      = "Page Views SLO"
    description   = "Number of page views"
    guid          = "NDQzODI2NXxCUk9XU0VSfEFQUExJQ0FUSU9OfDEzODYxODQwMzY"
    valid_events  = "appName = 'Foodme-Frontend'"
    good_events   = "appName = 'Foodme-Frontend'"
    slo_target    = 100.00
    rolling_count = 7
    rolling_unit  = "DAY"
  }
}
