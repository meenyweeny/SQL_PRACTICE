-- https://school.programmers.co.kr/learn/courses/30/lessons/131123
select ri.food_type, rest_id, rest_name, ri.favorites
from rest_info as ri inner join (select food_type, max(favorites) as favorites
from rest_info
group by food_type
order by food_type desc) as rj on ri.food_type = rj.food_type and ri.favorites = rj.favorites
order by food_type desc
