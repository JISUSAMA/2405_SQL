--scott / emp
--1. 부서번호가 10번인 부서의 사람 중 사원번호, 이름, 월급을 출력하라
select *
from emp;

select empno, ename,sal
from emp
where deptno = 10; 

--2. 사원번호가 7369인 사람 중 이름, 입사일, 부서번호를 출력하라.
select  ename,hiredate,deptno
from emp
where empno = 7369;

--3. 이름이 ALLEN인 사람의 모든 정보를 출력하라.
SELECT *
from emp
where ename = 'ALLEN';
--4. 입사일이 83/01/12인 사원의 이름, 부서번호, 월급을 출력하라.
SELECT ename, deptno, sal
from emp
where hiredate = '83/01/12';

--5. 직업이 MANAGER가 아닌 사람의 모든 정보를 출력하라.
SELECT *
from emp
where job not in 'MANAGER';

--6. 입사일이 81/04/02 이후에 입사한 사원의 정보를 출력하라.
SELECT *
from emp
where hiredate > '81/04/02';

--7. 급여가 $800 이상인 사람의 이름, 급여, 부서번호를 출력하라.
SELECT ename, sal, deptno
from emp
where sal >= 800;

--8. 부서번호가 20번 이상인 사원의 모든 정보를 출력하라.
SELECT *
from emp
where deptno >=20;

--9. 이름이 K로 시작하는 사람보다 높은 이름을 가진 사람의 모든 정보를 출력하라.
SELECT *
from emp
where ename > 'K%'
order by ename;

--10. 사원이름이  S로 끝나는 사원의 모든 데이터 출력
SELECT *
from emp
where ename like '%S';

--11. 30번 부서에서 근무하는 사원 중  job이  SALESMAN   인
--  사원의 사원번호, 이름, 직책, 급여, 부서 번호 출력
SELECT empno, ename, job, sal, deptno
from emp
where deptno = 30
and job = 'SALESMAN';

--12. 20번, 30번 부서에 근무하는 사원 중 
--급여가 2000초과인 사원의 사원번호, 이름, 급여, 부서번호 출력
SELECT empno, ename, sal, deptno
from emp
where sal > 2000 and deptno in (20,30);

--13. NOT BETWEEN  a AND b  연산자를 쓰지 않고 
--급여가 2000 이상 3000 이하 범위 이외의 값을 가진 데이터 조회
SELECT *
from emp
where sal >=2000 and sal <=3000;

--14. 사원 이름 에 E가 포함 되어 있는 30번 부서의 사원 중 급여가 1000~2000 사이가 아닌 
--사원이름, 사원 번호, 급여, 부서 번호를 출력
SELECT ename, empno, sal, deptno
from emp
where ename like '%E%' 
and deptno =30
and sal NOT BETWEEN 1000 AND 2000;

--15.추가 수당이 존재하지 않고 상급자가 있고 직급이 MANAGER, CLERK 인 사원 중에서 
--사원이름의 두번째 글자가 L이 아닌 사원의 정보 출력
SELECT *
from emp
where comm is NULL
and mgr is not NULL
and job in ('MANAGER', 'CLERK')
and ename not like('_L%');
