-- GROUP BY�� ROLLUP(), CUBE()
-- �μ����̺�(�μ���ȣ, �����̸�, �޿�)
CREATE TABLE department(
    dept_no VARCHAR2(3),
    job_nm VARCHAR2(30),
    salery NUMBER(10)
);

--�ڷ����
INSERT INTO department VALUES ('100', '���ǻ�', 3300000);
INSERT INTO department VALUES ('100', '������', 4300000);
INSERT INTO department VALUES ('200', '���ǻ�', 3300000);
INSERT INTO department VALUES ('200', '�����ͺм���', 4000000);
INSERT INTO department VALUES ('300', '������', 6000000);

SELECT * FROM department;

--�μ��� �޿� �Ѱ� ���ϱ�
SELECT dept_no,
    SUM(salery)
FROM department
GROUP BY dept_no;

--�μ��� �Ұ�, �Ѱ�
SELECT dept_no, job_nm,
    SUM(salery)
FROM department
GROUP BY ROLLUP(dept_no,job_nm)
ORDER BY dept_no;

--�μ���, ������ �Ұ�, �Ѱ� : CUBE()
SELECT dept_no, job_nm,
    SUM(salery)
FROM department
GROUP BY CUBE(dept_no,job_nm)
ORDER BY dept_no;

--�μ���, ������ �Ұ� : GROUPING SETS()
SELECT dept_no, job_nm,
    SUM(salery)
FROM department
GROUP BY GROUPING SETS(dept_no,job_nm)
ORDER BY dept_no;


 