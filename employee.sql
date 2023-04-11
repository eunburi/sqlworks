--사원 테이블(부서와 관계를 맺음)
CREATE TABLE emplyee(
    empno NUMBER(3) PRIMARY KEY,        --사원번호
    ename VARCHAR2(20) NOT NULL,       --사원이름
    sal NUMBER(10),                     --급여
    createdate DATE DEFAULT SYSDATE,      -- 등록일
    gender VARCHAR2(10),
    deptno VARCHAR2(4),   
    --외래키(FOREIGNKEY)제약조건
    CONSTRAINT emp_fk FOREIGN KEY(deptno)
    REFERENCES dept (deptno)
    -- ON DELETE CASCADE(부서를 삭제하면 참조하고 있는 사원도 삭제)
);

--참조 무결성 제약 위배(외래키 제약)
--1. 사원이 소속된 부서를 삭제할때 '자식 레코드가 있다'는 오류발생
--2. 부서번호가 없는 사원자료를 추가할 때 '부모키가 없다'는 오류 발생
INSERT INTO emplyee VALUES (100, '이강', 2500000, SYSDATE, '남자', '1000');
INSERT INTO emplyee VALUES (101, '이산', 2000000, sysdate, '여자', '1001');
INSERT INTO emplyee VALUES (102, '박달', 1500000, sysdate, '남자', '1002');
INSERT INTO emplyee VALUES (103, '강하늘', 3500000, sysdate, '', '1003');
INSERT INTO emplyee VALUES (104, '양우주', 4500000, sysdate, '여자', '1000');
INSERT INTO emplyee VALUES (105, '강남', 2600000, sysdate, '남자', '1000');

--사원 자료 검색
SELECT * FROM emplyee;

-- 성별이 남자이면서 급여가 250만원 이상인 사원을 검색하시오
SELECT * FROM emplyee
WHERE gender = '남자'
AND sal >= 2500000;

--급여가 200만원에서 300만원 이하인 사원을 검색하시오.
SELECT * FROM emplyee
WHERE sal >= 2000000 
AND sal <= 3000000;

--BETWEEN ~ AND
SELECT * 
FROM emplyee
WHERE sal 
BETWEEN 2000000 AND 3000000;

--문자열 검색 : 일부 문자 포함 LIKE %문자%
--성이 '이'인 사람을 검색하시오.
SELECT * 
FROM emplyee
WHERE ename LIKE '이%';

--사원 총 인원수를 구하시오
SELECT COUNT(*) as 사원수
FROM emplyee;

--중복없이 부서번호를 검색하시오
SELECT DISTINCT deptno
FROM emplyee;
