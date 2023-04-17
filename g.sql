1.모든 고객의 이름과ㅈ 주소를 검색하시오
SELECT customer.name, customer.address FROM CUSTOMER;


2.모든 고객의 이름,주소,전화번호를 검색하시오
SELECT customer.name, customer.address, customer.phone FROM CUSTOMER;

3.주소가 '영국'인 고객을 검색하시오
SELECT * FROM CUSTOMER WHERE address LIKE '영국%';

4.고객의 이름이 '김연아'혹은 '안산'인 고객을 검색하시오
SELECT * FROM CUSTOMER WHERE name ='김연아' OR address LIKE'안산%';

5.주소가 '대한민국'이 아닌 고객을 검색하시오
SELECT * FROM CUSTOMER WHERE address NOT LIKE '대한민국%';

6.전화번호가 없는 고객을 검색하시오
SELECT * FROM CUSTOMER WHERE phone IS null;

7.고객을 이름순으로 정렬하시오
SELECT * FROM customer ORDER BY name;

8.고객의 총 인원수를 구하시오
SELECT COUNT (*) 총인원수 from customer

