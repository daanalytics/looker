connection: "snowflake_covid19"
label: "7) COVID19 - Starschema"

# include all the views
include: "/views/**/*.view"

datagroup: covid19_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: covid19_default_datagroup

explore: ct_us_covid_tests {}

explore: demographics {}

explore: hdx_acaps {}

explore: hs_bulk_data {}

explore: hum_restrictions_airline {}

explore: hum_restrictions_country {}

explore: jhu_covid_19 {}

explore: kff_hcp_capacity {}

explore: kff_us_icu_beds {}

explore: kff_us_policy_actions {}

explore: kff_us_state_mitigations {}

explore: metadata {}

explore: nyt_us_covid19 {}

explore: pcm_dps_covid19 {}

explore: pcm_dps_covid19_details {}

explore: rki_ger_covid19_dashboard {}

explore: scs_be_detailed_hospitalisations {}

explore: scs_be_detailed_mortality {}

explore: scs_be_detailed_province_case_counts {}

explore: scs_be_detailed_tests {}

explore: vh_can_detailed {}

explore: who_situation_reports {}
