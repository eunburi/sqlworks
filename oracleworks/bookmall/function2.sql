--function
--NULL�� ó���ϱ�

SELECT * 
FROM customer;
WHERE PHONE IS NULL;

--NVL(Į���̸�,Ư����) : Į���̸� nULL�� ���� Ư������ ���,null�� �ƴϸ� ī���� ���
SELECT custid, name, adress, NVL(Phone, '010-1234-5678')
FROM customer;



CREATE TABLE K1(
    ID VARCHAR2(3),
    CRT NUMBER(2)
);

INSERT INTO K1 VALUES('��',5);
INSERT INTO K1 VALUES('��', NULL);
INSERT INTO K1 VALUES('��',5);
INSERT INTO K1 VALUES('��', NULL);
INSERT INTO K1 VALUES('��',10);

SELECT * FROM K1;

delete K1;

-- ��ü���� ,�հ�,���,�ּҰ�

SELECT COUNT(*)FROM K1; --5��

--NULL�� 0���� �ٲ�
SELECT COUNT(NVL(CNT,0)) COUNT FROM K1; --5

SELECT SUM(NVL(CNT, 0))/4 SUM FROM K1; --5

SELECT AVG(NVL(CNT, 0)) AVERAGE FROM K1; --4

SELECT MIN(NVL(CNT,5)) AVERAGE FROM K1; --5

--RANK()�Լ�

SELECT ename,
        sal,
        RANK() OVER(ORDER BY sal DESC) �޿�_RANK,
        DENSE_RANK() OVER(ORDER BY sal DESC) �޿�_DENSE_RANK
FROM employee;








