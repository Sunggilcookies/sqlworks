-- book ���̺�(������ȣ, �����̸�, ���ǻ�, ��������)
CREATE TABLE book(
    bookid NUMBER PRIMARY KEY,
    bookname VARCHAR2 (50) NOT NULL,
    publisher VARCHAR2(50) NOT NULL,
    price NUMBER NOT NULL
);

--book �ڷ� �Է�
INSERT INTO book VALUES (1,'�౸�� ����', '�½�����', 7000);
INSERT INTO book VALUES (2,'�౸�ƴ� ����', '������', 13000);
INSERT INTO book VALUES (3,'�౸�� ����', '���ѹ̵��', 22000);
INSERT INTO book VALUES (4,'������ ���̺�', '�½�����', 35000);
INSERT INTO book VALUES (5,'�ǰ� ����', '�½�����', 8000);
INSERT INTO book VALUES (6,'����� ����', '�½�����', 6000);
INSERT INTO book VALUES (7,'�߱��� �߾�', '�̻�̵��', 20000);
INSERT INTO book VALUES (8,'�߱��� ��Ź��', '�̻�̵��', 13000);
INSERT INTO book VALUES (9,'�ø��� �̾߱�', '�Ｚ��', 7500);
INSERT INTO book VALUES (10,'Olympic Champions', 'Person', 13000);


-- �ڷ� �˻�
SELECT * FROM book ;

-- ��� ������ �̸��� ������ �˻��Ͻÿ�
SELECT bookname, price FROM book;

--���� ���̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ� (�ߺ� ����)
SELECT DISTINCT book.publisher FROM book;

--Ư���� ���� (where ��)
SELECT *
FROM book
Where price<20000 AND
price>=10000;

-- or ����, in('a','b')
-- ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ������ �˻��Ͻÿ�
SELECT *
FROM book
WHERE publisher IN ('�½�����','���ѹ̵��');

SELECT *
FROM book
WHERE publisher = '�½�����' or publisher ='���ѹ̵��' ;

-- '�౸�� ����'�� �Ⱓ�� ���ǻ縦 �˻��Ͻÿ�
SELECT publisher
FROM book
WHERE bookname LIKE '�౸�� ����' ;

-- �����̸��� �౸�� ���Ե� ����
SELECT *
FROM book
WHERE bookname LIKE '%�౸%' ;

--�౸�� ���� ���� �� ������ 20000�� �̻��� ������ ã���ÿ�
SELECT *
FROM book
WHERE price>=20000 AND bookname LIKE '%�౸%' ;

--������ �Ѱ����� ���Ͻÿ�
SELECT COUNT(*) �Ѽ�
FROM book;

-- ���� ������ ���� ������ �� ������ ������ �˻��Ͻÿ�
SELECT MAX(price) �ְ� 
FROM book;

--���� ����(��ø����, Sub query)
SELECT bookname, price �ְ� 
FROM book
WHERE price = (SELECT MAX(price)FROM book);

--�̸�����
ALTER TABLE book RENAME COLUMN price To saleprice;
--�ڷ��� ����
ALTER TABLE book MODIFY bookname VARCHAR2(60);

--���������� ���� ������ �����Ͻÿ�
--������ ������ ���ǻ縦 �������� �����ϱ�
SELECT *
FROM book
ORDER BY price DESC, publisher ASC;