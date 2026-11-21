/*
PROJECT: Customer Churn & Retention Analysis
FILE: 01_setup_and_import.sql

PURPOSE:
- Select the project database.
- Apply the required column data types.
- Import the cleaned CSV ONCE.

IMPORTANT:
- This script assumes the customer_churn table already exists.
- The CSV import APPENDS rows. Do not run the LOAD DATA statement twice
  unless you have intentionally cleared/rebuilt the table.
- local_infile must be enabled in MySQL and in the Workbench connection.
*/

CREATE DATABASE IF NOT EXISTS customer_churn_db;
USE customer_churn_db;

/* Check the table and its current structure before changing anything. */
DESCRIBE customer_churn;

/* Ensure these columns use text types, not numeric/geometry types. */
ALTER TABLE customer_churn
    MODIFY Partner VARCHAR(3),
    MODIFY Dependents VARCHAR(3),
    MODIFY OnlineBackup VARCHAR(30);

/*
OPTIONAL RESET — DESTRUCTIVE:
Uncomment ONLY if you intentionally want to remove every existing row
and reload the cleaned CSV from scratch.

TRUNCATE TABLE customer_churn;
*/

/* Import the cleaned CSV ONCE. */
LOAD DATA LOCAL INFILE
'E:/da projects/Customer_Churn_Analysis/data/cleaned/customer_churn_cleaned.csv'
INTO TABLE customer_churn
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
    customerID,
    gender,
    SeniorCitizen,
    Partner,
    Dependents,
    tenure,
    PhoneService,
    MultipleLines,
    InternetService,
    OnlineSecurity,
    OnlineBackup,
    DeviceProtection,
    TechSupport,
    StreamingTV,
    StreamingMovies,
    Contract,
    PaperlessBilling,
    PaymentMethod,
    MonthlyCharges,
    TotalCharges,
    Churn
);

/* Run the validation queries in 02_data_validation.sql after import. */
