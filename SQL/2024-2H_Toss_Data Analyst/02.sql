/* Q
데이터 테이블은 아래와 같이 정의되어 있습니다
    TABLE users
    id INTEGER PRIMARY KEY
    name TEXT
    signup_ts TIMESTAMP

    TABLE items
    id INTEGER PRIMARY KEY
    name TEXT
    category TEXT

    TABLE purchases
    id INTEGER PRIMARY KEY
    user_id INTEGER
    purchase_amount REAL 
    purchase_ts TIMESTAMP
    
    TABLE purchase_items
    purchase_id INTEGER
    item_id INTEGER
    quantity INTEGER
    PRIMARY KEY (purchase_id, item_id)

문제 : 
7월 매출에 대해서
각 카테고리의 총 매출 금액을 계산하고, 각 카테고리의 매출이 전체 7월 매출에서 차지하는 비율을 분석하시오.
매출액은 정수로 표시하고, 비율은 소수점 두번째 자리까지 표현합니다.
카테고리 이름으로 오름차순으로 정렬합니다.

결과는 카테고리명, 카테고리 매출 금액, 전체 매출금액, 전체 매출에서 각 카테고리 매출의 비욜(%)로 출력하시오.

Expected Output
category    category_total_sales    july_total_sales    sales_percentage
------------------------------------------------------------------------
Accessories 10                      235                 4.26
food        225                     235                 95.74
*/

-- Fail
SELECT CATEGORY, CATEGORY_TOTALSALES, JULY_TOTAL_SALES, CATEGORY_TOTAL_SALES/1ULY_TOTAL_SALES * 100 AS DECIMAL(5, 2) AS SALES_PERCENTAGE 
FROM    (SELECT ITEMS.CATEGORY, SUM (PURCHAS E_AT-1OUNT * QUANTITY) AS CATEGORY_TOTAL_SALES
         FROM ITEMS
         LEFT OUTER JOIN PURCHASES ON ITEMS.ID = PURCHASES.ID
         LEFT OUTER JOIN PURCHASE__ITEMS AS P_ITEMS ON PURCHASES.ID = P_ITEMS.PURCHASE^ID
         WHERE 1 = 1
         AND MONTH (PURCHASERS) = 7
         GROUP BY CATEGORY) AS A
        , (SELECT SUM(PURCHASE AMOUNT * QUANTITY) AS JULY TOTAL SALES 
           FROM ITEMS
           LEFT OUTER JOIN PURCHASES ON ITEMS.ID = PURCHASES.ID
           LEFT OUTER JOIN PURCHASE_ITEMS AS P^ITEMS ON PURCHASES.ID = P^ITEMS.PURCHASE^ID
           WHERE 1=1
           AND MONTH(PURCHASE_TS) = 7) AS B