-- bookmall

SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

-- JOIN(��������-EQUI JOIN) - ������ �κ�(������, AND)
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

-- '������' ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
AND cus.name = '������';

-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�(SUM()�Լ�)
SELECT cus.name, SUM(saleprice) �Ѿ�
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

-- '�Ȼ�' ���� �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�(SUM()�Լ�, HAVING ����)
SELECT cus.name, SUM(saleprice) �Ѿ�
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
HAVING cus.name = '�Ȼ�';

-- ǥ�� SQL - INNER JOIN ON~
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name;
    
-- '������' ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
WHERE cus.name = '������';
    
