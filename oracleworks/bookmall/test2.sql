SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

--���ǻ簡 '�½�����' �Ǵ� '���ѹ̵��'�� ������ �˻��Ͻÿ�
SELECT * FROM book
WHERE publisher = '�½�����' OR publisher = '���ѹ̵��';
--���ǻ簡 '�½�����'�Ǵ�'���ѹ̵��'�� �ƴ� ������ �˻��Ͻÿ�
SELECT * FROM book
WHERE publisher NOT IN ('�½�����','���ѹ̵��');

--�����̸��� '�౸'�� ���Ե� ���ǻ縦 �˻��Ͻþ�
SELECT * FROM book
WHERE bookname LIKE '%�౸%';

--'�౸'�� ���� ���� �� ������ 20000�� �̻��� ������ �˻��Ͻÿ�
SELECT * FROM book
WHERE bookname LIKE '%�౸%' AND price >= 20000;

--������ ���ݼ����� �˻��ϰ�, ������ ������ �̸������� �˻��Ͻÿ�
SELECT * FROM book
ORDER BY price DESC, bookname;

-- �ڷ���� (11,'ȥ�ڰ����ϴ��ڹ�','�Ѻ��̵��',1300
INSERT INTO book VALUES(11,'ȥ�� �����ϴ� �ڹ�','�Ѻ��̵��',24000);

--bookname�� 'ȥ�ڰ����ϴ� ���̽����� �����Ͻÿ�.
UPDATE book SET bookname = 'ȥ�� �����ϴ� ���̽�'
WHERE bookid = 11;