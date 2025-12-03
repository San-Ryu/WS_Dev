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
각 유저가 구매한 아이템의 총 수량을 분석하고, 가장 많이 구매한 아이템 3개를 유저별로 확인하십시오
결과는 유저 ID, 유저 이름, 아이템 이름, 총 구매 수량을 포함해야하며, 구매 수량은 정수로 표시하십시오.
user_name 오름차순 & 총 구매수량 내림차순으로 정렬하십시오.

Expected Output
user_id user_name   item_name   total_quantity
------------------------------------------------------------------------
1       Alice       Burger      2
1       Alice       Pizza       1
2       Bob         Pizza       1
3       Charlie     Salad       1
.
.
.

*/

-- 