

select
*,
'2022-01-24 04:09:26' as dbt_time
from
stg.payment
where 1=1


and payment_date::timestamp > (select max(payment_date) from "sakila_wh"."examples"."payment_inc")



-- - INTERVAL '3 DAY'
-- unique_key='payment_id'