--���� Ÿ�� �Լ�
--������ ���̺� :dual
SELECT ABS(-10), ABS(10) FROM dual;

--sal�� 30�Ϸ� ������ �Ҽ� �ڸ����� ���� �ݿø��� �� ���
SELECT sal �޿�,
sal/30 �ϱ�,  
    ROUND(sal/30, 1) ���1,
     ROUND(sal/30, 0) ���2,
     ROUND(sal/30, -1) ���3
FROM employee;

--sal�� 30�Ϸ� ������ �Ҽ� �ڸ����� ���� ����
SELECT sal �޿�,
sal/30 �ϱ�,  
    TRUNC(sal/30, -1)
FROM employee;

-- ���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� ���� ���Ͻÿ�
SELECT custid ����ȣ, ROUND(AVG(saleprice)) ����ֹ��ݾ�
FROM orders
GROUP BY custid;

-- ���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� ���� ���Ͻÿ�
SELECT custid ����ȣ,  AROUND(SUM(saleprice)/COUNT(*)) �Ѿ�
FROM orders
GROUP BY custid;