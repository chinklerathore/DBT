

WITH Stage1 AS (
    SELECT 
        CUSTOMER_ID,
        first_name,
        last_name,
        email,
        created_at
    FROM {{ source('Assign', 'CUSTOMERS') }}
)
SELECT 
    customer_id AS cust_id,
    LOWER(first_name) AS first_name,
    LOWER(last_name) AS last_name,
    LOWER(email) AS email,
    created_at
FROM Stage1
WHERE CUSTOMER_ID IS NOT NULL
