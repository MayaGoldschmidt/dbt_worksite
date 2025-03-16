-- models/mart/mart_products_orders_customers.sql
WITH stg_products_in_orders AS (
    SELECT * FROM {{ref('stg_products_in_orders')}}
),
stg_orders AS (
    SELECT * FROM {{ ref('stg_orders') }}
),
stg_customer_data AS (
    SELECT * FROM {{ref('stg_customers')}}
)
SELECT
    stg_orders.order_id AS order_id,
    product_id,
    category_name,
    sub_category_name,
    product_name,
    sales,
    quantity,
    discount,
    profit,
    shipping_cost
    ship_date,
    ship_mode_name,
    postal_code,
    city,
    state,
    country,
    region,
    market,
    order_priority_name,
    stg_orders.customer_id AS customer_id,
    customer_name,
    segment_name
FROM stg_products_in_orders
LEFT JOIN stg_orders ON stg_orders.order_id = stg_products_in_orders.order_id
LEFT JOIN stg_customer_data ON stg_customer_data.customer_id = stg_orders.customer_id