1.��� ���� �̸����� �ּҸ� �˻��Ͻÿ�
SELECT customer.name, customer.address FROM CUSTOMER;


2.��� ���� �̸�,�ּ�,��ȭ��ȣ�� �˻��Ͻÿ�
SELECT customer.name, customer.address, customer.phone FROM CUSTOMER;

3.�ּҰ� '����'�� ���� �˻��Ͻÿ�
SELECT * FROM CUSTOMER WHERE address LIKE '����%';

4.���� �̸��� '�迬��'Ȥ�� '�Ȼ�'�� ���� �˻��Ͻÿ�
SELECT * FROM CUSTOMER WHERE name ='�迬��' OR address LIKE'�Ȼ�%';

5.�ּҰ� '���ѹα�'�� �ƴ� ���� �˻��Ͻÿ�
SELECT * FROM CUSTOMER WHERE address NOT LIKE '���ѹα�%';

6.��ȭ��ȣ�� ���� ���� �˻��Ͻÿ�
SELECT * FROM CUSTOMER WHERE phone IS null;

7.���� �̸������� �����Ͻÿ�
SELECT * FROM customer ORDER BY name;

8.���� �� �ο����� ���Ͻÿ�
SELECT COUNT (*) ���ο��� from customer

