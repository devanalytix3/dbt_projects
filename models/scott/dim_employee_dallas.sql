{{
    config(
        materialized='view'
    )
}}

SELECT e.employee_id AS empid,
       e.employee_name AS ename,
       e.designation AS job,
       e.salary AS sal,
       d.department_name AS dname,
       d.location AS loc 
FROM {{ ref('employee_tb') }} e JOIN {{ ref('department_tb') }} d
ON e.department_id=d.department_id
WHERE e.salary>=1500 AND d.location='DALLAS'