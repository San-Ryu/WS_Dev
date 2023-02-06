[MSSQL] CREATE, ALTER, DROP Table (테이블 생성, 수정, 삭제)
데이터베이스 DDL에는 Create(생성) / Alter(수정) / Drop(삭제)를 시킬 수 있는 명령어가 있습니다.
(DDL - 테이블의 구조를 생성, 변경, 삭제하는 것)
​
■ CREATE TABLE (테이블 생성)
--테이블 생성하기 (기본)
CREATE [테이블 명](
[필드명] VARCHAR(크기) NOT NULL, --NULL 값이 들어갈 수 없음
[필드명] VARCHAR(크기) NULL DEFAULT(값), --초기값 지정
[필드명] FLOAT,
[필드명] INT, 
[필드명] DATETIME,
[필드명] Mediumtext,
​
CONSTRAINT [PK이름] PRIMARY KEY([컬럼명]) --PK설정
)
​
--테이블 생성 (예제)
CREATE TABLE MY_TABLE(
EMP_NO NVARCHAR(10) NOT NULL, --Null 값이 들어갈 수 없음
NM_KOR NVARCHAR(40) NOT NULL, --Null 값이 들어갈 수 없음
AGE INT NULL DEFAULT(0), --Default : 0
TODAY DATETIME DEFAULT(GETDATE()), --Default : 현재일자
​
CONSTRAINT PK_MY_TABLE PRIMARY KEY(EMP_NO) --PK : EMP_NO 
)
​
​
​
■ ALTER TABLE (테이블 수정)
ALTER TABLE은 한 번 실행하면 되돌릴 수 없다.
그러므로, Transaction 안에서 실행하는 것이 좋다.
​
테이블을 바꾸기 전에 테이블이 어떻게 생겼는지 알 필요가 있다.
테이블 구조를 확인한다.
​
--테이블 컬럼 확인 (구조)
SP_COLUMN [테이블 명]
​
SP_HELP [테이블 명]
​
--테이블 컬럼 확인 (예제)
SP_COLUMNS MY_TABLE
​
SP_HELP MY_TABLE
​
--테이블 구조를 확인했으므로, ALTER TABLE을 사용해보자.
--테이블에 필드 추가하기
ALTER TABLE [테이블명] ADD [필드명] VARCHAR(크기)
ALTER TABLE [테이블명] ADD [필드명] FLOAT
ALTER TABLE [테이블명] ADD [필드명] INT
ALTER TABLE [테이블명] ADD [필드명] DATE
ALTER TABLE [테이블명] ADD [필드명] Mediumtext
​
ALTER TABLE MY_TABLE ADD NM_ENG VARCHAR(30)
​
--테이블 변경 (컬럼 수정) --테이블 및 해당 컬럼에 다른 유형의 데이터가 있을 때, 컬럼 속성을 변경하려하면 어떻게 될까?
ALTER TABLE [테이블명] ALTER [컬럼명] [컬럼 속성]
ALTER TABLE MY_TABLE ALTER COLUMN NM_ENG INT
​
--테이블 변경 (컬럼 삭제) --테이블 및 해당 컬럼에 데이터가 있을 때, 삭제가 가능할까?
ALTER TABLE [테이블명] DROP COLUMN [컬럼명]
ALTER TABLE MY_TABLE DROP COLUMN NM_ENG
​
​
​
■ DROP TABLE (테이블 삭제)
DROP TABLE 또한 위험성이 큰 명령어로,
잘못된 테이블을 삭제하는 것은 업무/작업상 큰 위험성을 초래한다.
반드시 트랜잭션 내에서 쿼리를 실행해야만 한다.
​
DROP TABLE [테이블명]
DROP TABLE MY_TABLE