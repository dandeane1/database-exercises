# <------------------JOIN EXAMPLE DB------------------------>

# Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson.

mysql> CREATE DATABASE IF NOT EXISTS join_test_db;
Query OK, 1 row affected (0.00 sec)

mysql> SHOW DATABASES:
+--------------------+
| Database           |
+--------------------+
| codeup_test2_db    |
| codeup_test_db     |
| employees          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+


mysql> CREATE TABLE roles (
    ->   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ->   name VARCHAR(100) NOT NULL,
    ->   PRIMARY KEY (id)
    -> );

mysql> CREATE TABLE users (
    ->   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ->   name VARCHAR(100) NOT NULL,
    ->   email VARCHAR(100) NOT NULL,
    ->   role_id INT UNSIGNED DEFAULT NULL,
    ->   PRIMARY KEY (id),
    ->   FOREIGN KEY (role_id) REFERENCES roles (id)
    -> );

mysql> INSERT INTO roles (name) VALUES ('admin');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO roles (name) VALUES ('author');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO roles (name) VALUES ('reviewer');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO roles (name) VALUES ('commenter');
Query OK, 1 row affected (0.00 sec)


mysql> INSERT INTO users (name, email, role_id) VALUES
    -> ('bob', 'bob@example.com', 1),
    -> ('joe', 'joe@example.com', 2),
    -> ('sally', 'sally@example.com', 3),
    -> ('adam', 'adam@example.com', 3),
    -> ('jane', 'jane@example.com', null),
    -> ('mike', 'mike@example.com', null);
Query OK, 6 rows affected (0.00 sec)
Records: 6  Duplicates: 0  Warnings: 0


# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
    mysql> INSERT INTO users (name, email, role_id) VALUES
    -> ('mike', 'mikemail@stuff.com', 2),
    -> ('Joe', 'joemail@stuff.com', 2),
    -> ('beth', 'bethmail@stuff.com', 2),
    -> ('john', 'johnmail@stuff.com',null);
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

# Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

1. mysql> SELECT * FROM users JOIN roles ON users.role_id = roles.id;
+----+-------+--------------------+---------+----+----------+
| id | name  | email              | role_id | id | name     |
+----+-------+--------------------+---------+----+----------+
|  1 | bob   | bob@example.com    |       1 |  1 | admin    |
|  9 | beth  | bethmail@stuff.com |       1 |  1 | admin    |
| 10 | bob   | bob@example.com    |       1 |  1 | admin    |
|  2 | joe   | joe@example.com    |       2 |  2 | author   |
|  7 | mike  | mikemail@stuff.com |       2 |  2 | author   |
| 11 | joe   | joe@example.com    |       2 |  2 | author   |
| 16 | mike  | mikemail@stuff.com |       2 |  2 | author   |
| 17 | Joe   | joemail@stuff.com  |       2 |  2 | author   |
| 18 | beth  | bethmail@stuff.com |       2 |  2 | author   |
|  3 | sally | sally@example.com  |       3 |  3 | reviewer |
|  4 | adam  | adam@example.com   |       3 |  3 | reviewer |
|  8 | Joe   | joemail@stuff.com  |       3 |  3 | reviewer |
| 12 | sally | sally@example.com  |       3 |  3 | reviewer |
| 13 | adam  | adam@example.com   |       3 |  3 | reviewer |
+----+-------+--------------------+---------+----+----------+

mysql> SELECT * FROM users LEFT JOIN roles ON users.role_id = roles.id;
+----+-------+--------------------+---------+------+----------+
| id | name  | email              | role_id | id   | name     |
+----+-------+--------------------+---------+------+----------+
|  1 | bob   | bob@example.com    |       1 |    1 | admin    |
|  2 | joe   | joe@example.com    |       2 |    2 | author   |
|  3 | sally | sally@example.com  |       3 |    3 | reviewer |
|  4 | adam  | adam@example.com   |       3 |    3 | reviewer |
|  5 | jane  | jane@example.com   |    NULL | NULL | NULL     |
|  6 | mike  | mike@example.com   |    NULL | NULL | NULL     |
|  7 | mike  | mikemail@stuff.com |       2 |    2 | author   |
|  8 | Joe   | joemail@stuff.com  |       3 |    3 | reviewer |
|  9 | beth  | bethmail@stuff.com |       1 |    1 | admin    |
| 10 | bob   | bob@example.com    |       1 |    1 | admin    |
| 11 | joe   | joe@example.com    |       2 |    2 | author   |
| 12 | sally | sally@example.com  |       3 |    3 | reviewer |
| 13 | adam  | adam@example.com   |       3 |    3 | reviewer |
| 14 | jane  | jane@example.com   |    NULL | NULL | NULL     |
| 15 | mike  | mike@example.com   |    NULL | NULL | NULL     |
| 16 | mike  | mikemail@stuff.com |       2 |    2 | author   |
| 17 | Joe   | joemail@stuff.com  |       2 |    2 | author   |
| 18 | beth  | bethmail@stuff.com |       2 |    2 | author   |
| 19 | john  | johnmail@stuff.com |    NULL | NULL | NULL     |
+----+-------+--------------------+---------+------+----------+
19 rows in set (0.00 sec)

mysql>  SELECT * FROM users RIGHT JOIN roles ON users.role_id = roles.id;
+------+-------+--------------------+---------+----+-----------+
| id   | name  | email              | role_id | id | name      |
+------+-------+--------------------+---------+----+-----------+
|    1 | bob   | bob@example.com    |       1 |  1 | admin     |
|    9 | beth  | bethmail@stuff.com |       1 |  1 | admin     |
|   10 | bob   | bob@example.com    |       1 |  1 | admin     |
|    2 | joe   | joe@example.com    |       2 |  2 | author    |
|    7 | mike  | mikemail@stuff.com |       2 |  2 | author    |
|   11 | joe   | joe@example.com    |       2 |  2 | author    |
|   16 | mike  | mikemail@stuff.com |       2 |  2 | author    |
|   17 | Joe   | joemail@stuff.com  |       2 |  2 | author    |
|   18 | beth  | bethmail@stuff.com |       2 |  2 | author    |
|    3 | sally | sally@example.com  |       3 |  3 | reviewer  |
|    4 | adam  | adam@example.com   |       3 |  3 | reviewer  |
|    8 | Joe   | joemail@stuff.com  |       3 |  3 | reviewer  |
|   12 | sally | sally@example.com  |       3 |  3 | reviewer  |
|   13 | adam  | adam@example.com   |       3 |  3 | reviewer  |
| NULL | NULL  | NULL               |    NULL |  4 | commenter |
| NULL | NULL  | NULL               |    NULL |  5 | admin     |
| NULL | NULL  | NULL               |    NULL |  6 | author    |
| NULL | NULL  | NULL               |    NULL |  7 | reviewer  |
| NULL | NULL  | NULL               |    NULL |  8 | commenter |
+------+-------+--------------------+---------+----+-----------+
19 rows in set (0.00 sec)

# Repeat the last join but using the USING syntax.
#     Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query.

mysql> SELECT roles.name, COUNT(users.role_id) FROM users JOIN roles ON users.role_id = roles.id GROUP BY roles.name;
+----------+----------------------+
| name     | COUNT(users.role_id) |
+----------+----------------------+
| admin    |                    3 |
| author   |                    6 |
| reviewer |                    5 |
+----------+----------------------+
3 rows in set (0.00 sec)

# <---------Employees Database------->
#               Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name AS `Department Name`, CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY `Department Name`;
              

+--------------------+--------------------+
| Department Name    | Department Manager |
+--------------------+--------------------+
| Customer Service   | Yuchang Weedman    |
| Development        | Leon DasSarma      |
| Finance            | Isamu Legleitner   |
| Human Resources    | Karsten Sigstam    |
| Marketing          | Vishwani Minakawa  |
| Production         | Oscar Ghazalie     |
| Quality Management | Dung Pesch         |
| Research           | Hilary Kambil      |
| Sales              | Hauke Zhang        |
+--------------------+--------------------+

#  Find the name of all departments currently managed by women.

SELECT departments.dept_name AS `Department Name`, CONCAT(employees.first_name, ' ', employees.last_name) AS `Department Manager`
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F'
ORDER BY `Department Name`;
+------------------+--------------------+
| Department Name  | Department Manager |
+------------------+--------------------+
| Development      | Leon DasSarma      |
| Finance          | Isamu Legleitner   |
| Human Resources  | Karsten Sigstam    |
| Research         | Hilary Kambil      |
+------------------+--------------------+

# Find the current titles of employees currently working in the Customer Service department.
mysql> SELECT titles.title, COUNT(titles.emp_no) AS Total
           -> FROM titles
           -> INNER JOIN dept_emp_latest_date ON titles.emp_no = dept_emp_latest_date.emp_no
           -> AND titles.from_date = dept_emp_latest_date.from_date
           -> INNER JOIN dept_emp ON dept_emp_latest_date.emp_no = dept_emp.emp_no
           -> INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
           -> WHERE departments.dept_name = 'Customer Service'
           -> AND titles.to_date = '9999-01-01'
           -> AND dept_emp_latest_date.to_date = '9999-01-01'
           -> GROUP BY titles.title;
+-----------------+-------+
| title           | Total |
+-----------------+-------+
| Staff           |  2862 |<-----not correct---------->
| Senior Staff    |  2475 |
| Senior Engineer |     1 |
+-----------------+-------+

# should have gotten +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+
