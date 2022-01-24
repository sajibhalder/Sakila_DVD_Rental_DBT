

select
*,
'2022-01-24 04:09:26' as dbt_time
from
"sakila_wh"."stg"."payment"
where 1=1


and payment_date::timestamp > (select max(payment_date) from "sakila_wh"."dwh"."fact_payment")
