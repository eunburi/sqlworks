-- �μ� ���̺��� ��� ���̺� ����(JOIN)
-- JOIN - 2�� �̻��� ���̺��� �����Ͽ� ����ϴ� ���

SELECT * FROM dept;
SELECT * FROM emplyee;

--�����ȣ, �����, �μ���ȣ, �μ����� ����Ͻÿ�
SELECT emp.empno, emp.ename, emp.deptno, emp.sal, dep.deptname
FROM emplyee emp, dept dep
WHERE emp.deptno = dep.deptno;