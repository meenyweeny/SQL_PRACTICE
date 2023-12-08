-- https://school.programmers.co.kr/learn/courses/30/lessons/133026
SELECT ingredient_type, sum(total_order) as total_order
from first_half natural join icecream_info
group by ingredient_type
order by total_order asc
