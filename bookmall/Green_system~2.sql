--bookmall ���� ���̺�
SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

--���� �ֹ��� ������ �� �Ǹž� ���ϱ�
SELECT  custid,
    bookid,
    SUM(saleprice) ���Ǹž�
FROM orders
GROUP BY custid, bookid;

--���� �� �Ǹž� ��� ,�Ұ�, �Ѱ� ���ϱ�
--ROLLUP (), CUBE()
SELECT custid,bookid,
    SUM(saleprice) ���Ǹž�
FROM orders
GROUP BY Rollup (custid,bookid);
