SELECT * FROM book;

-- bookid�� 11�� ���� ����
delete from book where bookid=11;

-- ��������(���� ��ø)
-- å�� �Ѽ����� ���Ͻÿ�
SELECT COUNT(*) �Ѽ��� FROM book;

--������ ���� ���� ������ ã���ÿ�
SELECT MAX(price) �ְ��� FROM book;

--���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname, price
From book
WHERE price = (SELECT MAX(price) �ְ��� FROM book);

-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT * FROM customer;
SELECT * FROM orders;


SELECT *
FROM customer cus, orders ord
WHERE cus.custid = ord.custid; 

-- �迬�� ���� �� �ֹ������� �˻��Ͻÿ�
SELECT cus.name, SUM(saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
HAVING cus.name='�迬��';