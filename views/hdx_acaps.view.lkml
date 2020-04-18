view: hdx_acaps {
  sql_table_name: "PUBLIC"."HDX_ACAPS"
    ;;

  dimension: admin_2 {
    type: string
    sql: ${TABLE}."ADMIN_2" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: country_state {
    type: string
    sql: ${TABLE}."COUNTRY_STATE" ;;
  }

  dimension_group: date_implemented {
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
    sql: ${TABLE}."DATE_IMPLEMENTED" ;;
  }

  dimension_group: entry {
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
    sql: ${TABLE}."ENTRY_DATE" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
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

  dimension: link {
    type: string
    sql: ${TABLE}."LINK" ;;
  }

  dimension: measure {
    type: string
    sql: ${TABLE}."MEASURE" ;;
  }

  dimension: non_compliance {
    type: string
    sql: ${TABLE}."NON_COMPLIANCE" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}."SOURCE_TYPE" ;;
  }

  dimension: targeted_pop_group {
    type: string
    sql: ${TABLE}."TARGETED_POP_GROUP" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
