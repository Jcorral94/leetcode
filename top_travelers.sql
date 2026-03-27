/* Write your PL/SQL query statement below */
select
u.name
, nvl(sum(r.distance),0) travelled_distance
from users u
left join rides r on r.user_id = u.id
group by u.name
order by 2 desc, 1 asc
; 
