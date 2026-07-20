{{
    config(
        materialized='table',
        database='RAW_DB',
        schema='DEV',
        alias='EMPLOYEE_TAB',
        query_tag='DBT_EMP_QUERY'
    )
}}


SELECT * FROM {{ source('SCOTT_RAW', 'EMP') }}