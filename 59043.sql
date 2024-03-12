-- https://school.programmers.co.kr/learn/courses/30/lessons/59043
select ai.animal_id as animal_id, ai.name as name
from animal_ins as ai inner join animal_outs as ao on ai.animal_id = ao.animal_id
where ai.datetime > ao.datetime
order by ai.datetime asc
