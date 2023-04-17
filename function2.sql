-- function
-- NULL 값 처리하기

CREATE TABLE K1(
    ID VARCHAR2 (3),
    CNT NUMBER(2)

);

INSERT INTO K1 VALUES('가', 5);
INSERT INTO K1 VALUES('나', NULL);
INSERT INTO K1 VALUES('다', 5);
INSERT INTO K1 VALUES('라', NULL);
INSERT INTO K1 VALUES('마', 10);


SELECT *
FROM customer
WHERE phone IS NULL;

SELECT *
FROM customer
WHERE phone IS NULL;

--널값을 처리해서 출력함
SELECT custid, name, address, NVL(phone, '010-1234-5678')
FROM customer;

SELECT * FROM K1;
COMMIT;

--전체 개수, 합께 , 평균 ,최소값
SELECT COUNT(NVL(CNT,0)) CNT 
FROM K1;

--전체 개수, 합께 , 평균 ,최소값
SELECT SUM(NVL(CNT,0)) SUM 
FROM K1;

--전체 개수, 합께 , 평균 ,최소값
SELECT AVG(NVL(CNT,0)) AVG
FROM K1;

--NULL값을 0으로 바꿈
--전체 개수, 합께 , 평균 ,최소값
SELECT MIN(NVL(CNT,5)) AVG 
FROM K1;

COMMIT;
    
    
--RANK() 함수
SELECT ename, sal, RANK() OVER(ORDER BY sal DESC) 급여_RANK,
DENSE_RANK() OVER(ORDER BY sal DESC) 급여_DENSE
FROM employee;
    
    