 select
    quote_order_number,
    shipment_header_number,
    ship_release_sequence,
    shipped_quantity,
    item_number,
    order_qty_in_order_um,
    stock_unit_cost,
    manufacturing_due_date,
    selling_price,
    base_price,
    try_to_date(case when left(create_date,1) = 1
            then '20' || substr(create_date,2,2) 
                || '-' || substr(create_date,4,2) 
                || '-' || substr(create_date,6,2)
        when left(create_date,1) = 9
            then '19' || substr(create_date,2,2) 
                || '-' || substr(create_date,4,2) 
                || '-' ||  substr(create_date,6,2) 
        end) as create_date
from dev_blindseth.landing_shipment_detail