
WITH Stage1 AS (
    SELECT * 
    FROM {{ source('Assign', 'ORDERS') }}
)
SELECT 
    customer_id AS cust_id,
     order_id ,
    order_date,
    LOWER(order_status) AS order_status,
     total_amount 
FROM Stage1
WHERE order_id IS NOT NULL
