-- 내장 함수
SELECT * FROM emp;

-- 105 사원 입력 : 유관순 
INSERT INTO emp VALUES (105, '유관순', 2500000, SYSDATE, 1000);

-- 사원 테이블에서 이름이 '을지문덕'을 검색하시오
SELECT * FROM emp
WHERE ename = '을지문덕';

-- 급여가 300백만원을 초과하는 사원을 검색하시오.
SELECT * FROM emp
WHERE salary > 3000000;

-- 급여가 300백만원 이면서, 부서번호가 1002인 사원을 검색하시오.
SELECT * FROM emp
WHERE salary = 3000000
AND deptno = '1002';

-- 신사임당의 급여를 320만원으로 변경하세요.
-- UPDATE 테이블이름 SET 칼럼변경내역 WHERE 절
UPDATE emp SET salary = 3200000
WHERE empno = 104; -- 기본키로 조건을 준다.

-- 가입일 순으로 내림차순 정렬하시오
SELECT * FROM emp ORDER BY createdate DESC;

-- 사원의 총 인원수를 구하시오(COUNT 함수)
SELECT COUNT(*) 총인원수
FROM emp;

-- 사원 급여의 총합계를 구하시오.(SUM 함수)
SELECT SUM(salary) 총급여
FROM emp;

-- 사원 급여의 평균을 구하시오.(SUM / COUNT)
SELECT SUM(salary) / COUNT(*) 급여평균
FROM emp;

SELECT ROUND(AVG(salary), -1) 급여평균
FROM emp;

-- 부서별 급여 총계를 구하시오
SELECT deptno,
       SUM(salary) 급여합계, 
       ROUND(AVG(salary), -2) 급여평균
FROM emp
GROUP BY deptno;

-- 부서별 소계 및 총계
-- GROUP BY ROLLUP(칼럼) 
SELECT deptno,
       SUM(salary) 급여합계, 
       ROUND(AVG(salary), -2) 급여평균
FROM emp
GROUP BY ROLLUP(deptno);

-- 이름순으로 정렬하시오(오름차순)
SELECT * 
FROM emp
ORDER BY ename ASC;

-- 급여가 많은 순으로 내림차순 정렬하시오
SELECT * 
FROM emp
ORDER BY salary DESC;

-- 급여 많은순으로 순위 정하기
SELECT ename,
       salary,
       RANK() OVER(ORDER BY salary DESC) 급여_RANK,
       DENSE_RANK() OVER(ORDER BY salary DESC) 급여_DENSE_RANK
FROM emp;

-- 숫자 타입 함수
-- 숫자를 반올림한다. : ROUND(숫자, 자리수)
-- 오라클에서 제공하는 가상 TABLE
SELECT ROUND(3.87, 1) FROM DUAL;

-- 자리수 : 1 - 소수첫째자리, 0 - 정수, -1 - 일의자리
SELECT ROUND(12351, -2) FROM DUAL;

-- 절대값 ABS(숫자) : 양수는 양수이고, 음수는 양수로 바뀜
SELECT ABS(-10), ABS(10) FROM DUAL;

-- 숫자를 절삭(버림) - TRUNC(숫자, 자리수)
SELECT TRUNC(3.87, 1), TRUNC(3.87) FROM DUAL;

-- 숫자를 정수로 내림한다. - FLOOR(실수)
SELECT FLOOR(3.87) FROM DUAL;

-- 사원 급여에서 반올림 함수 사용
SELECT ename, salary,
              salary/30 일급,
              ROUND(salary/30, 1) 결과1,
              ROUND(salary/30, 0) 결과2,
              ROUND(salary/30, -1) 결과3
FROM employee;

-- 사원급여에 TRUNC() 적용
SELECT ename, salary,
              salary/30 일급,
              TRUNC(salary/30, 1) 결과1,
              TRUNC(salary/30, 0) 결과2,
              TRUNC(salary/30, -1) 결과3
FROM emp;

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


