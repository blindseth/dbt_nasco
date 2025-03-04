select
    quote_order_number,
    shipment_header_number,
    ship_release_sequence,
    customer_number,
    item_number,
    
    shipment_weight,
    shipped_quantity,
    order_qty_in_order_um,
    stock_unit_cost,
    selling_price,
    base_price
from dev_blindseth.tmp_shipments_collapsed 