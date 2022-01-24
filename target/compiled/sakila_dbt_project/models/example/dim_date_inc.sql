


SELECT
*
from "sakila_wh"."dwh"."dim_date"
where 1=1



and date_key::timestamp > (select max(date_key) - INTERVAL '3 DAY' from "sakila_wh"."examples"."dim_date_inc")
