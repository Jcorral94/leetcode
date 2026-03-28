with f as (
select
    id,
    visit_date,
    people,
    id - row_number() over(order by id) as grp
from stadium
where people >= 100
),
grp as (
    select grp from f group by grp having count(*)>=3
)
select f.id, to_char(f.visit_date, 'YYYY-MM-DD') visit_date, people from f where exists(select * from grp where f.grp = grp.grp);
