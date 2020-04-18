view: scs_be_detailed_hospitalisations {
  sql_table_name: "PUBLIC"."SCS_BE_DETAILED_HOSPITALISATIONS"
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

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension: iso3166_3 {
    type: string
    sql: ${TABLE}."ISO3166_3" ;;
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

  dimension: new_in {
    type: number
    sql: ${TABLE}."NEW_IN" ;;
  }

  dimension: new_out {
    type: number
    sql: ${TABLE}."NEW_OUT" ;;
  }

  dimension: nr_reporting {
    type: number
    sql: ${TABLE}."NR_REPORTING" ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}."PROVINCE" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: total_in {
    type: number
    sql: ${TABLE}."TOTAL_IN" ;;
  }

  dimension: total_in_ecmo {
    type: number
    sql: ${TABLE}."TOTAL_IN_ECMO" ;;
  }

  dimension: total_in_icu {
    type: number
    sql: ${TABLE}."TOTAL_IN_ICU" ;;
  }

  dimension: total_in_resp {
    type: number
    sql: ${TABLE}."TOTAL_IN_RESP" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
