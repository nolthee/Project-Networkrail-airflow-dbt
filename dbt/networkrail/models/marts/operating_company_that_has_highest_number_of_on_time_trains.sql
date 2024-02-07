with

movements as(

    select * from{{ref('fct_movements')}}

)

select 
    company_name,
    count(1) as record_count

from movements
where variation_status = 'ON TIME'
group by company_name
order by 2 desc
