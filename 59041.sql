-- https://school.programmers.co.kr/learn/courses/30/lessons/59041
select name, count
from (select name, count(name) as count
from animal_ins
group by name) as na
where name is not null and count >= 2
order by name
