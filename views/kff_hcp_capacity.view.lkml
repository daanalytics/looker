view: kff_hcp_capacity {
  sql_table_name: "PUBLIC"."KFF_HCP_CAPACITY"
    ;;

  dimension: chc_service_delivery_sites {
    type: number
    sql: ${TABLE}."CHC_SERVICE_DELIVERY_SITES" ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}."COUNTRY_REGION" ;;
  }

  dimension: hospital_beds_per_1000_population {
    type: number
    sql: ${TABLE}."HOSPITAL_BEDS_PER_1000_POPULATION" ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}."PROVINCE_STATE" ;;
  }

  dimension: total_chcs {
    type: number
    sql: ${TABLE}."TOTAL_CHCS" ;;
  }

  dimension: total_hospital_beds {
    type: number
    sql: ${TABLE}."TOTAL_HOSPITAL_BEDS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
