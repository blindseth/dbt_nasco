select
    CUSNO as customer_number,
    CUSNM as customer_name,
    TERRN as territory_id,
    SLSNO as salesrep_number,
    BILNO as bill_to_customer_number,
    CONCS as parent_customer_number,
    LANCD as language_code
from examples.nasco.mbbfrep
