-- models/src/code/order_priority_codes.sql
WITH source_data AS (
    SELECT * FROM {{ source('worksite', 'order_priority_code') }}
)
SELECT
    id,
    name
FROM source_data
