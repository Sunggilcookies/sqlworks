SELECT bookname FROM book
WHERE price = (SElect MAX(price) FROM book);


--�ζ��� �� : FROM �μ�����
--����ȣ�� 2������ ���� �Ǹž��� �˻��Ͻÿ�.
SELECT cus.name, SUM(ord.saleprice)
--����ȣ�� 2������ �� ���̵�� �̸�
FROM (SELECT custid, name FROM customer WHERE custid <=2) cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

--��(View) ����
-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����� ��ȸ�Ͻÿ�
--CREATE VIEW ���̸�
-- AS SELECT ��

CREATE VIEW vw_Customer
AS SELECT * FROM customer 
WHERE address LIKE '%���ѹα�%';

SELECT *
FROM  vw_Customer;

--���� �̸��� �ֹ��� ������ �̸��� ������ �˻��Ͻÿ�
CREATE VIEW vw_ORDERS
AS SELECT cus.name, bo.bookname, bo.price 
FROM customer cus, orders ord, book bo
WHERE cus.custid = ord.custid
AND bo.bookid = ord.bookid;

--��� �˻�
SELECT * FROM vw_Orders;

--���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT cus.*, ord.* 
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER by cus.name;


--STANDART JOIN (FROM ���� INNER JOIN ~ ON )

 
 --OUTER JOIN : �ܺ�����
 --JOIN ���ǿ� �����ϴ� �����Ͱ� �ƴϾ ��µ� �� �ִ� ���
 --LEFT OUTER JOIN, RIGHT OUTER JOIN;
 --���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ� ( �ֹ��� ���� ���� �����Ͽ�)
SELECT cus.name, ord.saleprice
FROM customer cus LEFT outer JOIN orders ord
 ON cus. custid = ord.custid
 ORDER BY cus.name;
 
 
