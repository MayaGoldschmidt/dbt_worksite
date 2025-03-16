-- models/src/code/sub_category_codes.sql
WITH source_data AS (
    SELECT * FROM {{ source('worksite', 'sub_category_code') }}
)
SELECT
    id,
    name
FROM source_data
