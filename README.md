
# 📊 Cloud Sales Performance Analysis Dashboard

## 📌 Business Problem

Retail businesses generate large volumes of sales transactions across products, customers, and regions. Without a centralized analytics solution, it becomes difficult to monitor sales performance, identify profitable product categories, understand customer purchasing behavior, and make timely business decisions.

This project addresses these challenges by transforming raw sales data into interactive Power BI dashboards, enabling stakeholders to analyze sales trends, profitability, customer segments, and regional performance through data-driven insights.

---
## 💡 Solution Overview

Developed an end-to-end cloud-based sales analytics solution that transformed raw sales data into actionable business insights. The solution leverages **Python** for data preprocessing, **Azure Blob Storage** for cloud storage, **Azure SQL Database** for centralized data management, **SQL Server** for analytical querying, and **Power BI** for interactive dashboard development. It enables stakeholders to monitor sales performance, analyze profitability, evaluate customer behavior, and support data-driven business decisions.

---

# 📂 Project Architecture
Raw Sales Data (CSV)
        │
        ▼
Python ETL & Data Cleaning
        │
        ▼
Azure Blob Storage
        │
        ▼
Azure SQL Database (Star Schema)
        │
        ▼
Power BI Dashboard
        │
        ▼
Business Insights & Recommendations

---

## 🛠️ Technology Stack

| Technology | Purpose |
|------------|---------|
| **Python** | Data cleaning, preprocessing, and ETL |
| **Pandas & NumPy** | Data transformation and analysis |
| **Azure Blob Storage** | Cloud storage for raw sales data |
| **Azure SQL Database** | Cloud-based relational database |
| **SQL Server (SSMS)** | SQL querying and database management |
| **Power BI** | Data modeling, DAX measures, and interactive dashboards |
| **Git & GitHub** | Version control and project documentation |

---

## 📂 Dataset Overview

| Attribute | Details |
|-----------|---------|
| **Dataset Size** | 10,195 sales records |
| **Time Period** | 2020–2023 |
| **Total Sales** | ₹2.33M |
| **Total Profit** | ₹292K |
| **Profit Margin** | 12.6% |
| **Business Domain** | Retail / E-Commerce |
| **Data Source** | Kaggle |
| **Key Features** | Order Date, Customer, Product, Category, Segment, Region, Sales, Quantity, Profit, Discount |


## 🔄 Project Workflow

1. **Data Collection** – Imported retail sales data and validated data quality.
2. **Data Preparation** – Cleaned missing values, removed duplicates, and standardized data using Python.
3. **Cloud Storage** – Uploaded the processed dataset to Azure Blob Storage.
4. **Data Modeling** – Designed and implemented a Star Schema in Azure SQL Database using SQL.
5. **Dashboard Development** – Connected Power BI to Azure SQL Database and built interactive dashboards using DAX measures, KPI cards, trend analysis, and drill-through features.
6. **Business Analysis** – Identified sales trends, customer behavior, product performance, and profitability insights to support business decision-making.
---

## 📊 Dashboard Preview

The Power BI dashboard provides an interactive view of sales performance through executive KPIs, product analysis, customer insights, and business recommendations. It enables stakeholders to monitor revenue, profitability, customer behavior, and sales trends for data-driven decision-making.

### 📌 Executive Summary

![Executive Summary](images/executive_summary.png)

### 📦 Product Analysis

![Product Analysis](images/product_analysis.png)

### 👥 Customer Analysis

![Customer Analysis](images/customer_analysis.png)

### 💡 Insights & Recommendations

![Insights & Recommendations](images/insights_recommendations.png)
---
## 📈 Key KPIs

| KPI | Value |
|------|--------|
| **Total Sales** | **₹2.33M** |
| **Total Profit** | **₹292K** |
| **Profit Margin** | **12.6%** |
| **Dataset Size** | **10,195 Records** |
| **Analysis Period** | **2020–2023** |
---

## 🔍 Key Insights

- **Technology** generated the highest revenue (**₹839.89K**) and profit (**₹146.54K**), making it the strongest-performing product category.
- **Furniture** recorded the lowest profitability, indicating opportunities to optimize pricing, discount strategies, and operational costs.
- Sales and profit varied across regions and customer segments, highlighting differences in market performance and customer purchasing behavior.
- Customer analysis identified a small group of high-value customers contributing a significant share of overall revenue, supporting targeted retention strategies.
- Time-based trend analysis revealed seasonal fluctuations in sales, enabling better forecasting and inventory planning.

---

## 💼 Business Recommendations

- Increase investment in the **Technology** category by expanding high-performing products and targeted marketing campaigns.
- Review pricing, discount strategies, and product mix for the **Furniture** category to improve profitability.
- Implement customer loyalty and retention programs for high-value customers to maximize long-term revenue.
- Use regional and customer segment insights to optimize inventory planning and marketing strategies.
- Monitor sales and profitability through interactive Power BI dashboards to support timely, data-driven business decisions.
---

## 🎯 Skills Demonstrated

- Data Cleaning & Transformation
- Exploratory Data Analysis (EDA)
- ETL Pipeline Development
- Cloud Storage (Azure Blob Storage)
- Azure SQL Database
- SQL (Joins, CTEs & Window Functions)
- Star Schema Data Modeling
- Power BI Data Modeling
- DAX Measures
- Business Intelligence & Data Visualization
---

# ⚠️ Challenges Faced

- Azure SQL connection issues
- Firewall configuration
- ODBC driver setup
- Date datatype mismatches
- Relationship validation

---

## 📁 Repository Structure

```text
Cloud-Sales-Performance-Analysis/
│
├── data/
│   ├── raw/
│   │   └── sales_data.csv
│   └── processed/
│       └── final_sales_data.csv
│
├── notebooks/
│   └── data_cleaning_and_ETL.ipynb
│
├── sql/
│   ├── create_star_schema.sql
│   └── business_analysis_queries.sql
│
├── dashboard/
│   └── cloud_sales_dashboard.pbix
│
├── images/
│   ├── executive_summary.png
│   ├── product_analysis.png
│   ├── customer_analysis.png
│   ├── insights_recommendations.png
│   └── solution_architecture.png
│
└── README.md

```

---

# 📎 Author

Rajesh Sonavale

