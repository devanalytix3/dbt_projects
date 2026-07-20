SELECT empno AS employee_id,
       ename AS employee_name,
       job AS designation,
       mgr AS manager_id,
       hiredate AS joining_date,
       sal AS salary,
       comm AS commission,
       deptno AS department_id
FROM {{ source('SCOTT_RAW', 'EMP') }}