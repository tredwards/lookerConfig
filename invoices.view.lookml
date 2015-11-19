- view: invoices
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: agency_master_trader_id
    type: int
    sql: ${TABLE}.agency_master_trader_id

  - dimension: company_reg_number
    sql: ${TABLE}.company_reg_number

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_date

  - dimension: currency
    sql: ${TABLE}.currency

  - dimension: invoice_assignment
    sql: ${TABLE}.invoice_assignment

  - dimension_group: invoice
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.invoice_date

  - dimension: invoice_direction
    sql: ${TABLE}.invoice_direction

  - dimension: invoice_from
    sql: ${TABLE}.invoice_from

  - dimension: invoice_id
    # hidden: true
    sql: ${TABLE}.invoice_id

  - dimension: invoice_ref
    sql: ${TABLE}.invoice_ref

  - dimension: invoice_to
    sql: ${TABLE}.invoice_to

  - dimension: invoice_type
    sql: ${TABLE}.invoice_type

  - dimension: net
    type: number
    sql: ${TABLE}.net

  - dimension: placement_ref
    sql: ${TABLE}.placement_ref

  - dimension: receiver
    sql: ${TABLE}.receiver

  - dimension: sales_tax
    type: number
    sql: ${TABLE}.sales_tax

  - dimension: sender
    sql: ${TABLE}.sender

  - dimension: status
    sql: ${TABLE}.status

  - dimension: total
    type: number
    sql: ${TABLE}.total

  - dimension: vat_number
    sql: ${TABLE}.vat_number

  - measure: count
    type: count
    drill_fields: [id, invoices.id, invoice_lines.count, invoices.count]

