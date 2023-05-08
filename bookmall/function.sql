-- ���� Ÿ�� �Լ�
-- ������ ���̺� : dual
SELECT ABS(-10), ABS(10) FROM dual;

-- �ݿø� : ROUND(��, �ڸ���)
SELECT ROUND(3.875,1) FROM DUAL;

-- sal�� 30���� ������ �Ҽ� �ڸ����� ���� �ݿø��� �� ���
SELECT sal �޿�,
       sal/30 �ϱ�,
       ROUND(sal/30, 1) ���1,
       ROUND(sal/30, 0) ���2,
       ROUND(sal/30, -1) ���3
FROM employee;

-- sal�� 30���� ������ �Ҽ� �ڸ����� ���� ����(����) �� ���
SELECT sal �޿�,
       sal/30 �ϱ�,
       TRUNC(sal/30, 1) ���1,
       TRUNC(sal/30, 0) ���1,
       TRUNC(sal/30, -1) ���1
FROM employee;

--���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� ���� ���Ͻÿ�
SELECT custid ����ȣ , ROUND(AVG(saleprice), -2) ����ֹ��ݾ�
FROM orders
GROUP BY custid;

SELECT custid ����ȣ , ROUND(SUM(saleprice)/COUNT(*)) ��ձݾ�
FROM orders
GROUP BY custid;

SELECT * FROM customer;

--���� Ÿ�� �Լ�
SELECT LOWER ('ABCD') RESULT FROM DUAL;

-- SUBSTR(����, �ε���, ���ڼ�)
SELECT SUBSTR('ABC', 1, 2) RESILT FROM DUAL;
-- REPLACE(����,��������, ���ο��)
SELECT REPLACE('ABC', 'A', 'E') RESULT FROM DUAL;
-- CONCAT(����1, ����2) - ���� ����
SELECT CONCAT('A', 'B') RESULT FROM DUAL;
-- ���Ῥ���� - '||'
SELECT '�ȳ�' || '�ϼ���' RESULT FROM DUAL;
-- LPAD(����, ���ڼ�, ��ȣ) - ��ȣ�� ���ʺ��� ä��
SELECT LPAD('cloud', 10, '*') RESULT FROM DUAL;
-- �μ��̸����� ó������ �����ؼ� 2���� ���� ���
SELECT SUBSTR(deptname, 1, 2) �μ���
FROM DEPT;

-- ���� ���� '�߱�'�� ���Ե� ������ '��'�� �����Ͽ� �˻�
SELECT bookid, REPLACE(bookname, '�߱�', '��') bookname
FROM book;

-- �½��������� ������ ������ ����� ������ ���� ��, ����Ʈ ���� �˻�
-- �ѱ� 3Byte, ����, Ư����ȣ - 1Byte
SELECT bookname,
       LENGTH(bookname) ���ڼ�
FROM book
WHERE publisher = '�½�����';

-- ��¥ �Լ�
-- 20������ ��¥ ���
SELECT SYSDATE +20 FROM DUAL;

-- 4��1�Ͽ��� 20����(Ư���� ��: ������ -> ��¥��)
SELECT TO_DATE('2023/04/01') +20 FROM DUAL;

-- �Ի��� : 2022-1-1, ����� : 2023-1-31(���� ���)
SELECT
    ROUND(MONTHS_BETWEEN(TO_DATE('2023-1-31'), TO_DATE('2022-1-1'))) �Ѱ�����
FROM DUAL;

-- 3���� ���� ��¥ ���
SELECT ADD_MONTHS(SYSDATE, 3) ���
FROM DUAL;
-- 3���� ���� ��¥ ���
SELECT ADD_MONTHS('2023/04/01', -3) ���
FROM DUAL;
-- ��¥�� �ð�
SELECT SYSTIMESTAMP FROM DUAL;

-- �ֹ���ȣ�� 6���� 10������ ������ �ֹ��Ͽ� 3������ ���Ѱ��� ���Ͻÿ�.
-- 1. �ֹ���ȣ�� 6~10�� ���� �˻�
-- 2. �ֹ��Ͽ� 3���� ���ϱ�
SELECT orderid �ֹ���ȣ,
       ADD_MONTHS(orderdate, 3) ���ϱ���,
       ADD_MONTHS(orderdate, -3) ������
FROM orders WHERE orderid BETWEEN 6 AND 10;

-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ�
-- MONTHS_BETWEEN(���߳�¥, ������¥)
SELECT orderid �ֹ���ȣ, orderdate �ֹ���¥,
        TRUNC(MONTHS_BETWEEN(SYSDATE, orderdate)) �Ѱ�����
FROM orders
WHERE orderid = 10;

-- ������ �ֹ��Ϸκ��� 10���� ������ Ȯ���Ѵ�. �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�.
SELECT orderid �ֹ���ȣ, orderdate �ֹ���, orderdate + 10 Ȯ����
FROM orders;

-- �ڵ� Ÿ�� ��ȯ
SELECT 1 + '2' FROM DUAL;

-- ���� Ÿ�� ��ȯ
-- ���ڸ� ���� �������� ��ȯ
SELECT TO_NUMBER('120') FROM DUAL;

-- ��¥ ����
SELECT TO_DATE('2022-06-30', 'yy-mm-dd') FROM DUAL;

-- ��¥ ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'yyyy-mm-dd') ��¥,
       TO_CHAR(SYSDATE, 'yyyy') ����,
       TO_CHAR(SYSDATE, 'mm') ��,
       TO_CHAR(SYSDATE, 'dd') ��
FROM DUAL;

-- �ð� ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS PM') �ð�����,
       TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS PM') ��¥�ͽð�
FROM DUAL;

-- �� �̸����� ���� ���� ���� ����� �ο����� ���Ͻÿ�
SELECT SUBSTR(name, 1, 1) ��, COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);



