-- 조건에 맞는 도서 리스트 출력하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/144853
SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, "20%y-%m-%d") AS PUBLISHED_DATE
FROM BOOK
WHERE CATEGORY LIKE '인문'
AND PUBLISHED_DATE LIKE '2021%'
ORDER BY PUBLISHED_DATE ASC
