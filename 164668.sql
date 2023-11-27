-- https://school.programmers.co.kr/learn/courses/30/lessons/164668
select USER_ID, NICKNAME, TOTAL_SALES
from (SELECT user_id, nickname, TOTAL_SALES
      from (SELECT ugu.user_id, nickname, sum(price) as TOTAL_SALES
            from used_goods_user as ugu inner join used_goods_board as ugb on ugb.writer_id = ugu.user_id
            where status like 'D%'
            group by ugu.user_id) as ug
      group by user_id) as u
      where TOTAL_SALES >= 700000
      order by TOTAL_SALES asc
