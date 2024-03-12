-- https://school.programmers.co.kr/learn/courses/30/lessons/284529
with sals as (select dept_id, round(sum(sal) / count(*)) as avg_sal
from hr_employees
group by dept_id)

select hd.dept_id, hd.dept_name_en, sa.avg_sal
from hr_department as hd inner join sals as sa on hd.dept_id = sa.dept_id
order by sa.avg_sal desc
