view: kff_us_state_mitigations {
  sql_table_name: "PUBLIC"."KFF_US_STATE_MITIGATIONS"
    ;;

  dimension: bar_restaurant_limits {
    type: string
    sql: ${TABLE}."BAR_RESTAURANT_LIMITS" ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}."COUNTRY_REGION" ;;
  }

  dimension: emergency_declaration {
    type: string
    sql: ${TABLE}."EMERGENCY_DECLARATION" ;;
  }

  dimension: large_gatherings_ban {
    type: string
    sql: ${TABLE}."LARGE_GATHERINGS_BAN" ;;
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

  dimension: mandatory_quarantine {
    type: string
    sql: ${TABLE}."MANDATORY_QUARANTINE" ;;
  }

  dimension: non_essential_business_closure {
    type: string
    sql: ${TABLE}."NON_ESSENTIAL_BUSINESS_CLOSURE" ;;
  }

  dimension: primary_elections_postponed {
    type: string
    sql: ${TABLE}."PRIMARY_ELECTIONS_POSTPONED" ;;
  }

  dimension: state_mandated_school_closures {
    type: string
    sql: ${TABLE}."STATE_MANDATED_SCHOOL_CLOSURES" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
