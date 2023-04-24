-- 대한민국에 거주하는 고객의 이름과 /도서를 주문한 고객의 이름 검색
-- JOIN을 쓰지않고 union은 사용
SELECT * FROM customer;

--대한민국에 거주하는 고객의 이름
select *
from customer
WHERE address LIKE '%대한민국%';

--도서를 주문한 고객의 이름 검색
SELECT name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

--w집합연산 ( 더하기) - 중복불가
SELECT name
FROM customer
WHERE address LIKE '%대한민국%'
UNION
SELECT name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

--UNION ALL (중복 허용)
SELECT name
FROM customer
WHERE address LIKE '%대한민국%'
UNION ALL
SELECT name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
