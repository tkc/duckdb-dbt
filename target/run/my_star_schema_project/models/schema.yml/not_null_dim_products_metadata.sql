select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select metadata
from "duckdb"."main"."dim_products"
where metadata is null



      
    ) dbt_internal_test