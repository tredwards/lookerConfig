- view: agencies
  fields:

  - dimension: agency_id
    primary_key: true
    sql: ${TABLE}.agency_id

  - dimension: id
    type: int
    sql: ${TABLE}.id

  - dimension: master_trader_id
    type: int
    sql: ${TABLE}.master_trader_id

  - dimension: name
    sql: ${TABLE}.name

  - measure: count
    type: count
    drill_fields: [agency_id, name]

