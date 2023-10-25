USE employees;
# Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.
SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER by first_name, last_name  ;


# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER BY first_name , last_name ;


# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name IN('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name ;

# Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no;

# Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no DESC;


# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name,' ', last_name)
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';


#     Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;
#     Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
    AND year (hire_date) BETWEEN 1990 AND 1999;
ORDER BY hire_date;

#     Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year (hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date DESC;

#     For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT DATEDIFF(now(),hire_date)
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year (hire_date) BETWEEN 1990 AND 1999
    ORDER By hire_date DESC;

