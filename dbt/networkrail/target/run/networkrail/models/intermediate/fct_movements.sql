

  create or replace view `deb2-test-at-home`.`dbt_nol_intermediate`.`fct_movements`
  OPTIONS()
  as with

movements as (

    select * from `deb2-test-at-home`.`dbt_nol_staging`.`stg_networkrail__movements`

)

, operating_companies as (

    select * from `deb2-test-at-home`.`dbt_nol_staging`.`stg_networkrail__operating_companies`

)

, joined as (

    select
        event_type
        , actual_timestamp_utc
        , event_source
        , train_id
        , variation_status
        , m.toc_id as toc_id
        , oc.company_name as company_name
        

    from movements as m
    left join operating_companies as oc
        on m.toc_id = oc.toc_id

)

, final as (

    select
        event_type
        , actual_timestamp_utc
        , event_source
        , train_id
        , variation_status
        , toc_id
        , company_name
       

    from joined

)

select * from final;

