-- models/src/src_orders.sql
WITH source_data AS (
    SELECT * FROM {{ source('worksite', 'orders') }}
)
SELECT
    order_id,
    ship_date,
    CAST(ship_mode_id AS INT),
    customer_id,
    postal_code,
    city,
    state,
    country,
    region,
    market,
    CAST(order_priority_id AS INT)
FROM source_data
