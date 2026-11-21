/*
PROJECT: Customer Churn & Retention Analysis
FILE: 03_churn_analysis.sql

PURPOSE:
Business KPIs and churn analysis across key customer dimensions.

DATASET CHECKPOINT:
7043 customers | 1869 churned | 5174 retained | 26.54% overall churn
*/

USE customer_churn_db;

/* MISSION 1: Overall business KPIs */
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS customers_left,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS customers_stayed,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0,
        2
    ) AS churn_percentage
FROM customer_churn;


/* MISSION 2: Churn by contract */
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS retained_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0,
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY Contract
ORDER BY churn_rate DESC;


/* MISSION 3: Churn by tenure group */
WITH tenure_category_cte AS (
    SELECT
        customerID,
        Churn,
        Tenure,
        CASE
            WHEN Tenure BETWEEN 0 AND 12 THEN '0-12 (New)'
            WHEN Tenure BETWEEN 13 AND 24 THEN '13-24 (Early stage)'
            WHEN Tenure BETWEEN 25 AND 48 THEN '25-48 (Mid term)'
            WHEN Tenure BETWEEN 49 AND 72 THEN '49-72 (Long term)'
            ELSE 'Other'
        END AS tenure_group
    FROM customer_churn
)
SELECT
    tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS retained_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0,
        2
    ) AS churn_rate
FROM tenure_category_cte
GROUP BY tenure_group
ORDER BY MIN(Tenure) ASC;


/* MISSION 4: Churn by payment method */
SELECT
    PaymentMethod AS payment_method,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS retained_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0,
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;


/* MISSION 5: Churn by internet service */
SELECT
    InternetService AS internet_service,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS retained_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0,
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY InternetService
ORDER BY churn_rate DESC;


/* MISSION 6: Churn by tech support */
SELECT
    TechSupport AS tech_support,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS retained_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0,
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY TechSupport
ORDER BY churn_rate DESC;


/* MISSION 7: Churn by monthly charge category */
WITH charge_category_cte AS (
    SELECT
        Churn,
        CASE
            WHEN MonthlyCharges <= 30 THEN 'Low (0-30)'
            WHEN MonthlyCharges <= 70 THEN 'Medium (30.01-70)'
            WHEN MonthlyCharges <= 100 THEN 'High (70.01-100)'
            ELSE 'Very high (Above 100)'
        END AS charge_category
    FROM customer_churn
)
SELECT
    charge_category,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS retained,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0,
        2
    ) AS churn_rate
FROM charge_category_cte
GROUP BY charge_category
ORDER BY
    CASE charge_category
        WHEN 'Low (0-30)' THEN 1
        WHEN 'Medium (30.01-70)' THEN 2
        WHEN 'High (70.01-100)' THEN 3
        ELSE 4
    END;


/* MISSION 8: Churn by senior citizen status */
SELECT
    SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS retained,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*) * 100.0,
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY SeniorCitizen
ORDER BY SeniorCitizen;
