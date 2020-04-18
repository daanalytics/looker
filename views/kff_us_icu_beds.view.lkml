view: kff_us_icu_beds {
  sql_table_name: "PUBLIC"."KFF_US_ICU_BEDS"
    ;;

  dimension: country_region {
    type: string
    sql: ${TABLE}."COUNTRY_REGION" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}."FIPS" ;;
  }

  dimension: hospitals {
    type: number
    sql: ${TABLE}."HOSPITALS" ;;
  }

  dimension: icu_beds {
    type: number
    sql: ${TABLE}."ICU_BEDS" ;;
  }

  dimension: iso3166_1 {
    type: string
    sql: ${TABLE}."ISO3166_1" ;;
  }

  dimension: iso3166_2 {
    type: string
    sql: ${TABLE}."ISO3166_2" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."NOTE" ;;
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
