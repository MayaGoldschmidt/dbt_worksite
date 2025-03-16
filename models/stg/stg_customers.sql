-- models/stg/customers.sql
WITH src_customer_data AS (
    SELECT * FROM {{ref('src_customers')}}
),
src_segment_code AS (
    SELECT * FROM {{ ref('src_segment_codes') }}
)
SELECT
    customer_id,
    customer_name,
    src_segment_code.name as segment_name
FROM src_customer_data
left join src_segment_code ON src_segment_code.id = src_customer_data.segment_code


-- TODO : remove the cast int, and fix the base table