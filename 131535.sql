-- https://school.programmers.co.kr/learn/courses/30/lessons/131535
select count(*)
from USER_INFO
where age between 20 and 29
and joined like '2021%'
