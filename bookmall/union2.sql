-- ���ѹα��� �����ϴ� ���� �̸��� /������ �ֹ��� ���� �̸� �˻�
-- JOIN�� �����ʰ� union�� ���
SELECT * FROM customer;

--���ѹα��� �����ϴ� ���� �̸�
select *
from customer
WHERE address LIKE '%���ѹα�%';

--������ �ֹ��� ���� �̸� �˻�
SELECT name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

--w���տ��� ( ���ϱ�) - �ߺ��Ұ�
SELECT name
FROM customer
WHERE address LIKE '%���ѹα�%'
UNION
SELECT name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

--UNION ALL (�ߺ� ���)
SELECT name
FROM customer
WHERE address LIKE '%���ѹα�%'
UNION ALL
SELECT name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
