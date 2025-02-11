
  
  create view "duckdb"."main"."star_schema_view__dbt_tmp" as (
    -- models/star_schema_view.sql
with fact as (
    select * from "duckdb"."main"."fact_sales"
),
customers as (
    select * from "duckdb"."main"."dim_customers"
),
products as (
    select * from "duckdb"."main"."dim_products"
),
dates as (
    select * from "duckdb"."main"."dim_dates"
)
select
    f.sale_id,
    f.quantity,
    f.total_amount,
    c.customer_id,
    c.customer_name,
    c.customer_city,
    c.customer_state,
    p.product_id,
    p.product_name,
    p.product_category,
    p.price,
    d.date_key,
    d.date,
    d.year,
    d.month,
    d.day
from fact f
left join customers c on f.customer_id = c.customer_id
left join products p on f.product_id = p.product_id
left join dates d on f.date_key = d.date_key
  );
