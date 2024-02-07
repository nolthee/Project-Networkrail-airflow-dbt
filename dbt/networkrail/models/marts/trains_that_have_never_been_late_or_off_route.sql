with

movements as(

    select * from{{ref('fct_movements')}}

)

select 
    train_id,
    

from movements
where variation_status != 'LATE' and variation_status != 'OFF LOUTE'
