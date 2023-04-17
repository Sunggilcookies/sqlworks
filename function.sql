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


