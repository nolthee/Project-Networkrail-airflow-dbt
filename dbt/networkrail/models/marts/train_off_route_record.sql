with

movements as(

    select * from{{ref('fct_movements')}}

)

select 
    train_id ,
    count(1) as record_count

from movements
where variation_status = 'OFF ROUTE'
group by train_id
order by 2 desc