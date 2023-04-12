-- ��� ���̺�
CREATE TABLE emp(
 --Į�� �̸� �ڷ���--
    empno NUMBER(3) PRIMARY KEY,    --�����ȣ
    ename VARCHAR2(20) NOT NULL,    --����̸�
    sal   NUMBER(10),               --�޿�
    createdate DATE DEFAULT SYSDATE --�����
);

-- ����� ���� Į�� �߰�(ALTER ~ ADD Į���̸� �ڷ��� )
ALTER TABLE emp ADD gender VARCHAR2(4);

--����� ���� �ڷ����� ���� (MODIFY) VARCHAR2(10)
ALTER TABLE emp MODIFY gender varchar2(10);

SELECT 
-- ��� �߰�
INSERT INTO emp VALUES (100, '�̰�', 2500000, SYSDATE);
INSERT INTO emp VALUES (101, '���', 3000000, SYSDATE);
INSERT INTO emp VALUES (102, '�����', 5000000, SYSDATE);
INSERT INTO emp VALUES (103, '�ڽ���', '', SYSDATE);
INSERT INTO emp VALUES (104, '�����', 15000000, SYSDATE,'����');

SELECT * FROM emp;
-- �����ȣ, ����̸�, �޿��� �˻��Ͻÿ�
SELECT empno as ���, ename as �����, sal as �޿� FROM emp;

--�޿��� ���� ����� �˻��Ͻÿ�
SELECT *
FROM EMP 
where sal IS NULL; -- NULL�� �ƴ� 

--�޿��� 300���� ������ ����� �˻��Ͻÿ�
SELECT *
FROM emp
WHERE sal<=3000000;

--�޿��� ���� ������ �����Ͻÿ� (�޿��� �ȹ޴� ������ �����Ұ�.)
SELECT *
FROM emp
Where sal IS NOT NULL
ORDER BY sal DESC;

/*--�̸��� ������� ����� �˻��ϼ���
SELECT * FROM emp
WHERE empno = 104;*/

-- ������ '��'�� ����� '����'�� �����Ͻÿ�
UPDATE emp 
SET gender='����'
WHERE empno=104;

--����̸��� ������� ��� ����
DELETE FROM emp
WHERE ename='�����';

-- �ο��� ����
SELECT COUNT(*) as ����� 
FROM emp;

--����� �޿��� �հ�� ����� ���Ͻÿ� null���� ����
SELECT SUM(sal) �޿��հ�, AVG(sal) �޿����
FROM emp;





COMMIT;
ROLLBACK; //����
