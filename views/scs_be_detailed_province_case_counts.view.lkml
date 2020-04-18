view: scs_be_detailed_province_case_counts {
  sql_table_name: "PUBLIC"."SCS_BE_DETAILED_PROVINCE_CASE_COUNTS"
    ;;

  dimension: agegroup {
    type: string
    sql: ${TABLE}."AGEGROUP" ;;
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

  dimension: new_cases {
    type: number
    sql: ${TABLE}."NEW_CASES" ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}."PROVINCE" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}."SEX" ;;
  }

  dimension: total_cases {
    type: number
    sql: ${TABLE}."TOTAL_CASES" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
