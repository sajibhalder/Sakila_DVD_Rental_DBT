
      delete
    from "sakila_wh"."dwh"."dim_customer"
    where (customer_id) in (
        select (customer_id)
        from "dim_customer__dbt_tmp093931298581"
    );

    insert into "sakila_wh"."dwh"."dim_customer" ("customer_id", "store_id", "first_name", "last_name", "full_name", "domain", "email", "active", "active_desc", "address_id", "address", "city_id", "city", "country_id", "country", "create_date", "last_update", "dbt_time")
    (
       select "customer_id", "store_id", "first_name", "last_name", "full_name", "domain", "email", "active", "active_desc", "address_id", "address", "city_id", "city", "country_id", "country", "create_date", "last_update", "dbt_time"
       from "dim_customer__dbt_tmp093931298581"
    );
  