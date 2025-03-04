select
    DDCVNB as quote_order_number,
    DDK4NB as shipment_header_number,
    DDLCNB as ship_release_sequence,
    DDARQT as shipped_quantity,
    DDAITX as item_number,
    DDACQT as order_qty_in_order_um,
    DDAAF5 as stock_unit_cost,
    DDAKDT as manufacturing_due_date,
    DDAAGP as selling_price,
    DDANVA as base_price,
    DDALDT as create_date
from examples.nasco.mbddrep