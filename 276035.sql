-- https://school.programmers.co.kr/learn/courses/30/lessons/276035
with fnd as (select * from skillcodes where category like '%Front End%')
select distinct(dev.id) as id, dev.email as email, dev.first_name as first_name, dev.last_name as last_name
from developers as dev
    inner join fnd as fn
    on dev.skill_code & fn.code
order by dev.id asc
