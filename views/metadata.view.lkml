view: metadata {
  sql_table_name: "PUBLIC"."METADATA"
    ;;

  dimension: column {
    type: string
    sql: ${TABLE}."COLUMN" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: nullable {
    type: string
    sql: ${TABLE}."NULLABLE" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }

  dimension: table {
    type: string
    sql: ${TABLE}."TABLE" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
