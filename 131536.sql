-- https://school.programmers.co.kr/learn/courses/30/lessons/131536
select a.user_id, a.product_id
from online_sale as a inner join (
    select user_id, product_id, count(*) as purchase_count
    from online_sale
    group by user_id, product_id
    having purchase_count > 1
) as b
where a.user_id = b.user_id and a.product_id = b.product_id
group by a.user_id, a.product_id
order by a.user_id asc, b.product_id desc;
