-- https://school.programmers.co.kr/learn/courses/30/lessons/133027
select half.flavor as flavor
from first_half as half inner join
    (select flavor, sum(total_order) as total_order from july group by flavor) as julyflavor
    on half.flavor = julyflavor.flavor
order by half.total_order+julyflavor.total_order desc
limit 3
