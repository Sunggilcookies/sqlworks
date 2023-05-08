
SELECT * FROM dept;

SELECT * FROM employee;

DELETE FROM dept
WHERE deptno = '1000';

-- employee ���̺� �ܷ�Ű ���� ���ǿ��� ON DELETE CASCADE ���� ���� �߰�
--1. �ܷ�Ű ���� ���� ����
ALTER TABLE employee DROP CONSTRAINT emp_fk1;

--2. ON DELETE CASCADE ���� ���� �߰�
ALTER TABLE employee ADD CONSTRAINT emp_fk1
FOREIGN KEY(deptno) REFERENCES dept(deptno)
ON DELETE CASCADE;

desc dept;