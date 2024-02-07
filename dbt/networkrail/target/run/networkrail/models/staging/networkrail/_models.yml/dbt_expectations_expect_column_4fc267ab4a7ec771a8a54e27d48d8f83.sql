select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with relation_columns as (

        
        select
            cast('EVENT_TYPE' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('ACTUAL_TIMESTAMP_UTC' as string) as relation_column,
            cast('DATETIME' as string) as relation_column_type
        union all
        
        select
            cast('EVENT_SOURCE' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('TRAIN_ID' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('VARIATION_STATUS' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('TOC_ID' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'EVENT_SOURCE'
            and
            relation_column_type not in ('STRING')

    )
    select *
    from test_data
      
    ) dbt_internal_test