/*
This model creates an order view
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