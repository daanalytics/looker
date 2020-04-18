view: pcm_dps_covid19_details {
  sql_table_name: "PUBLIC"."PCM_DPS_COVID19_DETAILS"
    ;;

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

  dimension: deceased {
    type: number
    sql: ${TABLE}."DECEASED" ;;
  }

  dimension: deceased_since_prev_day {
    type: number
    sql: ${TABLE}."DECEASED_SINCE_PREV_DAY" ;;
  }

  dimension: discharged_healed {
    type: number
    sql: ${TABLE}."DISCHARGED_HEALED" ;;
  }

  dimension: discharged_healed_since_prev_day {
    type: number
    sql: ${TABLE}."DISCHARGED_HEALED_SINCE_PREV_DAY" ;;
  }

  dimension: home_isolation {
    type: number
    sql: ${TABLE}."HOME_ISOLATION" ;;
  }

  dimension: home_isolation_since_prev_day {
    type: number
    sql: ${TABLE}."HOME_ISOLATION_SINCE_PREV_DAY" ;;
  }

  dimension: hospitalized {
    type: number
    sql: ${TABLE}."HOSPITALIZED" ;;
  }

  dimension: hospitalized_since_prev_day {
    type: number
    sql: ${TABLE}."HOSPITALIZED_SINCE_PREV_DAY" ;;
  }

  dimension: intensive_care {
    type: number
    sql: ${TABLE}."INTENSIVE_CARE" ;;
  }

  dimension: intensive_care_since_prev_day {
    type: number
    sql: ${TABLE}."INTENSIVE_CARE_SINCE_PREV_DAY" ;;
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

  dimension: new_positive {
    type: number
    sql: ${TABLE}."NEW_POSITIVE" ;;
  }

  dimension: note_en {
    type: string
    sql: ${TABLE}."NOTE_EN" ;;
  }

  dimension: note_it {
    type: string
    sql: ${TABLE}."NOTE_IT" ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}."PROVINCE_STATE" ;;
  }

  dimension: tested {
    type: number
    sql: ${TABLE}."TESTED" ;;
  }

  dimension: tested_since_prev_day {
    type: number
    sql: ${TABLE}."TESTED_SINCE_PREV_DAY" ;;
  }

  dimension: total_cases {
    type: number
    sql: ${TABLE}."TOTAL_CASES" ;;
  }

  dimension: total_cases_since_prev_day {
    type: number
    sql: ${TABLE}."TOTAL_CASES_SINCE_PREV_DAY" ;;
  }

  dimension: total_hospitalized {
    type: number
    sql: ${TABLE}."TOTAL_HOSPITALIZED" ;;
  }

  dimension: total_hospitalized_since_prev_day {
    type: number
    sql: ${TABLE}."TOTAL_HOSPITALIZED_SINCE_PREV_DAY" ;;
  }

  dimension: total_positive {
    type: number
    sql: ${TABLE}."TOTAL_POSITIVE" ;;
  }

  dimension: total_positive_since_prev_day {
    type: number
    sql: ${TABLE}."TOTAL_POSITIVE_SINCE_PREV_DAY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
