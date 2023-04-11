--��� ���̺�(�μ��� ���踦 ����)
CREATE TABLE emplyee(
    empno NUMBER(3) PRIMARY KEY,        --�����ȣ
    ename VARCHAR2(20) NOT NULL,       --����̸�
    sal NUMBER(10),                     --�޿�
    createdate DATE DEFAULT SYSDATE,      -- �����
    gender VARCHAR2(10),
    deptno VARCHAR2(4),   
    --�ܷ�Ű(FOREIGNKEY)��������
    CONSTRAINT emp_fk FOREIGN KEY(deptno)
    REFERENCES dept (deptno)
    -- ON DELETE CASCADE(�μ��� �����ϸ� �����ϰ� �ִ� ����� ����)
);

--���� ���Ἲ ���� ����(�ܷ�Ű ����)
--1. ����� �Ҽӵ� �μ��� �����Ҷ� '�ڽ� ���ڵ尡 �ִ�'�� �����߻�
--2. �μ���ȣ�� ���� ����ڷḦ �߰��� �� '�θ�Ű�� ����'�� ���� �߻�
INSERT INTO emplyee VALUES (100, '�̰�', 2500000, SYSDATE, '����', '1000');
INSERT INTO emplyee VALUES (101, '�̻�', 2000000, sysdate, '����', '1001');
INSERT INTO emplyee VALUES (102, '�ڴ�', 1500000, sysdate, '����', '1002');
INSERT INTO emplyee VALUES (103, '���ϴ�', 3500000, sysdate, '', '1003');
INSERT INTO emplyee VALUES (104, '�����', 4500000, sysdate, '����', '1000');
INSERT INTO emplyee VALUES (105, '����', 2600000, sysdate, '����', '1000');

--��� �ڷ� �˻�
SELECT * FROM emplyee;

-- ������ �����̸鼭 �޿��� 250���� �̻��� ����� �˻��Ͻÿ�
SELECT * FROM emplyee
WHERE gender = '����'
AND sal >= 2500000;

--�޿��� 200�������� 300���� ������ ����� �˻��Ͻÿ�.
SELECT * FROM emplyee
WHERE sal >= 2000000 
AND sal <= 3000000;

--BETWEEN ~ AND
SELECT * 
FROM emplyee
WHERE sal 
BETWEEN 2000000 AND 3000000;

--���ڿ� �˻� : �Ϻ� ���� ���� LIKE %����%
--���� '��'�� ����� �˻��Ͻÿ�.
SELECT * 
FROM emplyee
WHERE ename LIKE '��%';

--��� �� �ο����� ���Ͻÿ�
SELECT COUNT(*) as �����
FROM emplyee;

--�ߺ����� �μ���ȣ�� �˻��Ͻÿ�
SELECT DISTINCT deptno
FROM emplyee;
