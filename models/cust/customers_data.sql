{{
    config(
        materialized='table', database='CUST_DB', schema='CUST'
    )
}}

SELECT customer_id AS Cust_Id,
       CONCAT(first_name,' ',last_name) AS Full_Name
FROM CORE_DB.RAW.CUSTOMERS
WHERE is_active=TRUE