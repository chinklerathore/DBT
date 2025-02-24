

WITH Stage1 AS (
    SELECT * 
    FROM {{ source('Assign', 'PRODUCTS') }}
)
SELECT 
    product_id as prod_id,
    lower(product_name) as product_name,
    lower(category) as  category,
    price 
FROM Stage1
WHERE product_id IS NOT NULL
