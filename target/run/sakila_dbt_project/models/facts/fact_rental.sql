
      delete
    from "sakila_wh"."dwh"."fact_rental"
    where (rental_id) in (
        select (rental_id)
        from "fact_rental__dbt_tmp093938327723"
    );

    insert into "sakila_wh"."dwh"."fact_rental" ("rental_id", "rental_date", "date_key", "inventory_id", "customer_id", "film_id", "store_id", "staff_id_rental", "return_date", "rental_hours", "is_return", "last_update", "dbt_time")
    (
       select "rental_id", "rental_date", "date_key", "inventory_id", "customer_id", "film_id", "store_id", "staff_id_rental", "return_date", "rental_hours", "is_return", "last_update", "dbt_time"
       from "fact_rental__dbt_tmp093938327723"
    );
  