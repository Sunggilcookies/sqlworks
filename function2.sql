-- function
-- NULL �� ó���ϱ�

CREATE TABLE K1(
    ID VARCHAR2 (3),
    CNT NUMBER(2)

);

INSERT INTO K1 VALUES('��', 5);
INSERT INTO K1 VALUES('��', NULL);
INSERT INTO K1 VALUES('��', 5);
INSERT INTO K1 VALUES('��', NULL);
INSERT INTO K1 VALUES('��', 10);


SELECT *
FROM customer
WHERE phone IS NULL;

SELECT *
FROM customer
WHERE phone IS NULL;

--�ΰ��� ó���ؼ� �����
SELECT custid, name, address, NVL(phone, '010-1234-5678')
FROM customer;

SELECT * FROM K1;
COMMIT;

--��ü ����, �ղ� , ��� ,�ּҰ�
SELECT COUNT(NVL(CNT,0)) CNT 
FROM K1;

--��ü ����, �ղ� , ��� ,�ּҰ�
SELECT SUM(NVL(CNT,0)) SUM 
FROM K1;

--��ü ����, �ղ� , ��� ,�ּҰ�
SELECT AVG(NVL(CNT,0)) AVG
FROM K1;

--NULL���� 0���� �ٲ�
--��ü ����, �ղ� , ��� ,�ּҰ�
SELECT MIN(NVL(CNT,5)) AVG 
FROM K1;

COMMIT;
    
    
--RANK() �Լ�
SELECT ename, sal, RANK() OVER(ORDER BY sal DESC) �޿�_RANK,
DENSE_RANK() OVER(ORDER BY sal DESC) �޿�_DENSE
FROM employee;
    
    