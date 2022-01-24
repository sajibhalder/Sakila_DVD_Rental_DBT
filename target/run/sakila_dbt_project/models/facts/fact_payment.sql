
      delete
    from "sakila_wh"."dwh"."fact_payment"
    where (payment_id) in (
        select (payment_id)
        from "fact_payment__dbt_tmp093933843239"
    );

    insert into "sakila_wh"."dwh"."fact_payment" ("payment_id", "customer_id", "staff_id", "rental_id", "amount", "payment_date", "dbt_time")
    (
       select "payment_id", "customer_id", "staff_id", "rental_id", "amount", "payment_date", "dbt_time"
       from "fact_payment__dbt_tmp093933843239"
    );
  