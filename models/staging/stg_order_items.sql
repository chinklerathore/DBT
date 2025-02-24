

WITH Stage1 AS (
    SELECT * FROM {{ source('Assign', 'ORDER_ITEMS') }}
)
SELECT 
    order_item_id ,
    order_id ,
    product_id as prod_id,
    quantity ,
    unit_price ,
FROM Stage1
WHERE order_item_id IS NOT NULL
