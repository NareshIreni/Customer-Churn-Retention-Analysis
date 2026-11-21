Customer Churn SQL files
=========================

Files
-----
01_setup_and_import.sql
    Database selection, required type corrections, and one-time CSV import.

02_data_validation.sql
    Row count, unique IDs, duplicate check, churn counts, sample rows,
    and table structure checks.

03_churn_analysis.sql
    The eight completed business analysis queries.

Recommended folder
------------------
Customer_Churn_Analysis/
└── sql/
    ├── 01_setup_and_import.sql
    ├── 02_data_validation.sql
    └── 03_churn_analysis.sql

Important import warning
------------------------
LOAD DATA LOCAL INFILE appends rows; it does not replace existing rows.
Run the import only once for a fresh/empty table. If you intentionally need
to reload, first back up the table and then clear it deliberately. The
TRUNCATE statement in file 01 is commented out because it permanently
removes all rows from the table.

Assumption
----------
The setup script assumes the customer_churn table has already been created
in MySQL Workbench (as in the project workflow). It adjusts the three
columns that needed type corrections. It does not recreate the table from
scratch because the complete original CREATE TABLE definition was not
provided.

Path
----
Check the CSV path in 01_setup_and_import.sql and change it if the project
folder is moved to another drive or computer.
