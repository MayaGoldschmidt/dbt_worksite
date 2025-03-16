-- models/src/code/ship_mode_codes.sql
WITH source_data AS (
    SELECT * FROM {{ source('worksite', 'ship_mode_code') }}
)
SELECT
    id,
    name
FROM source_data
