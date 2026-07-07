# cloud_sales_analysis
# 📊 Sales Performance Analytics Dashboard using Azure SQL & Power BI

## 🚀 Project Overview

This project is an end-to-end cloud-based sales analytics solution built using Python, Azure SQL, and Power BI.

The project focuses on transforming raw transactional sales data into meaningful business insights through ETL processing, star schema modeling, cloud database integration, and interactive dashboard visualization.

---

# 🏢 Domain

Retail / E-Commerce Analytics

---

# 🎯 Business Problem

The business lacked a centralized analytical solution to monitor:

- Sales performance
- Profitability trends
- Customer contribution
- Category-level insights

Reporting was manual and time-consuming.

---

# 🎯 Project Goals

- Clean and transform raw sales data
- Create star schema data model
- Load data into Azure SQL Database
- Build interactive Power BI dashboard
- Generate business insights using DAX

---

# 🛠️ Tools & Technologies Used

- Python
- Pandas
- SQLAlchemy
- Azure SQL Database
- SSMS
- Power BI
- DAX
- Power Query
- MySQL Workbench
- GitHub

---

# 📂 Project Architecture

Raw CSV Data  
↓  
Python ETL & Cleaning  
↓  
Star Schema Creation  
↓  
Azure SQL Database  
↓  
Power BI Dashboard  
↓  
Business Insights & Reporting

---

# 🧹 Data Cleaning & Transformation

Performed:
- Missing value handling
- Duplicate removal
- Data type correction
- Date formatting
- Star schema transformation

---

# 🗄️ Data Modeling

Implemented Star Schema:

### Fact Table
- fact_sales

### Dimension Tables
- dim_customer
- dim_product
- dim_date

---

# 📈 Dashboard Features

### KPI Cards
- Total Sales
- Total Profit
- Total Orders
- Profit Margin %

### Visualizations
- Sales Trend Analysis
- Sales by Category
- Top Customers Analysis
- Sales Contribution by Segment
- Monthly Sales Heatmap
- Profit vs Sales Scatter Plot

### Interactive Features
- Year slicer
- Month slicer
- Category slicer

---

# 📊 DAX Measures

```DAX
Total Sales = SUM(fact_sales[sales])

Total Profit = SUM(fact_sales[profit])

Total Orders = COUNT(fact_sales[order_id])

Profit Margin % =
DIVIDE([Total Profit], [Total Sales], 0)
```

---

# 🔥 Business Insights

- Technology category generated highest sales
- Few customers contributed major revenue
- Sales showed monthly fluctuations
- Profitability varied across categories

---

# ⚠️ Challenges Faced

- Azure SQL connection issues
- Firewall configuration
- ODBC driver setup
- Date datatype mismatches
- Relationship validation

---

# 👨‍💻 My Role

- Built complete ETL pipeline using Python
- Designed star schema model
- Loaded data into Azure SQL
- Created Power BI dashboard
- Developed DAX measures
- Generated business insights

---

# 📷 Dashboard Preview

(Add dashboard screenshot here)

---

# 📌 Future Enhancements

- Incremental data loading
- Azure Data Factory integration
- Real-time streaming analytics
- Advanced forecasting models

---

# 📎 Author

Rajesh Sonavale

