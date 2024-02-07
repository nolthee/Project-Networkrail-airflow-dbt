

  create or replace view `deb2-test-at-home`.`dbt_nol_reporting`.`train_with_highest_number_of_off_route_records`
  OPTIONS()
  as with

movements as(

    select * from`deb2-test-at-home`.`dbt_nol_intermediate`.`fct_movements`

)

select 
    train_id ,
    count(1) as record_count

from movements
where variation_status = 'OFF ROUTE'
group by train_id
order by 2 desc;

