-- https://school.programmers.co.kr/learn/courses/30/lessons/131114
SELECT warehouse_id, warehouse_name, address, ifnull(freezer_yn,'N') as freezer_yn
from food_warehouse
where address like '%경기%'
