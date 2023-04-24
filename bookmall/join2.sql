--bookmall

SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

-- JOIN(�������� -EQUI JOIN) - ����� �κ� (������,AND)
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;


-- ǥ�� SQL -Inner join on - 
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name;
    
--3���� ���̺� ����
SELECT cus.name, bk.bookname, ord.saleprice
FROM customer cus, orders ord, book bk
WHERE cus.custid = ord.custid
 AND bk.bookid = ord.bookid;

--������ ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, bk.bookname, ord.saleprice, ord.orderdate
FROM customer cus, orders ord, book bk
WHERE cus.custid = ord.custid
    and bk.bookid = ord.bookid
    AND cus.name = '������';
    
    
-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�(GROUP BY �� SUM() �Լ����)
SELECT cus.name, SUM(ord.saleprice) AS �Ǹűݾ�
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

-- �Ȼ� ���� �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�(GROUP BY �� SUM() �Լ����)
SELECT cus.name, SUM(saleprice) �Ǹűݾ�
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
HAVING cus.name = '�Ȼ�';


--������ ���� �ֹ��� ������ �̸��� �ǸŰ��� �ֹ����� ���Ͻÿ�
SELECT cus.name, bk.bookname, ord.saleprice, ord.orderdate
FROM customer cus, orders ord, book bk
WHERE cus.custid = ord.custid
    AND bk.bookid = ord.bookid
    AND cus.name = '������';

--�ܺ� ����('+' ������ ���) : JOIN ���ǿ� �����ϴ� ����Ÿ�� �ƴϾ �˻��ϴ� ���
--WHERE ������ ��� ���� ��µǴ� ���̺��� �ݴ��� ���̺� '+'�� ����
--�ֹ��� ���� ���� �����Ͽ� ���� �̸��� �ֹ��� ������ �ǸŰ����� ã���ÿ�
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+);

--ǥ�� SQL - LEFT OUTER JOIN ON -
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name;

  

