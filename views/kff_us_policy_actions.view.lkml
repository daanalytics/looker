view: kff_us_policy_actions {
  sql_table_name: "PUBLIC"."KFF_US_POLICY_ACTIONS"
    ;;

  dimension: early_prescription_refills {
    type: string
    sql: ${TABLE}."EARLY_PRESCRIPTION_REFILLS" ;;
  }

  dimension: free_cost_vaccine_when_available {
    type: string
    sql: ${TABLE}."FREE_COST_VACCINE_WHEN_AVAILABLE" ;;
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

  dimension: marketplace_special_enrollment_period {
    type: string
    sql: ${TABLE}."MARKETPLACE_SPECIAL_ENROLLMENT_PERIOD" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}."NOTES" ;;
  }

  dimension: paid_sick_leave {
    type: string
    sql: ${TABLE}."PAID_SICK_LEAVE" ;;
  }

  dimension: premium_payment_grace_period {
    type: string
    sql: ${TABLE}."PREMIUM_PAYMENT_GRACE_PERIOD" ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}."PROVINCE_STATE" ;;
  }

  dimension: section_1135_waiver {
    type: string
    sql: ${TABLE}."SECTION_1135_WAIVER" ;;
  }

  dimension: state_requires_waiver_of_prior_authorization_requirements {
    type: string
    sql: ${TABLE}."STATE_REQUIRES_WAIVER_OF_PRIOR_AUTHORIZATION_REQUIREMENTS" ;;
  }

  dimension: waive_cost_sharing_for_covid_19_treatment {
    type: string
    sql: ${TABLE}."WAIVE_COST_SHARING_FOR_COVID_19_TREATMENT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
