-- models/stg/products_in_orders.sql
WITH src_products_in_orders_data AS (
    SELECT * FROM {{ ref('src_products_in_orders') }}
),
src_category_codes AS (
    SELECT * FROM {{ ref('src_category_codes') }}
),
src_sub_category_codes AS (
    SELECT * FROM {{ ref('src_sub_category_codes') }}
)

SELECT
    product_id,
    order_id,
    src_category_codes.name as category_name,
    src_sub_category_codes.name as sub_category_name,
    product_name,
    sales,
    quantity,
    discount,
    profit,
    shipping_cost
FROM src_products_in_orders_data
left join src_category_codes on src_category_codes.id = src_products_in_orders_data.category_code
left join src_sub_category_codes on src_sub_category_codes.id = src_products_in_orders_data.sub_category_code

-- TODO: change the order id to be code and not id