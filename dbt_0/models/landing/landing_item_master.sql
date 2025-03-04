select 
    ITNBR as item_number,
    ITRV as item_revision,
    EDAT as effective_date_from,
    EATO as effective_date_to,
    ITDSC as item_description,
    UCDEF as unit_cost_default,
    UNMSR as unit_of_measure,
    WEGHT as unit_weight,
    BZANVA as base_price,
    HITE as height,
    LONG as length,
    WIDE as width
from examples.nasco.itmrva

