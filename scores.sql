# Write your MySQL query statement below

with d as (
    select distinct scores.student_id
        , scores.subject
        , first_value(scores.score) over(partition by scores.student_id, scores.subject order by exam_date) first_score
        , first_value(scores.score) over(partition by scores.student_id, scores.subject order by scores.exam_date desc) latest_score

    from scores
    inner join (
        select student_id, subject, count(*) 
        from scores group by student_id, subject 
        having count(*) >= 2
    ) c on c.student_id = scores.student_id and c.subject = scores.subject
)

select * from d where d.latest_score > d.first_score;
