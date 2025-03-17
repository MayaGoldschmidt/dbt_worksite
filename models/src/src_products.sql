-- models/src/src_products.sql
WITH source_data AS (
    SELECT * FROM {{ ref('products') }}
)
SELECT
    country as production_country,
    customer_id,
    unit_price,
    invoice_date,
    sales,
    description,
    stock_code,
    invoice_no
FROM source_data
