/*
What ? Virtual full/partial copy of the Table

Why ?

Giving a name to Complex Queries and Reuse.
Security - If we dont want to expose few data from the table, we can avoid those while creating the views
Simpliying maintainence - If we added new column, updating the definition of the view is enough, instead
							of updating the query used in different places.
*/


use bookstore;


INSERT INTO books(author, bookname) VALUES("logesh", "sample");

/*
Creating View on Books Table
*/
CREATE VIEW books_view AS SELECT * FROM books;

/*
Is it possible to create VIEW on DML queries ?   No, it is not-possible!!!

CREATE VIEW view_name AS INSERT .... [This is not possible]
*/


/*
We can do DML operations on our views which was created already. This will affect the original table as well.
*/
INSERT INTO books_view(author, bookname) VALUES("Kamalesh", "Sample_1");

SELECT author FROM books_view;

SELECT * FROM books;

DROP VIEW books_view;


####################################
CREATE TABLE employees(id int auto_increment primary key, employee_name varchar(100), age int, years_of_experience int, 
salary long);

SELECT * FROM employees;

INSERT INTO employees(employee_name, age, years_of_experience, salary) VALUES("Logesh", 22, 3, 1000), ("Vasanth", 20, 1, 343434);

## creating view on Selective Columns
CREATE VIEW name_age_view AS SELECT employee_name, age FROM employees;

SELECT * FROM name_age_view;

## Now name_age_view has only employee_name and age column. So, queries can be only made on this alone
### Im trying to insert new data.
INSERT INTO name_age_view VALUES("Kamalesh", 18);

## New employee Kamalesh will be updated in both the views and root table. But, years_of_experience, salary will be NULL.
SELECT * FROM employees;

/*
VICE VERSA Property:

Update/Insert on VIEW -> Reflects in ROOT Table
Update/Insert on ROOT Table -> Reflects in VIEW as well. 
*/

INSERT INTO employees(employee_name, age, years_of_experience, salary) VALUES("Karthick", 23, 4, 3434343434);

SELECT * FROM name_age_view;  ## Output includes Karthick as well.


/*
Conditions for Updatable Views:

1.The View is based on a single table.
2.The View does not use DISTINCT, GROUP BY, HAVING, UNION, UNION ALL, or any non-updatable constructs.
3.The View does not contain any subqueries in the SELECT clause.
4.The View selects all required columns, including those with NOT NULL constraints.
5.The View does not use aggregate functions (e.g., SUM, AVG).
6. You cannot modify the results of a JOIN directly, unless it's a specific updatable join.

If these conditions are met, you can update, insert, or delete rows via the View.
*/