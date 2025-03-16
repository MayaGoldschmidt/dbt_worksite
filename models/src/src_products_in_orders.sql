-- models/src/products_in_orders.sql
WITH source_data AS (
    SELECT * FROM {{ source('worksite', 'products_in_order') }}
)
SELECT
    product_id,
    order_id,
    CAST(category_code AS INT),
    CAST(sub_category_code AS INT),
    product_name,
    sales,
    quantity,
    discount,
    profit,
    shipping_cost
FROM source_data
