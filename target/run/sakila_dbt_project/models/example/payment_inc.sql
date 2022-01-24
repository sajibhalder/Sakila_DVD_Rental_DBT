
      delete
    from "sakila_wh"."examples"."payment_inc"
    where (payment_id) in (
        select (payment_id)
        from "payment_inc__dbt_tmp093937181846"
    );

    insert into "sakila_wh"."examples"."payment_inc" ("payment_id", "customer_id", "staff_id", "rental_id", "amount", "payment_date", "dbt_time")
    (
       select "payment_id", "customer_id", "staff_id", "rental_id", "amount", "payment_date", "dbt_time"
       from "payment_inc__dbt_tmp093937181846"
    );
  