-- https://school.programmers.co.kr/learn/courses/30/lessons/157343
SELECT *
from car_rental_company_car
where options like '%네비게이션%'
order by car_id desc
