/* Write your PL/SQL query statement below */
select
distinct u.name
, nvl(sum(r.distance) over(partition by u.id order by 1),0) travelled_distance
from users u
left join rides r on r.user_id = u.id
order by 2 desc, 1 asc
; 
