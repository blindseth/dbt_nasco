 select
    quote_order_number,
    shipment_header_number,
    shipment_weight,
    shipment_status,
    shipment_date as shipment_date_raw, 
    try_to_date(case when left(shipment_date,1) = 1
            then '20' || substr(shipment_date,2,2) 
                || '-' || substr(shipment_date,4,2) 
                || '-' || substr(shipment_date,6,2)
        when left(shipment_date,1) = 9
            then '19' || substr(shipment_date,2,2) 
                || '-' || substr(shipment_date,4,2) 
                || '-' ||  substr(shipment_date,6,2) 
        end) as shipment_date_new_try,  
    customer_number,
    ship_to_country_name,
    invoice_number        
from dev_blindseth.landing_shipment_header