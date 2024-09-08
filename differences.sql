# DDL vs DML
/*
Data Definition Language - Define the Table Structure - CREATE, ALTER, TRUNCATE, DROP.
Data Manipulation Language - Manipulate or Modify the data - INSERT, UPDATE, DELETE
*/

# CHAR vs VARCHAR
/*
CHAR(6) - This stores string with Fixed Length, if we provided less characters remaining spaces will be filled with white spaces,
so len() will be always 6.
VARCHAR(6) - Variable Length
*/

# TEXT vs VARCHAR
/*
TEXT(TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT) 
	- DEFAULT Value is not supported
    - Storage will be as Pointer reference.
VARCHAR 
	- DEFAULT value is supported
    - Stored as it is table
*/

# BLOB vs TEXT
/*
BLOB - Binary Large Object - To storage image/video(Unstructured Data)
TEXT - To store the Text
*/


# DATETIME vs TIMESTAMP
/*
DATETIME 	- It will just store the Date and Time provided by the developer as it it without considering the TimeZone.
TIMESTAMP 	- It will store the given timestamp in UTC format first. While retrieving it will give us time as per server TimeZone.
*/

# TRUNCATE vs DELETE
/*
TRUNCATE	- Table level
DELETE 		- Row level
*/

# NUMERIC vs DECIMAL vs INT 
/*
NUMERIC/ DECIMAL - Both are identical - NUMERIC(DIGITS, PRECISION)/ DECIMAL(DIGITS, PRECISION)
INT 	- (TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT) - For Whole Numbers (Positive and Negative)
*/

CREATE TABLE products(product_id NUMERIC, price DECIMAL(10, 2), stock INT(3), revenue DOUBLE);
