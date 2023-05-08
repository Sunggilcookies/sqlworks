-- ROWNUM : ������ ���س��� SUDO COLUMN�̴�.
-- ��ȸ�Ǵ� ���� ���� �����ҋ� ���
SELECT bno, title, writer, content
FROM board
WHERE ROWNUM > 0 AND ROWNUM <= 10
--WHERE ROWNUM > 0 AND ROWNUM <= 20 -> 1�� �����ؾ� ��ȸ��
ORDER BY bno;

-- 3 ~ 7������ �˻�
SELECT * FROM
(SELECT ROWNUM RN, bno, title, writer, content
FROM board)
WHERE RN > 3 AND RN <= 7; --ROWNUM �״�� ��� X ��Ī

-- ROWNUM�� �ùٸ� ���
CREATE TABLE EX_SCORE(
    NAME    VARCHAR2(10),
    SCORE   NUMBER
);

INSERT INTO EX_SCORE VALUES ('���ϳ�', 94);
INSERT INTO EX_SCORE VALUES ('���ϳ�', 100);
INSERT INTO EX_SCORE VALUES ('���ϳ�', 97);
INSERT INTO EX_SCORE VALUES ('���ϳ�', 77);
INSERT INTO EX_SCORE VALUES ('���ϳ�', 87);
INSERT INTO EX_SCORE VALUES ('���ϳ�', 91);
INSERT INTO EX_SCORE VALUES ('���ϳ�', 66);
INSERT INTO EX_SCORE VALUES ('���ϳ�', 85);
INSERT INTO EX_SCORE VALUES ('���ϳ�', 80);
INSERT INTO EX_SCORE VALUES ('���ϳ�', 94);

SELECT * FROM EX_SCORE;

-- ������ ���������� 5�� �˻�
SELECT ROWNUM, NAME, SCORE
    FROM EX_SCORE
    WHERE ROWNUM <= 5
    ORDER BY SCORE DESC;
    
--�ùٸ� ��� (�������� ��� - �ζ��� ��)
SELECT * FROM
(SELECT ROWNUM, NAME, SCORE
    FROM EX_SCORE
    ORDER BY SCORE DESC)
WHERE ROWNUM <= 5;

-- ���� ����