select
    TO_VARCHAR(dim_shipments.shipment_detail_date,'YYYY-MM') as shipment_month_shipment,
    dim_customers.customer_number,
    dim_items.item_number,  

    SUM(facts.order_qty_in_order_um) as order_qty
    
from dev_blindseth.fact_shipments as facts

left join dev_blindseth.dim_customers as dim_customers
    on facts.customer_number = dim_customers.customer_number
    
left join dev_blindseth.dim_items as dim_items
    on facts.item_number = dim_items.item_number
    
left join dev_blindseth.dim_shipments as dim_shipments
    on facts.quote_order_number = dim_shipments.quote_order_number
    and facts.shipment_header_number = dim_shipments.shipment_header_number
    and facts.ship_release_sequence = dim_shipments.ship_release_sequence
    and dim_items.item_number = dim_shipments.item_number 
group by 1,2,3