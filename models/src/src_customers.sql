-- models/src/customers.sql
WITH source_customers_data AS (
    SELECT * FROM {{ source('worksite', 'customer') }}
)
SELECT
    customer_id,
    customer_name,
    CAST(segment_code AS INT)
FROM source_customers_data

