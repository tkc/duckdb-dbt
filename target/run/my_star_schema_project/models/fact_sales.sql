
  
  create view "duckdb"."main"."fact_sales__dbt_tmp" as (
    -- models/fact_sales.sql
select 
    sale_id,
    customer_id,
    product_id,
    date_key,
    quantity,
    total_amount
from "duckdb"."main"."sales"
  );
