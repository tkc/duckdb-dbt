-- models/dim_dates.sql
select 
    date_key,
    date,
    year,
    month,
    day
from "duckdb"."main"."dates"