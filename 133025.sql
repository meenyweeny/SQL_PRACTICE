-- 과일로 만든 아이스크림 고르기
-- https://school.programmers.co.kr/learn/courses/30/lessons/133025

SELECT T.FLAVOR
FROM (FIRST_HALF AS T
      LEFT JOIN ICECREAM_INFO AS I
      ON T.FLAVOR = I.FLAVOR)
WHERE (T.TOTAL_ORDER > 3000)
    AND (I.INGREDIENT_TYPE LIKE 'f%')
ORDER BY T.TOTAL_ORDER DESC;
