-- https://school.programmers.co.kr/learn/courses/30/lessons/276013
select id,email,first_name,last_name
from developer_infos
where skill_1 like '%Python%' or skill_2 like '%Python%' or skill_3 like '%Python%'
order by id asc
