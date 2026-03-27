/* Write your PL/SQL query statement below */
select
user_id
, round(avg(case when activity_type = 'free_trial' then activity_duration end),2) trial_avg_duration
, round(avg(case when activity_type = 'paid' then activity_duration end),2) paid_avg_duration  
from useractivity
where exists (select 1 from useractivity x where x.user_id = useractivity.user_id and x.activity_type = 'paid')
group by user_id
order by user_id;
