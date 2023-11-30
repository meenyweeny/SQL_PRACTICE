-- https://school.programmers.co.kr/learn/courses/30/lessons/59044
select ai.NAME, ai.DATETIME
from animal_ins as ai left outer join animal_outs as ao on ai.animal_id = ao.animal_id
where ao.datetime is null
order by datetime asc
limit 3
