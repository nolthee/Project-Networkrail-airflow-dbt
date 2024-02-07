with

source as (

    select * from `deb2-test-at-home`.`dbt_nol_seed`.`operating_companies`

)

, final as (

    select
        toc_id
        , company_name

    from source

)

select * from final