
      delete
    from "sakila_wh"."dwh"."dim_film"
    where (film_id) in (
        select (film_id)
        from "dim_film__dbt_tmp093933216129"
    );

    insert into "sakila_wh"."dwh"."dim_film" ("film_id", "title", "description", "release_year", "language_id", "lang_name", "original_language_id", "rental_duration", "rental_rate", "length", "length_desc", "replacement_cost", "rating", "category_id", "category_desc", "special_features", "has_trailers", "has_commentaries", "has_behind_the_scenes", "has_deleted_scenes", "last_update", "dbt_time")
    (
       select "film_id", "title", "description", "release_year", "language_id", "lang_name", "original_language_id", "rental_duration", "rental_rate", "length", "length_desc", "replacement_cost", "rating", "category_id", "category_desc", "special_features", "has_trailers", "has_commentaries", "has_behind_the_scenes", "has_deleted_scenes", "last_update", "dbt_time"
       from "dim_film__dbt_tmp093933216129"
    );
  