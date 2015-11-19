- view: placements
  fields:

  - dimension: placement_id
    primary_key: true
    sql: ${TABLE}.placement_id

  - dimension: agency_id
    sql: ${TABLE}.agency_id

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_date

  - dimension: id
    type: int
    sql: ${TABLE}.id

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_date

  - dimension: state
    sql: ${TABLE}.state

  - dimension: status
    sql: ${TABLE}.status

  - measure: count
    type: count
    drill_fields: [placement_id]

