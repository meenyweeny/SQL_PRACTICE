-- https://school.programmers.co.kr/learn/courses/30/lessons/59042
select ANIMAL_ID, NAME
from (select ao.animal_id, ao.name, ai.datetime as indate, ao.datetime as outdate
      from animal_ins as ai right join animal_outs as ao on ai.animal_id = ao.animal_id) as ar
      where INDATE is null
