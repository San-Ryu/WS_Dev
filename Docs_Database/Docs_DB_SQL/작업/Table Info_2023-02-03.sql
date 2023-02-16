[MSSQL] 테이블 정보 확인

--데이터베이스 테이블 리스트 정보 확인
SELECT *
FROM information_schema.tables
WHERE TABLE_CATALOG = ''

​--테이블 컬럼 정보 확인
SELECT *
FROM information_schema.columns
WHERE TABLE_NAME = ''
​
-- 테이블 제약조건 확인
SELECT *
FROM information_schema.constraint_column_usage
WHERE TABLE_NAME = ''
​
--테이블 인덱스 확인
SELECT *
FROM sys.dm_db_index_physical_stats
​
(DB_ID(N'데이터베이스명'), OBJECT_ID(N'데이터베이스명.테이블명), NULL, NULL, 'DETAILED')