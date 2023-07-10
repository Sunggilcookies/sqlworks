--회원 테이블 생성
CREATE TABLE sg_member(
    memberid VARCHAR2(20) PRIMARY KEY,
    passwd   VARCHAR2(20) NOT NULL,
    name     VARCHAR2(30) NOT NULL,
    gender   VARCHAR2(10),
    joindate DATE DEFAULT SYSDATE
    
);

--게시판 만들기
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

--글번호, 글제목, 글내용, 작성일, 수정일, 조회수 ,회원아이디(외래키)
-- 자동 순번(SEQUNCE)
CREATE SEQUENCE b_seq;

INSERT INTO sg_member(memberid, passwd, name, gender)
VALUES ('cloud', 'm12345', '강정현', '남');

INSERT INTO sg_board(bnum, title, content, memberid)
VALUES (b_seq.NEXTVAL, '가입인사', '안녕하세요. 반갑습니다.', 'cloud');

SELECT * FROM sg_member;

commit;