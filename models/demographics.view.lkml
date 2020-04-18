view: demographics {
  sql_table_name: "PUBLIC"."DEMOGRAPHICS"
    ;;

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
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

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: total_female_population {
    type: number
    sql: ${TABLE}."TOTAL_FEMALE_POPULATION" ;;
  }

  dimension: total_male_population {
    type: number
    sql: ${TABLE}."TOTAL_MALE_POPULATION" ;;
  }

  dimension: total_population {
    type: number
    sql: ${TABLE}."TOTAL_POPULATION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
