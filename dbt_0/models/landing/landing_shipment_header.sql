select 
    DHCVNB as quote_order_number,
    DHK4NB as shipment_header_number,
    DHABD1 as shipment_weight,
    DHINST as shipment_status,
    DHIVNB as shipment_date,
    DHCANB as customer_number,
    DHAAGW as ship_to_country_name,
    DHGGNB as invoice_number
from examples.nasco.mbdhrep