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

## 📊 Visualizations & Analysis

### Chart 1 — Revenue by Product Category

![Revenue by Product Category](chart1_category_revenue.png)

**Insight:** The `Set` category dominates with ₹3.92 Cr — nearly **50% of total revenue** on its own. `Kurta` comes in second at ₹2.13 Cr. The remaining 7 categories combined contribute less than `Kurta` alone. This tells us the business is heavily dependent on a single category, which is both an opportunity (double down on Sets) and a risk (any supply disruption in Sets would severely impact revenue).

---

### Chart 2 — Monthly Revenue Trend (Mar–Jun 2022)

![Monthly Revenue Trend](chart2_monthly_trend.png)

**Insight:** April was the clear peak month at ₹2.88 Cr, followed by a consistent month-on-month decline of ~10% through May (₹2.62 Cr) and June (₹2.34 Cr). March shows near-zero revenue as the dataset only captures the tail end of that month. The declining trend from April onwards likely reflects a post-season slowdown after the summer/wedding season buying peak — a key signal for inventory and promotion planning.

---

### Chart 3 — Top 10 States by Revenue

![Top 10 States by Revenue](chart3_state_revenue.png)

**Insight:** Maharashtra is the undisputed leader at ₹1.33 Cr, followed by Karnataka (₹1.05 Cr). An interesting finding: **Tamil Nadu ranked 3rd in order volume but only 5th in revenue** — meaning Tamil Nadu customers tend to buy lower-priced items compared to Telangana customers who ranked 4th in orders but 3rd in revenue. This pricing/product mix difference between states is a strong signal for regional marketing strategy.

---

### Chart 4 — Order Status Distribution

![Order Status Distribution](chart4_order_status.png)

**Insight:** While 64% of orders are in transit (Shipped) and 23.7% have been successfully delivered, the **8.9% cancellation rate (10,766 orders)** is a significant operational concern. Combined with 1.6% returned to seller, the business is experiencing approximately **10.5% order failure rate** — representing an estimated ₹70–80L in potential lost revenue. Investigating root causes of cancellations (pricing, delivery delays, OOS) would be a priority recommendation.

---

## 📁 Project Structure

```
ecommerce-sales-analysis/
│
├── analysis_queries.sql       # SQL Server queries (KPIs, GROUP BY, Window Functions)
├── ecommerce_analysis.ipynb   # Python notebook (cleaning + analysis + charts)
├── dashboard.xlsx             # Excel dashboard with PivotTables + Slicers
│
├── chart1_category_revenue.png
├── chart2_monthly_trend.png
├── chart3_state_revenue.png
└── chart4_order_status.png
```

---

## 🔬 Analysis Phases

### Phase 1 — SQL Analysis (SQL Server)
Wrote 5 SQL queries to extract business KPIs:
- Top-line metrics: revenue, orders, avg order value
- Category-level revenue breakdown (`GROUP BY`, `ORDER BY`)
- Top 10 states by revenue (`TOP 10`)
- Monthly revenue trend (`DATENAME`, `MONTH`)
- Order status with % share using Window Function (`SUM() OVER()`)

### Phase 2 — Python Data Cleaning (Pandas)
- Loaded 121,180 raw records with `pd.read_csv()`
- Identified and handled missing values (`isnull`, `dropna`, `fillna`)
- Converted date strings to proper datetime format (`pd.to_datetime`)
- Dropped empty/junk columns

### Phase 3 — Python Visualizations (Matplotlib)
Built 4 business charts with value labels and proper formatting for stakeholder readability.

### Phase 4 — Excel Dashboard
- 3 PivotTables + PivotCharts connected to cleaned data
- Category Slicer for interactive filtering
- KPI summary cards: Total Revenue | Avg Order Value | Total Orders

---

## 📈 Dataset

- **Source:** Amazon India Sales Report (Kaggle)
- **Records:** 121,180 orders
- **Fields:** 24 columns including Order ID, Date, Category, Amount, State, Fulfilment, Status
- **Period:** March – June 2022

---

## 👤 About

Built by **Rakesh Dindore** as part of a self-directed Business Analyst upskilling journey.  
Connect: [LinkedIn](https://linkedin.com/in/rakeshdindore) | [GitHub](https://github.com/rakeshdindore)
