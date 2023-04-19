
SELECT * FROM emp;

--NVL(인수1,인수2,) : 인수1이 NULL이 아닌면 인수1이 출력,
--NULL이면 인수2가 출력

--급여가 없는 사원을 검색하시오
SELECT *FROM emp
WHERE sal Is NULL;

SELECT ename,
        NVL(sal, 0)
FROM emp;

--성별자료 변경하기
UPDATE emp SET gender = '여자'
WHERE empno = 100 OR empno = 101;

UPDATE emp SET gender = '남자'
WHERE empno = 102 OR empno = 103;

--DECODE(칼럼명,조건,참,거짓) 함수 -IF함수와 유사함
--Male, Female
SELECT ename,
        sal,
    DECODE(gender, '남자', 'M','F') gender
FROM emp;

--CASE WHEN
/*
    CASE
        WHEN 조건 THEN 결과1
        WHEN 조건 THEN 결과2
        
    END    

*/
SELECT ename,
    sal,
    case
        WHEN gender='남자' THEN 'M'
        ELSE 'F'
    END gender
FROM emp;    

--급여가 250만원 이상이면 직급을 '대리'로 표시하고,
--급여가 350이상이면 '과장'으로 표시하시오.
--나머지는 사원

SELECT ename,
    CASE
        WHEN SAL >= 3500000 THEN '과장'
        WHEN SAL >= 2500000 THEN '대리'
        ELSE '사원'
    END 급여기준
FROM emp;    

--DECODE()로 작성
/*SELECT  ename,
        sal,
-      DECODE(sal,3500000,'과장', 2500000,'대리','사원')급여기준
FROM emp;*/


