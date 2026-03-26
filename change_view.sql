/* Write your PL/SQL query statement below */
select
    id
    , sum(case when department.month = 'Jan' then department.revenue end) Jan_Revenue
    , sum(case when department.month = 'Feb' then department.revenue  end) Feb_Revenue
    , sum(case when department.month = 'Mar' then department.revenue  end) Mar_Revenue
    , sum(case when department.month = 'Apr' then department.revenue  end) Apr_Revenue
    , sum(case when department.month = 'May' then department.revenue  end) May_Revenue
    , sum(case when department.month = 'Jun' then department.revenue  end) Jun_Revenue
    , sum(case when department.month = 'Jul' then department.revenue  end) Jul_Revenue
    , sum(case when department.month = 'Aug' then department.revenue  end) Aug_Revenue
    , sum(case when department.month = 'Sep' then department.revenue  end) Sep_Revenue
    , sum(case when department.month = 'Oct' then department.revenue  end) Oct_Revenue
    , sum(case when department.month = 'Nov' then department.revenue  end) Nov_Revenue
    , sum(case when department.month = 'Dec' then department.revenue  end) Dec_Revenue
from department
group by id;
