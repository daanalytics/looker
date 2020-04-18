view: who_situation_reports {
  sql_table_name: "PUBLIC"."WHO_SITUATION_REPORTS"
    ;;

  dimension: cases_new {
    type: number
    sql: ${TABLE}."CASES_NEW" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}."COUNTRY_REGION" ;;
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

  dimension: days_since_last_reported_case {
    type: number
    sql: ${TABLE}."DAYS_SINCE_LAST_REPORTED_CASE" ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}."DEATHS" ;;
  }

  dimension: deaths_new {
    type: number
    sql: ${TABLE}."DEATHS_NEW" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: last_reported_flag {
    type: yesno
    sql: ${TABLE}."LAST_REPORTED_FLAG" ;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}."LAST_UPDATE_DATE" ;;
  }

  dimension: situation_report_name {
    type: string
    sql: ${TABLE}."SITUATION_REPORT_NAME" ;;
  }

  dimension: situation_report_url {
    type: string
    sql: ${TABLE}."SITUATION_REPORT_URL" ;;
  }

  dimension: total_cases {
    type: number
    sql: ${TABLE}."TOTAL_CASES" ;;
  }

  dimension: transmission_classification {
    type: string
    sql: ${TABLE}."TRANSMISSION_CLASSIFICATION" ;;
  }

  measure: count {
    type: count
    drill_fields: [situation_report_name]
  }
}
