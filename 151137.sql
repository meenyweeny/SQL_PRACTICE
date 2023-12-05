-- https://school.programmers.co.kr/learn/courses/30/lessons/151137
select car_type, count(*) as cars
from car_rental_company_car
where options like '%열선%' or options like '%통풍%' or options like '%가죽%'
group by car_type
order by car_type asc
