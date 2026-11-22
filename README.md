# Customer Churn & Retention Analysis



## Project Overview



Customer churn is a common problem for businesses that provide subscription-based services. When customers leave, businesses lose recurring revenue and need to understand what might be contributing to that decision.



I worked on this project using the IBM Telco Customer Churn dataset to explore customer behaviour and identify groups with higher churn rates.



The project covers the complete data analysis process, starting with data cleaning and ending with an interactive Power BI dashboard. I used Excel, Python, SQL and Power BI at different stages of the project.



## Project Objectives



- Understand the overall customer churn rate.

- Identify customer groups with higher churn.

- Compare churn across contract types, tenure, payment methods and services.

- Clean and validate customer data.

- Perform exploratory data analysis using Python.

- Write SQL queries to analyse customer behaviour.

- Build an interactive Power BI dashboard.

- Suggest possible actions that could help improve customer retention.



## Dataset



**Dataset:** IBM Telco Customer Churn  

**Industry:** Telecommunications  

**Total Records:** 7,043  

**Total Columns:** 21  

**Target Column:** Churn



The dataset contains customer details, subscribed services, contract information, payment methods and billing details.



## Tools Used



| Tool | How I Used It |

|---|---|

| Microsoft Excel | Data cleaning, quality checks, initial analysis and PivotTables |

| Python | Exploratory Data Analysis using Pandas, NumPy, Matplotlib and Seaborn |

| MySQL | Data validation and business-related SQL queries |

| Power BI | Interactive dashboards, KPIs, slicers, dynamic reporting and drill-through |

| Microsoft Word | Business findings and project documentation |

| GitHub | Project version control and portfolio presentation |



## Project Workflow



### 1. Data Cleaning – Excel



I started by inspecting the original dataset and checking for missing values, duplicate customer IDs and data-quality issues.



During this process, I found 11 whitespace-only entries in the `TotalCharges` column. Since the corresponding customers had zero tenure, I replaced those entries with zero in the cleaned dataset.



I kept the original CSV unchanged and used the cleaned version for the remaining analysis.



### 2. Exploratory Data Analysis – Python



After cleaning the data, I used Python to explore the dataset and understand the differences between churned and retained customers.



The analysis included:

- Dataset structure and data types.

- Missing values and duplicate checks.

- Descriptive statistics.

- Numerical and categorical analysis.

- Correlation analysis.

- Visual comparisons of churn across customer segments.



### 3. SQL Analysis – MySQL



I imported the cleaned dataset into MySQL and wrote queries to examine customer churn from different business perspectives.



The analysis covered overall KPIs, contract types, tenure groups, payment methods, internet services, technical support, monthly charges and senior citizen categories.



### 4. Power BI Dashboard



I developed a four-page interactive Power BI report to present the results.



The dashboard includes:



- **Executive Overview:** Overall KPIs and major churn patterns.

- **Churn Drivers:** Comparisons across important customer segments.

- **Retention Strategy:** Key churn indicators and suggested business actions.

- **Customer Segment Details:** A drill-through page for exploring selected customer groups.



I also included interactive slicers, dynamic report titles, dynamic business insights, bookmarks and drill-through functionality.

## Power BI Dashboard

### 1. Executive Overview
![Executive Overview](power%20bi/screenshots/Executive%20Overview.png)

### 2. Churn Drivers
![Churn Drivers](power%20bi/screenshots/Churn_drivers.png)

### 3. Retention Strategy
![Retention Strategy](power%20bi/screenshots/Retention_strategy.png)

### 4. Customer Segment Details
![Customer Segment Details](power%20bi/screenshots/customer_segment_details.png)



## Key Findings



The overall customer churn rate was **26.54%**, representing 1,869 churned customers out of 7,043.



Some of the important findings were:

| Customer Segment | Churn Rate |
|---|---:|
| Month-to-month contracts | 42.71% |
| One-year contracts | 11.27% |
| Two-year contracts | 2.83% |
| Customers with 0–12 months tenure | 47.44% |
| Electronic-check users | 45.29% |
| Fiber optic customers | 41.89% |
| Customers without technical support | 41.64% |
| Senior citizen customers | 41.68% |
| Customers with monthly charges of $70.01–$100 | 37.82% |


These results helped identify customer groups where churn was considerably higher than the overall rate.


**Note:** These findings show associations in the historical dataset. They do not establish that any particular factor directly causes customers to leave.



## Business Recommendations



Based on the analysis, I identified a few areas where a business could focus its retention efforts:



- Improve onboarding and early engagement for new customers.

- Review the reasons behind higher churn among month-to-month customers.

- Investigate billing experiences and electronic-check payment behaviour.

- Examine pricing and perceived service value.

- Review service quality and technical support experiences.

- Understand the specific needs of customer groups with higher churn.



These are suggested actions that would need further investigation and testing.
## Repository Structure

```text

Customer-Churn-Retention-Analysis/
│
├── data/
│   ├── raw/
│   │   └── customer_churn.csv
│   └── cleaned/
│       └── customer_churn_cleaned.csv
│
├── excel/
│   └── Customer-Churn_Analysis.xlsx
│
├── python/
│   └── Customer_churn_Analysis.ipynb
│
├── sql/
│   ├── 01_setup_and_import.sql
│   ├── 02_data_validation.sql
│   ├── 03_churn_analysis.sql
│   └── README.txt
│
├── power bi/
│   ├── Customer_Churn_Retention_Dashboard.pbix
│   └── screenshots/
│       ├── Executive Overview.png
│       ├── Churn_drivers.png
│       ├── Retention_strategy.png
│       └── customer_segment_details.png
│
├── reports/
│   └── Customer_Churn_Business_Insights_Report.docx
│
└── README.md
```

## What I Learned

Working on this project gave me practical experience with the complete data analysis workflow.

I learned how to handle data-quality issues, explore customer behaviour, write SQL queries, create business-focused visualisations and present findings through an interactive dashboard.

One important takeaway was that calculating churn rates is only part of the work. Understanding which customer groups are affected and communicating what the business could investigate next is equally important.

## Limitations

This analysis uses a historical snapshot of customer data. It does not include detailed customer feedback, satisfaction scores or complaint histories.

The results identify patterns, but further investigation would be needed to understand the actual reasons behind customer churn and evaluate whether the suggested retention actions are effective.

---

**Project:** Customer Churn & Retention Analysis

**Tools:** Excel | Python | MySQL | Power BI

**Focus:** Data Cleaning | EDA | SQL Analysis | Dashboard Development | Business Insights

## Author

**Naresh Ireni**  
Aspiring Data Analyst

I'm interested in working with data to understand business problems, find meaningful patterns and communicate insights that can support better decisions.

This project was an opportunity to apply my skills in Excel, Python, SQL and Power BI through a complete data analysis workflow.

**GitHub:** [NareshIreni](https://github.com/NareshIreni)

---

*Feedback and suggestions are welcome.*
