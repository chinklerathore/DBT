select C.cust_id , C.email,C.created_at,concat(C.first_name , ' ' ,C.last_name) as customer_full_name ,
O.order_id ,O.order_date , O.order_status , O.total_amount 
   from {{ref('stg_customer_id')}} C left join {{ref('stg_orders')}} O on C.cust_id= O.cust_id
   where O.order_status != 'canceled'

        
       
      
    
  
     