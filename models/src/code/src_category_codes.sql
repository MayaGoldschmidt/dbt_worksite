-- models/src/code/category_codes.sql
WITH source_data AS (
    SELECT * FROM {{ source('worksite', 'category_code') }}
)
SELECT
    id,
    name
FROM source_data
