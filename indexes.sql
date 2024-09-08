/*
For better performance in Data retrieval.

Indexes will have the mapping with Physical address of the each row for faster data retrieval.

Without indexes SQL server has to start from the first row.

It is like a Look up table. Like INDEX page of the Book.
*/

/*
Adding Primary Key to the table is also kind of Indexing(Adding Index).
Using the PRIMARY KEYS in WHERE CLAUSE will enhance the performance.
*/

use bookstore;

SELECT * FROM books;

SELECT author FROM books;

CREATE INDEX author_index ON books (author);

SELECT * FROM author_index;

/*
Once an index is created, you don’t need to do anything explicitly to "use" it in queries. 
The database engine will automatically use the index whenever possible in queries like SELECT, JOIN, ORDER BY, and GROUP BY.
*/
