
  
  create view "duckdb"."main"."dim_products__dbt_tmp" as (
    -- models/dim_products.sql

with avg_calc as (
  -- products テーブルから price の平均値（NULL は除外）を計算
  select
    avg(price) as avg_price
  from "duckdb"."main"."products"
  where price is not null
)
select
  p.product_id,
  p.product_name,
  p.product_category,
  -- 欠損している場合は avg_price を利用
  coalesce(p.price, a.avg_price) as price
from "duckdb"."main"."products" as p
cross join avg_calc as a
  );
