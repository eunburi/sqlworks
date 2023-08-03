--연습문제
--1.모든 고객의 이름과 주소를 검색하시오
SELECT name, adress
FROM customer;

--2.모든 고객의 이름, 주소, 전화번호를 검색하시오.
SELECT name adress
FROM customer;

--3주소가 ＇영국’인 고객을 검색하시오
SELECT * 
FROM customer
WHERE address LIKE '영국%';

--고객의 이름이 '김연아' 혹은 '안산'인 고객을 검색하시오
SELECT * 
FROM customer
WHERE name in('김연아','안산');

--5. 주소가 '대한민국'이 아닌 고객을 검색하시오
SELECT * 
FROM customer
WHERE address not LIKE '대한민국';

--6전화번호가 없는 고객을 검색하시오
SELECT * 
FROM customer
WHERE phone Is null;

--7고객을 이름순으로 정렬하시오
SELECT * 
FROM customer
ORDER BY name ;
--8고객의 총 인원수를 구하시오
SELECT count(*) 총인원수 fROM customer;
