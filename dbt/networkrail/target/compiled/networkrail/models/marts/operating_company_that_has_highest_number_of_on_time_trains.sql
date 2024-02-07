with

movements as(

    select * from`deb2-test-at-home`.`dbt_nol_intermediate`.`fct_movements`

)

select 
    company_name,
    count(1) as record_count

from movements
where variation_status = 'ON TIME'
group by company_name
order by 2 desc