-- https://school.programmers.co.kr/learn/courses/30/lessons/59412
select date_format(datetime, '%H') as hour, count(*) as count
from animal_outs
where date_format(datetime, '%HH') between 9 and 19
group by hour
order by hour asc
