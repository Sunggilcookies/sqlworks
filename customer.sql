--customer 테이블()
CREATE TABLE customer(
    custid NUMBER PRIMARY KEY,
    name VARCHAR2(40) NOT NULL,
    address VARCHAR2(50),
    phone VARCHAR2(20)
    );
    
    --customer 자료 추가
    INSERT INTO customer VALUES (1, '박지성', '영국 맨체스터', '000-5000-0001');
    INSERT INTO customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');
    INSERT INTO customer VALUES (3, '안산', '대한민국 광주광역시', '000-7000-0001');
    INSERT INTO customer VALUES (4, '류현진', '미국 토론토', '');
    INSERT INTO customer VALUES (5, '손흥민', '영국 토트넘', '000-8000-0001');
    INSERT INTO customer VALUES (6, '김하늘', '대한민국 토트넘', '000-9000-0002');
    INSERT INTO cus mer VALUES (7, '박하늘', '대한민국 토트넘', '000-8000-0003');
    

DELETE FROM customer;

SELECT * FROM customer;

--전화번호 없는 사람 검색
SELECT *
FROM customer
WHERE phone IS NULL;

--주소가 대한민국인 고객을 검색하시오
SELECT *
FROM customer
WHERE address LIKE '대한민국%';

--고객을 이름순으로 정렬하시오(오름차순[ASC],내림차순[DESC])
SELECT *
FROM customer
ORDER BY name ASC;

    
    
    