--���ѹα��� �����ϴ� ���� �̸��� ������ �ֹ��� ���� �̸� �˻�
--union�� ���
SELECT * FROM customer;

SELECT * 
FROM customer
WHERE address LIKE '%���ѹα�%';

SELECT name
FROM customer
WHERE address LIKE '%���ѹα�%';

--������ �ֹ��� ���� �̸� �˻�

SELECT name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

--���տ���(���ϱ�)
SELECT name
FROM customer
WHERE address LIKE '%���ѹα�%'
UNION 
SELECT name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

--UNION ALL() - �ߺ����
SELECT name
FROM customer
WHERE address LIKE '%���ѹα�%'
UNION ALL
SELECT name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

