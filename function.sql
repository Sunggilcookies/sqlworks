-- 문자 타입 함수
SELECT LOWER('ABCD') RESULT FROM DUAL;

-- SUBSTR (문자, 인덱스, 글자수)
SELECT SUBSTr('ABC',1,2) RESULT FROM DUAL;

-- REPLACE(문자, 이전문자, 새로운문자)
SELECT REPLACE('ABC', 'A', 'E') RESULT FROM DUAL;
--CONCAT(문자1, 문자2) -문자연결
SELECT CONCAT('A', 'B') RESULT FROM DUAL;
-- 연결 연산자 - '||'
SELECT '안녕' || '하세요' RESULT FROM DUAL;
--LPAD(문자, 문자수, 기호) -기호를 왼쪽부터채움
SELECT LPAD('cloud',10, '*') RESULT FROM DUAL;
SELECT RPAD('cloud',10, '*') RESULT FROM DUAL;

--고객이름에서 같은 성을 가진 사람의 인원수를 구하시오
SELECT  SUBSTR(name,1,1) 성,
        count(*)
FROM customer
GROUP BY SUBSTR(name,1,1);




--부서이름에서 처음부터 시작해서 2개의 문자 출력
SELECT SUBSTR(deptname, 2, 3) 부서명
FROM DEPT;

--도서 제목에 '야구'가 포함된 도서를 '농구'로 변경하여 검색
SELECT bookid , REPLACE(bookname, '야구', '농구') RESULT FROM book;

--굿스포츠에서 출판한 도서의 제목과 제목의 문자 수, 바이트 수를 검색
SELECT bookname,
    LENGTH(bookname)문자수,
    LENGTHB(bookname)바이트수
FROM book
WHERE publisher = '굿스포츠';
    
--날짜함수
-- 20일전의 날짜 출력
SELECT SYSDATE-20  FROM DUAL;

-- 3개월 후의 날짜 출력
SELECT ADD_MONTHS ('2023/04/01', -3) 결과
FROM DUAL;
--날짜와 시간
SELECT SYSTIMESTAMP FROM DUAL;
-- 주문번호가 6에서 10사이인 도서의 주문일에 3개월을 더한값을 구하시오.
-- 1.주문번호가 6~10인 도서 검색
SELECT orderid 주문번호,
    ADD_MONTHS(orderdate, 3)
   
FROM orders
WHERE orderid >= 6 AND orderid <= 10;

--주문번호가 10인 도서의 주문일로부터 오늘까지의 총 개월수를 구하시오
--MONTHS_BETWEEN(이후날짜, 이전날짜)
SELECT orderid 주문번호,
        ROUND(MONTHS_BETWEEN(SYSDATE, orderdate),0) 총개월수
FROM orders
WHERE orderid = 10;

--서점은 주문일로부터 10일후 매출을 확정한다. 각주문의 확정일자를 구하시오.
SELECT orderid 주문번호,
        orderdate +3 확정날짜
FROM orders
WHERE orderid = 10;

-- 자동 타입 변환
SELECT 1+ '2' FROM DUAL;

-- 수동 타입 변환
-- 문자를 숫자 형식으로 변호나
SELECT TO_NUMBER('120') FROM DUAL;

-- 날짜 형식
SELECT TO_DATE('2022-06-30' ,'00000000') FROM DUAL;

SELECT TO_DATE(SYSDATE,'YYYY-MM-DD')날짜 FROM DUAL;

SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD')날짜 ,
         TO_CHAR(SYSDATE,'YYYY')연도,
         TO_CHAR(SYSDATE,'MM')월,
         TO_CHAR(SYSDATE,'DD')일
FROM DUAL;

--시간 형식 변환
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS AM') 시간형식,
    TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS AM') 날짜와시간
FROM DUAL;

--4월 1일에서 10일후(특정한 날: 문자형->날짜형)
SELECT TO_DATE('2023-04-01' )+ 20 FROM DUAL;
--날짜와 시간 입사일 :2022 1 1 티사일: 2023 1 31 (월수계산)
SELECT 
ROUND(MONTHS_BETWEEN(TO_DATE('2023-1-31') ,TO_DATE('2022-1-1')) ,0) 총개월수
FROM DUAL;


