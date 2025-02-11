-- models/dim_customers.sql
select 
    customer_id,
    customer_name,
    customer_city,
    customer_state
from {{ ref('customers') }}
