--집합 연산
CREATE TABLE job(
    job_id VARCHAR(10),
    salarY NUMBER(5) --달러로 입력
    );
    
INSERT INTO job VALUES ('manager', 1300);
INSERT INTO job VALUES ('manager', 1500);
INSERT INTO job VALUES ('manager', 1900);
INSERT INTO job VALUES ('helper', 1000);
INSERT INTO job VALUES ('helper', 1500);
INSERT INTO job VALUES ('helper', 2500);


--job 전체의 개수와 급여의 총합계를 구하기
SELECT COUNT(*) 개수, SUM(salary) 총합계
FROM job;

-- 직업아이디(job_id) 별 개수와 급여의 총합계 구하기
SELECT job_id, COUNT(job_id), SUM(salary)
FROM job
GROUP BY job_id;

-- 직업아이디(job_id) 별 개수와 급여의 쵀댓값 구하기
SELECT job_id, COUNT(job_id), MAX(salary)
FROM job
GROUP BY job_id;

-- 직업아이디(job_id) 별 개수와 급여의 최댓값과 최소값 구하기 구하기
SELECT job_id, MAX(salary) RESULT
FROM job
GROUP BY job_id
UNION
SELECT job_id, MIN(salary) RESULT
FROM job
GROUP BY job_id;

COMMIT;

SELECT * FROM job;

