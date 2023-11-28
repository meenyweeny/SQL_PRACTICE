-- https://school.programmers.co.kr/learn/courses/30/lessons/131533
select PRODUCT_CODE, (price*sales_amount) as SALES
from product as p inner join (
    select product_id, sum(sales_amount) as sales_amount
    from offline_sale
    group by product_id) as os on p.product_id = os.product_id
order by SALES desc, PRODUCT_CODE asc
