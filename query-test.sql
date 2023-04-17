SELECT bookname FROM book
WHERE price = (SElect MAX(price) FROM book);


--인라인 뷰 : FROM 부속질의
--고객번호가 2이하인 고객의 판매액을 검색하시오.
SELECT cus.name, SUM(ord.saleprice)
--고객번호가 2이하인 고객 아이디와 이름
FROM (SELECT custid, name FROM customer WHERE custid <=2) cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

--뷰(View) 생성
-- 주소에 '대한민국'을 포함하는 고객들로 구성된 뷰를 만들고 조회하시오
--CREATE VIEW 뷰이름
-- AS SELECT 문

CREATE VIEW vw_Customer
AS SELECT * FROM customer 
WHERE address LIKE '%대한민국%';

SELECT *
FROM  vw_Customer;

--고객의 이름과 주문한 도서의 이름과 가격을 검색하시오
CREATE VIEW vw_ORDERS
AS SELECT cus.name, bo.bookname, bo.price 
FROM customer cus, orders ord, book bo
WHERE cus.custid = ord.custid
AND bo.bookid = ord.bookid;

--뷰로 검색
SELECT * FROM vw_Orders;

--고객과 고객의 주문에 관한 데이터를 모두 검색하시오
SELECT cus.*, ord.* 
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER by cus.name;


--STANDART JOIN (FROM 절에 INNER JOIN ~ ON )

 
 --OUTER JOIN : 외부조인
 --JOIN 조건에 충족하는 데이터가 아니어도 출력될 수 있는 방식
 --LEFT OUTER JOIN, RIGHT OUTER JOIN;
 --고객과 고객의 주문에 관한 데이터를 모두 검색하시오 ( 주문이 없는 고객을 포함하여)
SELECT cus.name, ord.saleprice
FROM customer cus LEFT outer JOIN orders ord
 ON cus. custid = ord.custid
 ORDER BY cus.name;
 
 
