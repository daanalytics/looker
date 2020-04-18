view: nyt_us_covid19 {
  sql_table_name: "PUBLIC"."NYT_US_COVID19"
    ;;

  dimension: cases {
    type: number
    sql: ${TABLE}."CASES" ;;
  }

  dimension: cases_since_prev_day {
    type: number
    sql: ${TABLE}."CASES_SINCE_PREV_DAY" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
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

  dimension: deaths_since_prev_day {
    type: number
    sql: ${TABLE}."DEATHS_SINCE_PREV_DAY" ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}."FIPS" ;;
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

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
