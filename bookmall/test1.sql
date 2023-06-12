SELECT * FROM book;

-- bookid가 11인 도서 삭제
delete from book where bookid=11;

-- 서브쿼리(쿼리 중첩)
-- 책의 총수량을 구하시오
SELECT COUNT(*) 총수량 FROM book;

--도서중 가장 높은 가격을 찾으시오
SELECT MAX(price) 최고가격 FROM book;

--가장 비싼 도서의 이름을 검색하시오
SELECT bookname, price
From book
WHERE price = (SELECT MAX(price) 최고가격 FROM book);

-- 고객과 고객의 주문에 관한 데이터를 모두 검색하시오
SELECT * FROM customer;
SELECT * FROM orders;


SELECT *
FROM customer cus, orders ord
WHERE cus.custid = ord.custid; 

-- 김연아 고객의 총 주문가격을 검색하시오
SELECT cus.name, SUM(saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
HAVING cus.name='김연아';