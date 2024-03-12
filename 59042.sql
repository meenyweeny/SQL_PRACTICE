-- https://school.programmers.co.kr/learn/courses/30/lessons/59042
select ao.animal_id as animal_id, ao.name as name
from animal_ins as ai right join animal_outs as ao on ai.animal_id = ao.animal_id
where ai.animal_id is null
