

  create or replace view `deb2-test-at-home`.`dbt_nol_reporting`.`trains_that_have_never_been_late_or_off_route`
  OPTIONS()
  as with

movements as(

    select * from`deb2-test-at-home`.`dbt_nol_intermediate`.`fct_movements`

)

select 
    train_id,
    

from movements
where variation_status != 'LATE' and variation_status != 'OFF LOUTE';

