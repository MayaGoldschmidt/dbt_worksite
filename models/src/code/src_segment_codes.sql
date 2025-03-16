-- models/src/code/segment_codes.sql
WITH source_data AS (
    SELECT * FROM {{ source('worksite', 'segment_code') }}
)
SELECT
    id,
    name
FROM source_data
