-- https://school.programmers.co.kr/learn/courses/30/lessons/131117
select fp.product_id as product_id, fp.product_name as product_name, (fp.price*fo.total) as total_sales
from food_product as fp
    cross join
    (select product_id, sum(amount) as total from food_order where date_format(produce_date, '%y-%m') like '22-05' group by product_id) as fo
    on fp.product_id = fo.product_id
order by total_sales desc, product_id asc
