/* Write your PL/SQL query statement below */
select coalesce(employees.employee_id,salaries.employee_id) employee_id from employees
full outer join salaries on salaries.employee_id = employees.employee_id
where employees.name is null or salary is null
order by 1;
