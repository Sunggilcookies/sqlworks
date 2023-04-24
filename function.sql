-- ���� �Լ�
SELECT * FROM emp;

-- 105 ��� �Է� : ������ 
INSERT INTO emp VALUES (105, '������', 2500000, SYSDATE, 1000);

-- ��� ���̺��� �̸��� '��������'�� �˻��Ͻÿ�
SELECT * FROM emp
WHERE ename = '��������';

-- �޿��� 300�鸸���� �ʰ��ϴ� ����� �˻��Ͻÿ�.
SELECT * FROM emp
WHERE salary > 3000000;

-- �޿��� 300�鸸�� �̸鼭, �μ���ȣ�� 1002�� ����� �˻��Ͻÿ�.
SELECT * FROM emp
WHERE salary = 3000000
AND deptno = '1002';

-- �Ż��Ӵ��� �޿��� 320�������� �����ϼ���.
-- UPDATE ���̺��̸� SET Į�����泻�� WHERE ��
UPDATE emp SET salary = 3200000
WHERE empno = 104; -- �⺻Ű�� ������ �ش�.

-- ������ ������ �������� �����Ͻÿ�
SELECT * FROM emp ORDER BY createdate DESC;

-- ����� �� �ο����� ���Ͻÿ�(COUNT �Լ�)
SELECT COUNT(*) ���ο���
FROM emp;

-- ��� �޿��� ���հ踦 ���Ͻÿ�.(SUM �Լ�)
SELECT SUM(salary) �ѱ޿�
FROM emp;

-- ��� �޿��� ����� ���Ͻÿ�.(SUM / COUNT)
SELECT SUM(salary) / COUNT(*) �޿����
FROM emp;

SELECT ROUND(AVG(salary), -1) �޿����
FROM emp;

-- �μ��� �޿� �Ѱ踦 ���Ͻÿ�
SELECT deptno,
       SUM(salary) �޿��հ�, 
       ROUND(AVG(salary), -2) �޿����
FROM emp
GROUP BY deptno;

-- �μ��� �Ұ� �� �Ѱ�
-- GROUP BY ROLLUP(Į��) 
SELECT deptno,
       SUM(salary) �޿��հ�, 
       ROUND(AVG(salary), -2) �޿����
FROM emp
GROUP BY ROLLUP(deptno);

-- �̸������� �����Ͻÿ�(��������)
SELECT * 
FROM emp
ORDER BY ename ASC;

-- �޿��� ���� ������ �������� �����Ͻÿ�
SELECT * 
FROM emp
ORDER BY salary DESC;

-- �޿� ���������� ���� ���ϱ�
SELECT ename,
       salary,
       RANK() OVER(ORDER BY salary DESC) �޿�_RANK,
       DENSE_RANK() OVER(ORDER BY salary DESC) �޿�_DENSE_RANK
FROM emp;

-- ���� Ÿ�� �Լ�
-- ���ڸ� �ݿø��Ѵ�. : ROUND(����, �ڸ���)
-- ����Ŭ���� �����ϴ� ���� TABLE
SELECT ROUND(3.87, 1) FROM DUAL;

-- �ڸ��� : 1 - �Ҽ�ù°�ڸ�, 0 - ����, -1 - �����ڸ�
SELECT ROUND(12351, -2) FROM DUAL;

-- ���밪 ABS(����) : ����� ����̰�, ������ ����� �ٲ�
SELECT ABS(-10), ABS(10) FROM DUAL;

-- ���ڸ� ����(����) - TRUNC(����, �ڸ���)
SELECT TRUNC(3.87, 1), TRUNC(3.87) FROM DUAL;

-- ���ڸ� ������ �����Ѵ�. - FLOOR(�Ǽ�)
SELECT FLOOR(3.87) FROM DUAL;

-- ��� �޿����� �ݿø� �Լ� ���
SELECT ename, salary,
              salary/30 �ϱ�,
              ROUND(salary/30, 1) ���1,
              ROUND(salary/30, 0) ���2,
              ROUND(salary/30, -1) ���3
FROM employee;

-- ����޿��� TRUNC() ����
SELECT ename, salary,
              salary/30 �ϱ�,
              TRUNC(salary/30, 1) ���1,
              TRUNC(salary/30, 0) ���2,
              TRUNC(salary/30, -1) ���3
FROM emp;

-- ���� Ÿ�� �Լ�
SELECT LOWER('ABCD') RESULT FROM DUAL;

-- SUBSTR (����, �ε���, ���ڼ�)
SELECT SUBSTr('ABC',1,2) RESULT FROM DUAL;

-- REPLACE(����, ��������, ���ο��)
SELECT REPLACE('ABC', 'A', 'E') RESULT FROM DUAL;
--CONCAT(����1, ����2) -���ڿ���
SELECT CONCAT('A', 'B') RESULT FROM DUAL;
-- ���� ������ - '||'
SELECT '�ȳ�' || '�ϼ���' RESULT FROM DUAL;
--LPAD(����, ���ڼ�, ��ȣ) -��ȣ�� ���ʺ���ä��
SELECT LPAD('cloud',10, '*') RESULT FROM DUAL;
SELECT RPAD('cloud',10, '*') RESULT FROM DUAL;

--���̸����� ���� ���� ���� ����� �ο����� ���Ͻÿ�
SELECT  SUBSTR(name,1,1) ��,
        count(*)
FROM customer
GROUP BY SUBSTR(name,1,1);




--�μ��̸����� ó������ �����ؼ� 2���� ���� ���
SELECT SUBSTR(deptname, 2, 3) �μ���
FROM DEPT;

--���� ���� '�߱�'�� ���Ե� ������ '��'�� �����Ͽ� �˻�
SELECT bookid , REPLACE(bookname, '�߱�', '��') RESULT FROM book;

--�½��������� ������ ������ ����� ������ ���� ��, ����Ʈ ���� �˻�
SELECT bookname,
    LENGTH(bookname)���ڼ�,
    LENGTHB(bookname)����Ʈ��
FROM book
WHERE publisher = '�½�����';
    
--��¥�Լ�
-- 20������ ��¥ ���
SELECT SYSDATE-20  FROM DUAL;

-- 3���� ���� ��¥ ���
SELECT ADD_MONTHS ('2023/04/01', -3) ���
FROM DUAL;
--��¥�� �ð�
SELECT SYSTIMESTAMP FROM DUAL;
-- �ֹ���ȣ�� 6���� 10������ ������ �ֹ��Ͽ� 3������ ���Ѱ��� ���Ͻÿ�.
-- 1.�ֹ���ȣ�� 6~10�� ���� �˻�
SELECT orderid �ֹ���ȣ,
    ADD_MONTHS(orderdate, 3)
   
FROM orders
WHERE orderid >= 6 AND orderid <= 10;

--�ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ�
--MONTHS_BETWEEN(���ĳ�¥, ������¥)
SELECT orderid �ֹ���ȣ,
        ROUND(MONTHS_BETWEEN(SYSDATE, orderdate),0) �Ѱ�����
FROM orders
WHERE orderid = 10;

--������ �ֹ��Ϸκ��� 10���� ������ Ȯ���Ѵ�. ���ֹ��� Ȯ�����ڸ� ���Ͻÿ�.
SELECT orderid �ֹ���ȣ,
        orderdate +3 Ȯ����¥
FROM orders
WHERE orderid = 10;

-- �ڵ� Ÿ�� ��ȯ
SELECT 1+ '2' FROM DUAL;

-- ���� Ÿ�� ��ȯ
-- ���ڸ� ���� �������� ��ȣ��
SELECT TO_NUMBER('120') FROM DUAL;

-- ��¥ ����
SELECT TO_DATE('2022-06-30' ,'00000000') FROM DUAL;

SELECT TO_DATE(SYSDATE,'YYYY-MM-DD')��¥ FROM DUAL;

SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD')��¥ ,
         TO_CHAR(SYSDATE,'YYYY')����,
         TO_CHAR(SYSDATE,'MM')��,
         TO_CHAR(SYSDATE,'DD')��
FROM DUAL;

--�ð� ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS AM') �ð�����,
    TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS AM') ��¥�ͽð�
FROM DUAL;

--4�� 1�Ͽ��� 10����(Ư���� ��: ������->��¥��)
SELECT TO_DATE('2023-04-01' )+ 20 FROM DUAL;
--��¥�� �ð� �Ի��� :2022 1 1 Ƽ����: 2023 1 31 (�������)
SELECT 
ROUND(MONTHS_BETWEEN(TO_DATE('2023-1-31') ,TO_DATE('2022-1-1')) ,0) �Ѱ�����
FROM DUAL;


