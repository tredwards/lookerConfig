- connection: app_replicated

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: agencies

- explore: invoice_lines
  joins:
    - join: invoices
      type: left_outer 
      sql_on: ${invoice_lines.invoice_id} = ${invoices.id}
      relationship: many_to_one


- explore: invoices
  joins:
    - join: agencies
      type: left_outer 
      sql_on: ${invoices.agency_master_trader_id} = ${agencies.master_trader_id}
      relationship: many_to_one


- explore: placements



