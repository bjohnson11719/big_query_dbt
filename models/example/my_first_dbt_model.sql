
/*
Updated this to make an order view
*/

{{ config(materialized='view') }}

with source_data as (

	select
		id as order_id,
		user_id as customer_id,
		order_date,
		status

	from `dbt-tutorial.jaffle_shop.orders`

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

 where id is not null