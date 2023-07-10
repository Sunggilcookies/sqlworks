--ȸ�� ���̺� ����
CREATE TABLE sg_member(
    memberid VARCHAR2(20) PRIMARY KEY,
    passwd   VARCHAR2(20) NOT NULL,
    name     VARCHAR2(30) NOT NULL,
    gender   VARCHAR2(10),
    joindate DATE DEFAULT SYSDATE
    
);

--�Խ��� �����
CREATE TABLE sg_board(
    bnum NUMBER(4) PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regdate TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate TIMESTAMP,
    hit NUMBER DEFAULT 0,
    memberid VARCHAR2(20) NOT NULL,
    CONSTRAINT FK_MemberBoard FOREIGN KEY(memberid)
    REFERENCES sg_member(memberid)
);

--�۹�ȣ, ������, �۳���, �ۼ���, ������, ��ȸ�� ,ȸ�����̵�(�ܷ�Ű)
-- �ڵ� ����(SEQUNCE)
CREATE SEQUENCE b_seq;

INSERT INTO sg_member(memberid, passwd, name, gender)
VALUES ('cloud', 'm12345', '������', '��');

INSERT INTO sg_board(bnum, title, content, memberid)
VALUES (b_seq.NEXTVAL, '�����λ�', '�ȳ��ϼ���. �ݰ����ϴ�.', 'cloud');

SELECT * FROM sg_member;

commit;