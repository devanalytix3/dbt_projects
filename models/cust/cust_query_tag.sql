{{
    config(
        materialized='view',
        database='CUST_DB',
        schema='CUST',
        alias='customer_query_tag',
        query_tag='dbt_query'
    )
}}

SELECT customer_id AS cust_id,
       CONCAT(first_name,' ',last_name) AS full_name
FROM {{ source('RAW_SRC', 'CUSTOMERS') }}
WHERE is_active=true