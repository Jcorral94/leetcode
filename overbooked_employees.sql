# Write your MySQL query statement below
select 
employee_id
, employee_name
, department
, count(distinct week) meeting_heavy_weeks
from (
select 
e.employee_id
, e.employee_name
, e.department
, yearweek(m.meeting_date, 1) week
, sum(duration_hours)
from meetings m
inner join employees e on e.employee_id = m.employee_id
group by e.employee_id
, e.employee_name
, e.department
, yearweek(m.meeting_date,1)
having sum(duration_hours) >= 20
)a
group by
employee_id
, employee_name
, department
having count(distinct week) >= 2
order by count(distinct week) desc, employee_name
