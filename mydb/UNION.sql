--���� ����
CREATE TABLE job(
    job_id VARCHAR(10),
    salarY NUMBER(5) --�޷��� �Է�
    );
    
INSERT INTO job VALUES ('manager', 1300);
INSERT INTO job VALUES ('manager', 1500);
INSERT INTO job VALUES ('manager', 1900);
INSERT INTO job VALUES ('helper', 1000);
INSERT INTO job VALUES ('helper', 1500);
INSERT INTO job VALUES ('helper', 2500);


--job ��ü�� ������ �޿��� ���հ踦 ���ϱ�
SELECT COUNT(*) ����, SUM(salary) ���հ�
FROM job;

-- �������̵�(job_id) �� ������ �޿��� ���հ� ���ϱ�
SELECT job_id, COUNT(job_id), SUM(salary)
FROM job
GROUP BY job_id;

-- �������̵�(job_id) �� ������ �޿��� ���� ���ϱ�
SELECT job_id, COUNT(job_id), MAX(salary)
FROM job
GROUP BY job_id;

-- �������̵�(job_id) �� ������ �޿��� �ִ񰪰� �ּҰ� ���ϱ� ���ϱ�
SELECT job_id, MAX(salary) RESULT
FROM job
GROUP BY job_id
UNION
SELECT job_id, MIN(salary) RESULT
FROM job
GROUP BY job_id;

COMMIT;

SELECT * FROM job;

