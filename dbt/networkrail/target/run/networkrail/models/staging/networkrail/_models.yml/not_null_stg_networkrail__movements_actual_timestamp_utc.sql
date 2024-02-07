select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select actual_timestamp_utc
from `deb2-test-at-home`.`dbt_nol_staging`.`stg_networkrail__movements`
where actual_timestamp_utc is null



      
    ) dbt_internal_test