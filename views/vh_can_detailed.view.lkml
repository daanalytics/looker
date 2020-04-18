view: vh_can_detailed {
  sql_table_name: "PUBLIC"."VH_CAN_DETAILED"
    ;;

  dimension: cases {
    type: number
    sql: ${TABLE}."CASES" ;;
  }

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

  dimension: deaths {
    type: number
    sql: ${TABLE}."DEATHS" ;;
  }

  dimension: healthcare_region {
    type: string
    sql: ${TABLE}."HEALTHCARE_REGION" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension: last_reported_flag {
    type: yesno
    sql: ${TABLE}."LAST_REPORTED_FLAG" ;;
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

  dimension: province_state {
    type: string
    sql: ${TABLE}."PROVINCE_STATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
