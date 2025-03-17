-- models/mart/mart_products_orders_customers.sql
WITH stg_products_orders_customers AS (
    SELECT * FROM {{ref('stg_products_orders_customers')}}
)
SELECT
    order_id,
    product_id,
    category_name,
    sub_category_name,
    product_name,
    order_sales,
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
    customer_id,
    customer_name,
    segment_name,
    production_country,
    unit_price,
    invoice_date,
    product_sale,
    description,
    stock_code,
    invoice_no
FROM stg_products_orders_customers