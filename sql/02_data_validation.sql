/*
PROJECT: Customer Churn & Retention Analysis
FILE: 02_data_validation.sql

PURPOSE:
Check row counts, unique customer IDs, churn distribution,
sample records, and table structure after import.
*/

USE customer_churn_db;

/* 1. Total rows — expected: 7043 */
SELECT COUNT(*) AS total_rows
FROM customer_churn;

/* 2. Unique customer IDs — expected: 7043 */
SELECT COUNT(DISTINCT customerID) AS unique_customers
FROM customer_churn;

/* 3. Duplicate customer IDs — expected: 0 rows */
SELECT customerID, COUNT(*) AS occurrences
FROM customer_churn
GROUP BY customerID
HAVING COUNT(*) > 1;

/* 4. Churn distribution — expected: Yes 1869, No 5174 */
SELECT
    Churn,
    COUNT(*) AS customer_count
FROM customer_churn
GROUP BY Churn;

/* 5. Inspect a small sample */
SELECT *
FROM customer_churn
LIMIT 10;

/* 6. Confirm column data types */
DESCRIBE customer_churn;
