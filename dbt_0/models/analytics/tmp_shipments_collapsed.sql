    select
        header.quote_order_number,
        header.shipment_header_number,
        detail.ship_release_sequence,
        detail.item_number,

        header.shipment_weight,
        header.shipment_status,
        header.shipment_date_new_try as shipment_date,
        header.customer_number,
        header.ship_to_country_name,
        header.invoice_number,

        detail.shipped_quantity,
        detail.order_qty_in_order_um,
        detail.stock_unit_cost,
        detail.manufacturing_due_date,
        detail.selling_price,
        detail.base_price,
        detail.create_date as shipment_detail_date
    from dev_blindseth.stg_shipment_header as header   
    left join dev_blindseth.stg_shipment_detail as detail
        on header.quote_order_number = detail.quote_order_number
        and header.shipment_header_number = detail.shipment_header_number