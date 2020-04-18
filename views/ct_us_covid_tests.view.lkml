view: ct_us_covid_tests {
  sql_table_name: "PUBLIC"."CT_US_COVID_TESTS"
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

  dimension: death {
    type: number
    sql: ${TABLE}."DEATH" ;;
  }

  dimension: death_since_previous_day {
    type: number
    sql: ${TABLE}."DEATH_SINCE_PREVIOUS_DAY" ;;
  }

  dimension: hospitalized {
    type: number
    sql: ${TABLE}."HOSPITALIZED" ;;
  }

  dimension: hospitalized_since_previous_day {
    type: number
    sql: ${TABLE}."HOSPITALIZED_SINCE_PREVIOUS_DAY" ;;
  }

  dimension: hospitalizedcumulative {
    type: number
    sql: ${TABLE}."HOSPITALIZEDCUMULATIVE" ;;
  }

  dimension: hospitalizedcumulativeincrease {
    type: number
    sql: ${TABLE}."HOSPITALIZEDCUMULATIVEINCREASE" ;;
  }

  dimension: hospitalizedcurrently {
    type: number
    sql: ${TABLE}."HOSPITALIZEDCURRENTLY" ;;
  }

  dimension: hospitalizedcurrentlyincrease {
    type: number
    sql: ${TABLE}."HOSPITALIZEDCURRENTLYINCREASE" ;;
  }

  dimension: inicucumulative {
    type: number
    sql: ${TABLE}."INICUCUMULATIVE" ;;
  }

  dimension: inicucumulativeincrease {
    type: number
    sql: ${TABLE}."INICUCUMULATIVEINCREASE" ;;
  }

  dimension: inicucurrently {
    type: number
    sql: ${TABLE}."INICUCURRENTLY" ;;
  }

  dimension: inicucurrentlyincrease {
    type: number
    sql: ${TABLE}."INICUCURRENTLYINCREASE" ;;
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

  dimension: negative {
    type: number
    sql: ${TABLE}."NEGATIVE" ;;
  }

  dimension: negative_since_previous_day {
    type: number
    sql: ${TABLE}."NEGATIVE_SINCE_PREVIOUS_DAY" ;;
  }

  dimension: onventilatorcumulative {
    type: number
    sql: ${TABLE}."ONVENTILATORCUMULATIVE" ;;
  }

  dimension: onventilatorcumulativeincrease {
    type: number
    sql: ${TABLE}."ONVENTILATORCUMULATIVEINCREASE" ;;
  }

  dimension: onventilatorcurrently {
    type: number
    sql: ${TABLE}."ONVENTILATORCURRENTLY" ;;
  }

  dimension: onventilatorcurrentlyincrease {
    type: number
    sql: ${TABLE}."ONVENTILATORCURRENTLYINCREASE" ;;
  }

  dimension: pending {
    type: number
    sql: ${TABLE}."PENDING" ;;
  }

  dimension: pending_since_previous_day {
    type: number
    sql: ${TABLE}."PENDING_SINCE_PREVIOUS_DAY" ;;
  }

  dimension: positive {
    type: number
    sql: ${TABLE}."POSITIVE" ;;
  }

  dimension: positive_since_previous_day {
    type: number
    sql: ${TABLE}."POSITIVE_SINCE_PREVIOUS_DAY" ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}."PROVINCE_STATE" ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}."TOTAL" ;;
  }

  dimension: total_since_previous_day {
    type: number
    sql: ${TABLE}."TOTAL_SINCE_PREVIOUS_DAY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
