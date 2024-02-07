with

movements as(

    select * from{{ref('fct_movements')}}

)

select
    extract(HOUR from actual_timestamp_utc) as hour_each_day,
    sum(case when variation_status = 'LATE' then 1 else 0 end) as record_of_late_train
from movements
group by hour_each_day
order by 2 desc
