-- https://school.programmers.co.kr/learn/courses/30/lessons/59410
select animal_type, ifnull(name,'No name') as name, sex_upon_intake
from animal_ins
order by animal_id asc
