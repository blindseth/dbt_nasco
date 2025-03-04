select 
    item_number,
    item_revision,
    effective_date_from as effective_date_from_raw,
     try_to_date(case when left(effective_date_from,1) = 1
            then '20' || substr(effective_date_from,2,2) 
                || '-' || substr(effective_date_from,4,2) 
                || '-' || substr(effective_date_from,6,2)
        when left(effective_date_from,1) = 9
            then '19' || substr(effective_date_from,2,2) 
                || '-' || substr(effective_date_from,4,2) 
                || '-' ||  substr(effective_date_from,6,2) 
        end) as effective_date_from,    
    try_to_date(case when left(effective_date_to,1) = 1
            then '20' || substr(effective_date_to,2,2) 
                || '-' || substr(effective_date_to,4,2) 
                || '-' || substr(effective_date_to,6,2)
        when left(effective_date_to,1) = 9
            then '19' || substr(effective_date_to,2,2) 
                || '-' || substr(effective_date_to,4,2) 
                || '-' ||  substr(effective_date_to,6,2) 
        end) as effective_date_to,  
    item_description,
    unit_cost_default,
    unit_of_measure,
    unit_weight,
    base_price,
    height,
    length,
    width    
from dev_blindseth.landing_item_master 