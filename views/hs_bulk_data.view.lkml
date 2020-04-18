view: hs_bulk_data {
  sql_table_name: "PUBLIC"."HS_BULK_DATA"
    ;;

  dimension: beds {
    type: number
    sql: ${TABLE}."BEDS" ;;
  }

  dimension: healthcare_provider_type {
    type: string
    sql: ${TABLE}."HEALTHCARE_PROVIDER_TYPE" ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}."LAT" ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}."LONG" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}."OPERATOR" ;;
  }

  dimension: staff_medical {
    type: number
    sql: ${TABLE}."STAFF_MEDICAL" ;;
  }

  dimension: staff_nursing {
    type: number
    sql: ${TABLE}."STAFF_NURSING" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
