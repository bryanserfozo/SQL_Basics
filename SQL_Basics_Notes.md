# SQL Overview
What is a Database and what is its purpose?
* A Database is essientially just a collection of data structured into tables
* We've seen this already with CSV files
* A table has rows and columns
	* Rows hold data for an entry
	* Columns hold attributes for entries in the table


| name          | state | population | size |
| ------------- | ------| ---------- | ---- |
| Los Angeles   | CA    | 3,898,747  | 502  |
| New York City | NY    | 8,804,190  | 472  |
| Tampa         | FL    | 384,959    | 176  |
| Austin        | TX    | 1,028,225  | 327  |
| Wichita       | KS    | 397,532    | 167  |

## DBMS vs. RDBMS
DBMS stands for Database Management System
* Used for storage and management of our data in our database

RDBMS stands for Relational Database Management System
* Relational databases store data in table with relations
* These tables can relate to one another in many different ways (1:1, 1:M, M:1, M:M)
* Relational databases is what we'll shift towards over the course of training
* Whole Purpose of any type of database is to persist information

## What is SQL?
SQL stands for Structured Query Language
* It is not a Programming Language
* Used to query databases for information
* Very useful for querying relational databases
* Simple syntax allows for developers to very easily manipulate data
* Sponsored by many different vendors, all functionally do the same thing
	* Oracle
	* PostgreSQL
	* MySQL

## Schema
Schema refers to the general structure of data tables in a database
* When defining Schema you need to consider three main things: name, data type, and constraints
	* Name is just the name of the column, used for identification
	* Data Type is the kind of data that can go in a column
		* SQL has many data types, we've seen several today
		* BOOL(boolean)
		* VARCHAR(n)
		* CHAR(n)
		* INT (integer)
		* NUMERIC
		* View documentation for more: https://www.postgresql.org/docs/9.5/datatype.html
	* Constraints refer to restrictions on data entered, some common ones are
		* PRIMARY KEY
		* NOT NULL
		* UNIQUE
		* COMPOSITE KEY
		* FOREIGN KEY

# Sublanguages
SQL is comprised of 4 or 5 sublanguages depending on who you ask, though for our purposes we
consider say that there are 5

## Data Definition Language (DDL)
* Used for defining database/schema
* Utilized for defining, altering and deleting tables
* Main Syntax includes:
	* CREATE
	* ALTER
	* DROP
	* TRUNCATE

## Data Manipulation Language (DML)
* Used for altering or manipulating data
* Typically referred to as CRUD operations (Create, Read, Update, and Delete)
* Main Syntax includes:
	* INSERT
	* SELECT
	* UPDATE
	* DELETE

## Data Query Language (DQL)
* This is the debated one, it is sometimes considered just part of DML
* DQL is being used anytime you utilize special clauses on a SELECT statment (WHERE/HAVING/GROUP BY/ ORDER BY)
* Main Syntax includes:
	* SELECT
		
## Data Control Language (DCL)
* Used to control security and permissions for our database
* Main Syntax includes:
	* GRANT
	* REVOKE

## Transaction Control Language (TCL)
* Used to manage transactions within the database
* Every DML action we took earlier was a single transaction
* We can group them together, or rollback transactions using TCL
* Main Syntax includes:
	* COMMIT
	* ROLLBACK
	* SAVEPOINT
* Transactions must have specific properties, known as the ACID properties.
	* Atomic meaning all or nothing, either the entire transaction is completed or it isn't
	* Consistency means the schema of the table won't break due to the transaction
	* Isolation means when we group transactions, they operate seperately as if they were isolated
	* Durability means that the data will persist through system crashes

# Aggregate and Scalar Functions
## Aggregate Functions
* Take multiple rows and aggregate or combine them together to get a single value
* Utilized during the SELECT clause and cannot be utilized during a WHERE clause
* We've utilized many aggregate functions today already
	* MAX(column)
	* MIN(column)
	* AVG(column)
	* SUM(column)
	* COUNT(column)
* Using an aggregate function grants access to the HAVING and GROUP BY clauses
	* HAVING is like WHERE only it filters after aggregation
	* GROUP BY defines how our data will be grouped before aggegration, this becomes required if selecting more than one column

## Scalar Functions
* Operates on a single row at a time, can return results for multiple rows
* Can be utilized during both SELECT and WHERE clauses
* We've seen some aggregate functions today, such as:
	* LENGTH(string)
	* LOWER(string)
	* UPPER(string)
	* ABS(num)
	* CEILING(num)
	* FLOOR(num)


