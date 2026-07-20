SELECT deptno AS department_id,
       dname AS department_name,
       loc AS location
FROM {{ source('SCOTT_RAW', 'DEPT') }}