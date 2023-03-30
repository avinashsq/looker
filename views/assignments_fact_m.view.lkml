# The name of this view in Looker is "Assignments Fact M"
view: assignments_fact_m {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `edc_qa_analytics_customer_15.assignments_fact_m`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Assignable ID" in Explore.

  dimension: assignable_id {
    type: number
    sql: ${TABLE}.assignable_id ;;
  }

  dimension: assignable_type {
    type: string
    sql: ${TABLE}.assignable_type ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: assigned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.assigned_date ;;
  }

  dimension: assignment_priority {
    type: string
    sql: ${TABLE}.assignment_priority ;;
  }

  dimension: assignor_id {
    type: number
    sql: ${TABLE}.assignor_id ;;
  }

  dimension_group: completed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.completed_at ;;
  }

  dimension_group: created_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension_group: due {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.due_at ;;
  }

  dimension_group: etl_record_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.etl_record_created_time ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_hour {
    type: sum
    sql: ${hour} ;;
  }

  measure: average_hour {
    type: average
    sql: ${hour} ;;
  }

  dimension_group: last_reminder {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_reminder_date ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.org_id ;;
  }

  dimension: org_id_s {
    type: number
    value_format_name: id
    sql: ${TABLE}.org_id_s ;;
  }

  dimension: record_insert_time {
    type: string
    sql: ${TABLE}.record_insert_time ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_date ;;
  }

  dimension_group: started {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.started_at ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: yr {
    type: number
    sql: ${TABLE}.yr ;;
  }

  measure: count {
    type: count
    drill_fields: [id, etl_record_created_time]
  }
}
