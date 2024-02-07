with

movements as(

    select * from`deb2-test-at-home`.`dbt_nol_intermediate`.`fct_movements`

)

select 
    train_id,
    

from movements
where variation_status != 'LATE' and variation_status != 'OFF LOUTE'