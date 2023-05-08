--book ���̺�(������ȣ, �����̸�, ���ǻ�, ��������)
CREATE TABLE book(
    bookid      NUMBER PRIMARY KEY,
    bookname    VARCHAR2(50) NOT NULL,
    publisher   VARCHAR2(50) NOT NULL,
    price       NUMBER NOT NULL
);

-- book �ڷ� �Է�
INSERT INTO book VALUES (1, '�౸�� ����', '�½�����', 7000);
INSERT INTO book VALUES (2, '�౸�ƴ� ����', '������', 13000);
INSERT INTO book VALUES (3, '�౸�� ����', '���ѹ̵��', 22000);
INSERT INTO book VALUES (4, '�������̺�', '���ѹ̵��', 35000);
INSERT INTO book VALUES (5, '�ǰܱ���', '�½�����', 8000);
INSERT INTO book VALUES (6, '����� ����', '�½�����', 6000);
INSERT INTO book VALUES (7, '�߱��� �߾�', '�̻�̵��', 20000);
INSERT INTO book VALUES (8, '�߱��� ��Ź��', '�̻�̵��', 13000);
INSERT INTO book VALUES (9, '�ø��� �̾߱�', '�Ｚ��', 7500);
INSERT INTO book VALUES (10, 'Olympic Champions', 'Pearson', 13000);


-- �ڷ� �˻�
SELECT * FROM book;

-- ��� ������ �̸��� ������ �˻��Ͻÿ�
SELECT bookname å�̸�, price ����
FROM book;

-- ���� ���̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ�
SELECT DISTINCT publisher ���ǻ�
FROM book;