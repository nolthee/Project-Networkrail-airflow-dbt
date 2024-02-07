select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        event_type as value_field,
        count(*) as n_records

    from `deb2-test-at-home`.`dbt_nol_staging`.`stg_networkrail__movements`
    group by event_type

)

select *
from all_values
where value_field not in (
    'ARRIVAL','DEPARTURE'
)



      
    ) dbt_internal_test