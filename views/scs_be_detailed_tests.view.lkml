view: scs_be_detailed_tests {
  sql_table_name: "PUBLIC"."SCS_BE_DETAILED_TESTS"
    ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}."LAST_UPDATED_DATE" ;;
  }

  dimension: tests {
    type: number
    sql: ${TABLE}."TESTS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
