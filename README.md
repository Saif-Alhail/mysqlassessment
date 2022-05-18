# MYSQL Assessment Part 3
Assessment.sql file contains the solutions to the questions for the MYSQL assessment, organized by Commented Lines, starting from Q1 to Q5

# Running the file
Open up terminal and --> mysql
--> source assessment.sql

All results will be shown in one file for all questions

# Explanation for Questions

# Q1 Explained
For the first question, We require a method in order to use two tables separately and combine the results with one Query;
{SELECT EMP.ENAME} --> This statement selects the EMP table and chooses the ENAME column (Delft Stack, 2020) Then; 
{SELECT EMP.ENAME,DEPT.DNAME,EMP.DEPTNO,EMP.SAL} --> is used and this chooses all the required columns (leemes, 2012) in order to answer the question,
Notice that different tables are chosen in the same statement in order to pick the columns (Delft Stack, 2020).
Then {FROM EMP,DEPT} --> This implies which table to look from.
{WHERE EMP.DEPTNO = DEPT.DEPTNO} --> This suggests that both tables that contain DEPTNO should be equal.
{AND SAL BETWEEN 1000 AND 2000} --> This is a condition added which shows the values between 1000 and 2000 as required in the question.
{ORDER BY SAL ASC;} --> is a method to order by the salary starting from lowest first. (W3 Schools, 1999)

# Q2 Explained
For the second question, a method was used to count the occurences of a particular event;
{SELECT DEPTNO,COUNT} --> The method COUNT here will count how many times the required object will appear in DEPTNO;
{(CASE WHEN SAL > 0 THEN 1 END)} --> The method CASE is used to present a condition for example, when SAL is greater than 0 meaning that salary
wont be empty or 0, THEN 1 is the else condition. This conditions ensures that only valid salaries will be chosen.
{AS PEOPLE_WHO_RECEIEVE_SALARY} --> The as creates an alias, (MYSQLTUTORIAL, 2014) a new column which will be used in this single query only and will not alter the database;
this method is used to present the values of the counted items to showcase how many are present.
{GROUP BY DEPTNO;} --> is the method that is used to group the columns by DEPTNO.

# Q3 Explained
In the third questions, A similar method to the first question was used, with some changes to the logic;
{SELECT EMP.ENAME,EMP.SAL,DEPT.LOC FROM EMP,DEPT} --> Is a the method in order to select different columns from separate tables.
{AND EMP.DEPTNO = 20} --> is the condition used to imply that only DEPTNO 20 will be used which is only Dallas, which was the requirement.
{ORDER BY SAL ASC;} --> is the method of ordering used which implies it should start from the lowest salary first.

# Q4 Explained
In Question four the * selection method was used to select all values;
{SELECT * FROM DEPT THEDEP} --> implies everything should be selected, and THEDEP is the created variable to hold the temporary values that will be used (Classroom, 2014).
{WHERE THEDEP.DEPTNO NOT IN(SELECT DEPTNO FROM EMP);} --> The method not in here is used to select values that are not within the EMP table (MYSQL, 1995).

# Q5 Explained
In Question 5 the method AVG should be used in order to calculate the average of all values within the column
{SELECT DEPTNO,AVG(SAL) as AVERAGE_SALARY} --> This method selects the SAL column and retrieves the average of that column (Singh, 2020); Which works for all departments.
Afterwards using the alias AVERAGE_SALARY this represents the new column that will be created to show the average salary for each department.




# References
W3 Schools. (1999) MySQL ORDER BY Keyword. Available from:
https://www.w3schools.com/mysql/mysql_orderby.asp#:~:text=The%20MySQL%20ORDER%20BY%20Keyword,order%2C%20use%20the%20DESC%20keyword. [Accessed 18 May 2022].
Delft Stack. (2020) SELECT From Multiple Tables in MySQL. Available from:
https://www.delftstack.com/howto/mysql/mysql-select-from-multiple-tables/. [Accessed 17 May 2022].
leemes. (2012) SELECT * FROM multiple tables. MySQL. Available from:
https://stackoverflow.com/questions/12890071/select-from-multiple-tables-mysql. [Accessed 17 May 2022].
MYSQLTUTORIAL. (2014) MySQL alias for columns. Available from:
https://www.mysqltutorial.org/mysql-alias/ [Accessed 17 May 2022].
Classroom. (2014) MySQL - SELECT FROM Table. Available from:
https://dyclassroom.com/mysql/mysql-select-from-table#:~:text=We%20use%20the%20SELECT%20*%20FROM,we%20get%20the%20following%20output. [Accessed 16 May 2022]
MYSQL. (1995) A must-know about NOT IN in SQL - more antijoin optimization. Available from:
https://dev.mysql.com/blog-archive/a-must-know-about-not-in-in-sql-more-antijoin-optimization/ [Accessed 16 May 2022].
N, Singh. (2020) AVG() Function in MySQL. Available from:
https://www.geeksforgeeks.org/avg-function-in-mysql/ [Accessed 17 May 2022].