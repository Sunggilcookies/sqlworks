--board���̺�
CREATE TABLE board(
    bno NUMBER(5) PRIMARY KEY,
    title VARCHAR2(200),
    writer VARCHAR2(20),
    content VARCHAR2(2000),
    regdate DATE DEFAULT SYSDATE

);
--������ (�Ϸù�ȣ, �ڵ�����)
CREATE SEQUENCE seq;

--��õ�� Į���� �߰��Ͻÿ�(Į����: cnt, �ڷ���: NUMBER DEFAULT 0)
--ALTER TABLE ���̺��̸� ADD Į���� �ڷ���
ALTER TABLE board ADD cnt NUMBER DEFAULT 0;


--�Խñ� �߰�
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL,'�����λ�','������','�ȳ��ϼ���,�����λ� �����');
INSERT INTO board(bno, title, writer, content)
VALUES(seq.NEXTVAL,'��������','������','�����λ� �����');
INSERT INTO board(bno, title, writer, content)
VALUES(seq.NEXTVAL,'�����λ�','�̰�','�ȳ��ϼ���,���Կ�');
INSERT INTO board(bno, title, writer, content)
VALUES(seq.NEXTVAL,'�����λ��Դϴ�.','�̰�','�ȳ��ϼ���');
INSERT INTO board(bno, title, writer, content)
VALUES(seq.NEXTVAL,'���� �Ϸ�','�� �Ϸ�','���� �Ϸ� �Ǽ���');

--�Խñ� �˻�
SELECT *
FROM board;

--�ۼ��ڰ� �������� �Խñ��� �˻��Ͻÿ�
SELECT * FROM board
WHERE bno=2;

--�Խñ��� �ۼ��ڸ� '������'���� admin���� �����ϼ���
--UPDATE ���̺��̸� SET Į�� = ���氪 WHERE ��
UPDATE board SET writer = 'admin'
WHERE bno = 2;

-- 3�� �Խñ��� �����Ͻÿ�
-- DELETE FROM ���̺��̸� WHERE ��
DELETE FROM board WHERE bno =3;
--��� ����(�ڷ����
---INSERT INTO(Į��)(SELECT Į�� FROM ���̺��̸�)
INSERT INTO board(bno, title, writer, content)
(SELECT seq.nextval, title, writer, content FROM board);

select ROWNUM, bno, title, content  from board
where rownum > 0 and rownum <= 20;

--������ ó�� ROWNUM �߿�!!!!
SELECT *
FROM
(SELECT ROWNUM rn, bno, title, content
FROM board)
WHERE RN >=11 AND rN <= 20;

--ROWID
--�����͸� �����ϴ� ������ ��
-- ROWID�� ���ؼ� ������ ����, ��� ���� ����Ǿ� �ִ� �� �˼� ����
SELECT ROWID, bno, title, content
FROM board;

SELECT ROWID, bno, title, content
FROM board
WHERE ROWID = 'AAAS1dAABAAAgUJAAA';


--������ ����
DROP SEQUENCE seq;
--���̺� ����
DROP TABLE board;
