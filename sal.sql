--숫자 타입 함수
--제공된 테이블 :dual
SELECT ABS(-10), ABS(10) FROM dual;

--sal을 30일로 나눈후 소수 자리수에 따라 반올림한 값 출력
SELECT sal 급여,
sal/30 일급,  
    ROUND(sal/30, 1) 결과1,
     ROUND(sal/30, 0) 결과2,
     ROUND(sal/30, -1) 결과3
FROM employee;

--sal을 30일로 나눈후 소수 자리수에 따라 절삭
SELECT sal 급여,
sal/30 일급,  
    TRUNC(sal/30, -1)
FROM employee;

-- 고객별 평균 주문 금액을 백원 단위로 반올림한 값을 구하시오
SELECT custid 고객번호, ROUND(AVG(saleprice)) 평균주문금액
FROM orders
GROUP BY custid;

-- 고객별 평균 주문 금액을 백원 단위로 반올림한 값을 구하시오
SELECT custid 고객번호,  AROUND(SUM(saleprice)/COUNT(*)) 총액
FROM orders
GROUP BY custid;