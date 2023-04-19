--bookmall ���� ���̺�
SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

--���� �ֹ��� ������ �� �Ǹž�
SELECT SUM(saleprice) ���Ǹž�
FROM orders;

--����,������ ���Ǹž� ���
SELECT custid,
        bookid,
    sum(saleprice) ���Ǹž�
FROM orders
GROUP BY custid, bookid;

--���� ���Ǹž� ���, �Ұ�,�Ѱ� ���ϱ�
--ROLLUP(), CUBE()
SELECT custid,bookid,
    sum(saleprice) ���Ǹž�
FROM orders
GROUP BY ROLLUP(custid,bookid);

--CUBE(): �μ���, ������ �Ұ� �� �Ѱ�
SELECT custid,bookid,
    sum(saleprice) ���Ǹž�
FROM orders
GROUP BY CUBE(custid,bookid)
ORDER BY custid;

-- GROUPING SETS()
SELECT custid,bookid,
    sum(saleprice) ���Ǹž�
FROM orders
GROUP BY GROUPING SETS(custid,bookid)
ORDER BY custid, bookid;


