

  create or replace view `deb2-test-at-home`.`dbt_nol`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `deb2-test-at-home`.`dbt_nol`.`my_first_dbt_model`
where id = 1;

