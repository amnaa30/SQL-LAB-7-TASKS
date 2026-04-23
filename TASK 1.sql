Task 1:
(a) Display employee first name and department name using INNER JOIN.
(b) Display all possible combinations of employees and jobs using CROSS JOIN.
(c) Display employee name and manager name using SELF JOIN.
(d) Display all employees and their department names including those without departments using LEFT OUTER JOIN.

--a
select e.first_name,d.department_name 
from employees e
inner join departments d on d.department_id=e.department_id;

--b
select * 
from employees e
cross join jobs j;

--c
select e.first_name,m.manager_name 
from employees e
self join managers on m.manager_id=e.manager_id;

--d
select e.first_name, d.department_name 
from employees e
left outer join departments d on d.department_id=e.department_id;
