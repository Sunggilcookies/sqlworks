--bookmall 관련 테이블
SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

--고객이 주문한 도서의 총 판매액 구하기
SELECT  custid,
    bookid,
    SUM(saleprice) 총판매액
FROM orders
GROUP BY custid, bookid;

--고객별 총 판매액 계산 ,소계, 총계 구하기
--ROLLUP (), CUBE()
SELECT custid,bookid,
    SUM(saleprice) 총판매액
FROM orders
GROUP BY Rollup (custid,bookid);
