SELECT * FROM emp;
--NVL( 인수1, 인수2): 인수 1 이 NULL이 아니면 인수 1 출력, NULL이면 인수 2출력
--급여가 없는 사원을 검색하시오


SELECT *
FROM emp
where sal is NULL;

SELECT ename, 
    nvl(sal,0)
FROM emp;
--성별자료 변경하기
UPDATE emp SET gender = '여자'
WHERE empno = 100 OR empno = 101;

UPDATE emp SET gender = '남자'
WHERE empno = 102 OR empno = 103;


--DECODE(칼럼, 조건, 참, 거짓) 함수 -IF함수와 유사함

SELECT ename,
    sal,
    CASE
    WHEN gender='남자' THEN 'M'
    ELSE 'F'
    END gender
    FROM emp;
--급여가 250만원 이상이면 직급을 '대리'로 표시하고  
--350만원 이상이면 ' 과장으로 '표시하시오
SELECT ename,
    CASE
    WHEN sal >= 3500000 THEN '과장'
    WHEN sal >= 2500000 THEN '대리'
    ELSE '사원'
    END 급여기준
    FROM emp;
--CASE WHEN
/*
    CASE
        WHEN 조건 THEN 결과1
        WHEN 조건 THEN 결과2
        ELSE 결과3        
    END
    
*/
--DECODE()로 작성 (범위 값을 지정못함 )
SELECT ename
    sal, 
    DECODE(sal, sal >=350000, '과장', sal >= 250000,'대리','사원') 급여기준
    FROM emp;
