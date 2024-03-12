-- https://school.programmers.co.kr/learn/courses/30/lessons/273710
select info.item_id, info.item_name
from item_info as info left join item_tree as tre on info.item_id = tre.item_id
where tre.parent_item_id is null
order by info.item_id asc
