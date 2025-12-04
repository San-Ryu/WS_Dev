/* Q
데이터 테이블은 아래와 같이 정의되어 있습니다
    TABLE orders
    id INTEGER, PRIMARY KEY
    user_id INTEGER
    order_ts TIMESTAMP

문제 : 
코호트 리텐션을 아래 안내에 따라 계산해주세요
- 유저들은 첫번째 주문일을 기준으로 코호트가 나뉘어집니다.
- 유저의 첫번째 주문 이후의 주문 리텐션을 구해주세요.
- "day_diff"는 cohort_date와 주문일 차이(일수)를 의미합니다.
- 한 유저가 같은 날 여러 건의 주문을 했을 경우 하루에 한 건으로 집계합니다.

힌트 : 
- 코호트 리텐션을 집계할 때 유저벌 일별 고유하게(Unique) 집계하여 주세요.
- DATEDIFF Function : 두 일자의 차이를 계산합니다.
    ex) SELECT DATEDIFF("2014-01-28", "2014-01-27"); -> Result : 1
- DATE_FORMAT(timestamp1, "%Y-%m-%d")는 TIMESTAMP 형식을 지정된 날짜형식(YYYY-mm-dd)으로 변경해줍니다. 반드시 이 형식을 사용해주세요.

Expected Output
cohort_date day_diff    user_cnt
2021-01-01  0           3
2021-01-01  1           1
2021-01-01  2           1
2021-01-02  0           2
2021-01-02  1           1
2021-01-03  0           3
2021-01-03  1           1
2021-01-03  2           2
*/

-- Pass
WITH FIRST_ORD AS (
    SELECT USER_ID, MIN(ORDER_TS) AS DT_FIRST_ORD
    FROM ORDERS AS ORD
    GROUP BY USER_ID
)
, COHORT_ORD AS (
    SELECT  ORD.USER_ID
            , DATE_FORMAT(F_ORD.DT_FIRST_ORD, '%Y-%m-%d') AS COHORT_DATE 
            , DATE_FORMAT(ORD.ORDER_TS, '%Y-%m-%d') AS ORDER_DATE
            , DATEDIFF(ORD.ORDER_TS, F_ORD.DT_FIRST_ORD) AS DAY_DIFF
    FROM ORDERS AS ORD
    LEFT OUTER JOIN FIRST_ORD AS F_ORD ON ORD.USER_ID = F_ORD.USER_ID
)
SELECT COHORT_DATE, DAY_DIFF, COUNT(DISTINCT USER_ID) AS USER_CNT
FROM COHORT_ORD
GROUP BY COHORT_DATE, DAY_DIFF
ORDER BY COHORT_DATE, DAY_DIFF

/* Result
Run OK
All test cases pass, great!

cohort_date day_diff    user_cnt
2021-01-01  0           3
2021-01-01  1           1
2021-01-01  2           1
2021-01-02  0           2
.
.
.
-------------------------------------------------

Cohort purchase retention : Correct Answer

*/