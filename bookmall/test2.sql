SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

--출판사가 '굿스포츠' 또는 '대한미디어'인 도서를 검색하시오
SELECT * FROM book
WHERE publisher = '굿스포츠' OR publisher = '대한미디어';
--출판사가 '굿스포츠'또는'대한미디어'가 아닌 도서를 검색하시오
SELECT * FROM book
WHERE publisher NOT IN ('굿스포츠','대한미디어');

--도서이름에 '축구'가 포함된 출판사를 검색하시어
SELECT * FROM book
WHERE bookname LIKE '%축구%';

--'축구'에 관한 도서 중 가격이 20000원 이상인 도서를 검색하시오
SELECT * FROM book
WHERE bookname LIKE '%축구%' AND price >= 20000;

--도서를 가격순으로 검색하고, 가격이 같으면 이름순으로 검색하시오
SELECT * FROM book
ORDER BY price DESC, bookname;

-- 자료수가 (11,'혼자공부하는자바','한빛미디어',1300
INSERT INTO book VALUES(11,'혼자 공부하는 자바','한빛미디어',24000);

--bookname을 '혼자공부하는 파이썬으로 변경하시오.
UPDATE book SET bookname = '혼자 공부하는 파이썬'
WHERE bookid = 11;
