-- https://school.programmers.co.kr/learn/courses/30/lessons/59040
SELECT ANIMAL_TYPE, count(*) as count
from animal_ins
where animal_type like 'Cat' or animal_type like 'Dog'
group by animal_type
order by animal_type asc
