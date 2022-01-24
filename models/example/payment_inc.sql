{{config(materialized='incremental',unique_key='payment_id') }}

select
*,
'{{ run_started_at.strftime("%Y-%m-%d %H:%M:%S") }}' as dbt_time
from
stg.payment
where 1=1

{% if is_incremental() %}
and payment_date::timestamp > (select max(payment_date) from {{this}})
{% endif %}


-- - INTERVAL '3 DAY'
-- unique_key='payment_id'
