view: scs_be_detailed_mortality {
  sql_table_name: "PUBLIC"."SCS_BE_DETAILED_MORTALITY"
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

  dimension: deaths {
    type: number
    sql: ${TABLE}."DEATHS" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
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

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}."SEX" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
