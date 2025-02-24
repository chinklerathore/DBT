select O.order_id, sum(O.quantity*O.unit_price) as Total_revenue
   from {{ref('stg_products')}} P left join {{ref('stg_order_items')}} O on P.prod_id = O.prod_id  
   group by O.order_id 

           
      
    
  
     