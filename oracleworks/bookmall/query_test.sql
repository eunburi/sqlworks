--��������
--1.��� ���� �̸��� �ּҸ� �˻��Ͻÿ�
SELECT name, adress
FROM customer;

--2.��� ���� �̸�, �ּ�, ��ȭ��ȣ�� �˻��Ͻÿ�.
SELECT name adress
FROM customer;

--3�ּҰ� ���������� ���� �˻��Ͻÿ�
SELECT * 
FROM customer
WHERE address LIKE '����%';

--���� �̸��� '�迬��' Ȥ�� '�Ȼ�'�� ���� �˻��Ͻÿ�
SELECT * 
FROM customer
WHERE name in('�迬��','�Ȼ�');

--5. �ּҰ� '���ѹα�'�� �ƴ� ���� �˻��Ͻÿ�
SELECT * 
FROM customer
WHERE address not LIKE '���ѹα�';

--6��ȭ��ȣ�� ���� ���� �˻��Ͻÿ�
SELECT * 
FROM customer
WHERE phone Is null;

--7���� �̸������� �����Ͻÿ�
SELECT * 
FROM customer
ORDER BY name ;
--8���� �� �ο����� ���Ͻÿ�
SELECT count(*) ���ο��� fROM customer;
