-- ��¥ �ڷ���
CREATE TABLE ex2(
    col_date DATE,
    col_timestamp TIMESTAMP

);

--DROP TABLE ex2;


-- �ڷ� ����
INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);
INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);

-- �ڷ� �˻�
SELECT * FROM ex2;