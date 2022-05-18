mysql;
USE COMPANY1;
-- Q1) List all Employees whose salary is between 1,000 AND 2,000. Show the Employee Name, Department and Salary
SELECT EMP.ENAME,DEPT.DNAME,EMP.DEPTNO,EMP.SAL FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND SAL BETWEEN 1000 AND 2000
ORDER BY SAL ASC;
-- Q2) Count the number of people in department 30 who receive a salary and the number of people who receive a commission
SELECT DEPTNO,COUNT(CASE WHEN SAL > 0 THEN 1 END) AS PEOPLE_WHO_RECEIEVE_SALARY,
COUNT(CASE WHEN COMM > 0 THEN 1 END) AS PEOPLE_WHO_RECEIEVE_COMMISSION
FROM EMP
WHERE DEPTNO = 30
GROUP BY DEPTNO;
-- Q3) Find the name and salary of employees in Dallas
SELECT EMP.ENAME,EMP.SAL,DEPT.LOC FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND EMP.DEPTNO = 20
ORDER BY SAL ASC;
-- Q4) List all departments that do not have any employees
SELECT * FROM DEPT THEDEP
WHERE THEDEP.DEPTNO NOT IN(SELECT DEPTNO FROM EMP);
-- Q5) List the department number and average salary of each department
SELECT DEPTNO,AVG(SAL) as AVERAGE_SALARY
FROM EMP
GROUP BY DEPTNO;
-- End of Questions