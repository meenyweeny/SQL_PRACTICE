-- https://school.programmers.co.kr/learn/courses/30/lessons/144854
SELECT BOOK_ID, AUTHOR_NAME, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d')
from book as b inner join author as a on b.author_id = a.author_id
where category like '경제'
order by published_date asc
