-- 부서 테이블 (dept)
CREATE TABLE dept (
 --칼럼이름 자료형--
 deptno VARCHAR2(4),
 deptname VARCHAR2(20),
 office VARCHAR2(10)
);

DESC dept;

--부서 추가 
INSERT INTO dept(deptno, deptname, office) VALUES ('1000','인사팀','서울');

--부서 자료 검색 (as 별칭 - alias)
SELECT deptname as 부서명 FROM dept;