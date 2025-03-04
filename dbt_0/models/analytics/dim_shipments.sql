select
    quote_order_number,
    shipment_header_number,
    ship_release_sequence, 
    
    shipment_status,
    shipment_date,  
    -- customer_number, 
    ship_to_country_name,
    invoice_number,
    item_number,
    manufacturing_due_date,
    shipment_detail_date
from dev_blindseth.tmp_shipments_collapsed