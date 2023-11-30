-- https://school.programmers.co.kr/learn/courses/30/lessons/131530
SELECT floor(price/10000) * 10000 as PRICE_GROUP, count(floor(price/10000)) as PRODUCTS
from product 
group by floor(price/10000)
order by floor(price/10000) asc
