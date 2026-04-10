# 🛒 E-Commerce Revenue Optimization & Sales Data Analysis

> Uncovering revenue trends, category performance, and operational inefficiencies across 121,180 Amazon India sales records using SQL Server, Python, and Excel.

---

## 📌 Project Overview

I built this project to practice the core skills required in a Business Analyst role — loading messy real-world data, cleaning it, analyzing it with SQL and Python, and presenting findings in a dashboard that a non-technical stakeholder could actually use.

**Business Question:** *Which product categories, regions, and time periods are driving revenue — and where is the business losing money?*

---

## 🔍 Key Business Insights

| Insight | Finding |
|---|---|
| 🏆 Top Category | **Set** drives ₹3.92 Cr — **50% of total revenue** |
| 📅 Peak Month | **April** at ₹2.88 Cr, with consistent 10% MoM decline through June |
| 🗺️ Top Market | **Maharashtra** leads in both orders (21,073) and revenue (₹1.33 Cr) |
| ⚠️ Revenue Leakage | **9% cancellation rate** = ~₹70L in potential lost revenue |
| 📊 Regional Insight | Tamil Nadu ranked 3rd in orders but 5th in revenue — pricing opportunity flagged |

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **SQL Server + SSMS** | Data querying, KPI calculation, window functions |
| **Python (Pandas)** | Data cleaning, aggregation, wrangling |
| **Matplotlib** | Data visualization (4 charts) |
| **Microsoft Excel** | PivotTables, PivotCharts, Slicers, KPI Dashboard |

---

## 📁 Project Structure

\```
ecommerce-sales-analysis/
│
├── analysis_queries.sql       # SQL Server queries
├── ecommerce_analysis.ipynb   # Python notebook
├── dashboard.xlsx             # Excel dashboard
│
└── charts/
    ├── chart1_category_revenue.png
    ├── chart2_monthly_trend.png
    ├── chart3_state_revenue.png
    └── chart4_order_status.png
\```

---

## 🔬 Analysis Phases

### Phase 1 — SQL Analysis
- Top-line metrics (revenue, orders, avg order value)
- Category-level revenue (`GROUP BY`)
- Top 10 states by revenue (`TOP 10`)
- Monthly revenue trend (`DATENAME`, `MONTH`)
- Order status with % share (Window Function: `SUM() OVER()`)

### Phase 2 — Python Data Cleaning (Pandas)
- Loaded 121,180 raw records with `pd.read_csv()`
- Handled missing values (`isnull`, `dropna`, `fillna`)
- Converted date strings (`pd.to_datetime`)
- Dropped junk columns

### Phase 3 — Python Visualizations (Matplotlib)
1. Revenue by Product Category (Bar)
2. Monthly Revenue Trend (Line with annotations)
3. Top 10 States by Revenue (Horizontal Bar)
4. Order Status Distribution with % (Horizontal Bar)

### Phase 4 — Excel Dashboard
- 3 PivotTables + PivotCharts
- Category Slicer for interactive filtering
- KPI cards: Total Revenue | Avg Order Value | Total Orders

---

## 📈 Dataset
- **Source:** Amazon India Sales Report (Kaggle)
- **Records:** 121,180 orders | **Period:** March – June 2022

---

## 👤 About
Built by **Rakesh Dindore** as part of a self-directed Business Analyst upskilling journey.  
Connect: [LinkedIn](https://linkedin.com/in/rakeshdindore) | [GitHub](https://github.com/rakeshdindore)
