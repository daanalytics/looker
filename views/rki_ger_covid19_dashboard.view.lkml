view: rki_ger_covid19_dashboard {
  sql_table_name: "PUBLIC"."RKI_GER_COVID19_DASHBOARD"
    ;;

  dimension: cases {
    type: number
    sql: ${TABLE}."CASES" ;;
  }

  dimension: cases7_per_100_k {
    type: number
    sql: ${TABLE}."CASES7_PER_100K" ;;
  }

  dimension: cases_per_100_k {
    type: number
    sql: ${TABLE}."CASES_PER_100K" ;;
  }

  dimension: cases_per_population {
    type: number
    sql: ${TABLE}."CASES_PER_POPULATION" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
  }

  dimension: death_rate {
    type: number
    sql: ${TABLE}."DEATH_RATE" ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}."DEATHS" ;;
  }

  dimension: district_id {
    type: string
    sql: ${TABLE}."DISTRICT_ID" ;;
  }

  dimension: district_type {
    type: string
    sql: ${TABLE}."DISTRICT_TYPE" ;;
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
    sql: ${TABLE}."LAST_UPDATE" ;;
  }

  dimension_group: last_update_date {
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

  dimension: population {
    type: number
    sql: ${TABLE}."POPULATION" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}."STATE_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
