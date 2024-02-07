

  create or replace view `deb2-test-at-home`.`dbt_nol_reporting`.`hours_of_each_day_with_highest_number_of_late_trains`
  OPTIONS()
  as with

movements as(

    select * from`deb2-test-at-home`.`dbt_nol_intermediate`.`fct_movements`

)

select
    extract(HOUR from actual_timestamp_utc) as hour_each_day,
    sum(case when variation_status = 'LATE' then 1 else 0 end) as record_of_late_train
from movements
group by hour_each_day
order by 2 desc;

