-- https://school.programmers.co.kr/learn/courses/30/lessons/131528
select count(*) as users
from user_info
where age is null
