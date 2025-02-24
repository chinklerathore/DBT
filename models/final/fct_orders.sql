
SELECT order_id, cust_id, order_date, total_amount, customer_full_name, year(order_date) as yearOrder_date from {{ref('int_orders')}} 

 