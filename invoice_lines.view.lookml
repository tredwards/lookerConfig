- view: invoice_lines
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: candidate_name
    sql: ${TABLE}.candidate_name

  - dimension: client_name
    sql: ${TABLE}.client_name

  - dimension: invoice_from_ref
    sql: ${TABLE}.invoice_from_ref

  - dimension: invoice_id
    # hidden: true
    sql: ${TABLE}.invoice_id

  - dimension: net
    type: number
    sql: ${TABLE}.net

  - dimension: original_invoice_amount
    type: number
    sql: ${TABLE}.original_invoice_amount

  - dimension_group: period_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.period_end

  - dimension_group: period_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.period_start

  - dimension: rate_title
    sql: ${TABLE}.rate_title

  - dimension: rate_type
    sql: ${TABLE}.rate_type

  - dimension: rate_value
    type: number
    sql: ${TABLE}.rate_value

  - dimension: sales_tax
    type: number
    sql: ${TABLE}.sales_tax

  - dimension: sonovate_fee
    type: number
    sql: ${TABLE}.sonovate_fee

  - dimension: timesheet_ref
    sql: ${TABLE}.timesheet_ref

  - dimension: total
    type: number
    sql: ${TABLE}.total

  - dimension: units
    type: number
    sql: ${TABLE}.units

  - measure: count
    type: count
    drill_fields: [id, client_name, candidate_name, invoices.id]

