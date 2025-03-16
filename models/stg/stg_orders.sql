-- models/stg/src_orders.sql
WITH src_orders_data AS (
    SELECT * FROM {{ ref('src_orders') }}
),
src_ship_mode_codes AS (
    SELECT * FROM {{ ref('src_ship_mode_codes') }}
),
src_order_priority_codes AS (
    SELECT * FROM {{ ref('src_order_priority_codes') }}
)

SELECT
    order_id,
    ship_date,
    src_ship_mode_codes.name AS ship_mode_name,
    customer_id,
    postal_code,
    city,
    state,
    country,
    region,
    market,
    src_order_priority_codes.name AS order_priority_name
FROM src_orders_data
left join src_ship_mode_codes on src_ship_mode_codes.id = src_orders_data.ship_mode_id
left join src_order_priority_codes on src_order_priority_codes.id = src_orders_data.order_priority_id

-- TODO: change the order id to be code and not id