SELECT
    name,
    cost AS cost£currency
FROM dashboard_cdr_11_{{ .Time.CdrDashboardRange }}
