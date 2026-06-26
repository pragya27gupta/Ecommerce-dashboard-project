# SQL Exploration Summary

## Project: E-Commerce Sales Dashboard Analysis

### Objective
The purpose of this phase was to perform initial exploratory SQL analysis on the Olist e-commerce dataset to understand business scale, operational performance, and key performance indicators (KPIs) before conducting deeper analysis.

This step helps establish baseline metrics and ensures the dataset is ready for advanced analytics.

---

# Analysis Goals

The initial exploration focused on answering the following business questions:

- How many total orders were placed?
- What is the order fulfillment status distribution?
- What is the dataset time range?
- How many customers exist in the dataset?
- What is the total revenue generated?

---

# Key Queries Performed

## 1. Total Orders
**Objective:** Measure total transaction volume.

```sql
SELECT COUNT(*) AS total_orders
FROM orders;
```

---

## 2. Order Status Distribution
**Objective:** Understand operational performance and order fulfillment efficiency.

```sql
SELECT 
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;
```

---

## 3. Dataset Date Range
**Objective:** Determine business activity period for trend analysis.

```sql
SELECT 
    MIN(order_purchase_timestamp) AS first_order,
    MAX(order_purchase_timestamp) AS last_order
FROM orders;
```

---

## 4. Total Customers
**Objective:** Measure customer base size.

```sql
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM customers;
```

---

## 5. Total Revenue
**Objective:** Calculate gross revenue from product sales.

```sql
SELECT ROUND(SUM(price), 2) AS total_revenue
FROM order_items;
```

---

# Key Metrics

| KPI | Value |
|-----|------:|
| Total Orders | 99,441 |
| Total Customers | 96,096 |
| Total Revenue | 13,591,643.70 |

---

# Dataset Coverage

| Metric | Value |
|--------|-------|
| First Order Date | 2016-09-04 |
| Last Order Date | 2018-10-17 |
| Analysis Period | ~2 Years |

---

# Order Status Distribution

| Order Status | Orders |
|-------------|-------:|
| Delivered | 96,478 |
| Shipped | 1,107 |
| Canceled | 625 |
| Unavailable | 609 |
| Invoiced | 314 |
| Processing | 301 |
| Created | 5 |
| Approved | 2 |

---

# Initial Insights

## 1. Strong Order Fulfillment Performance
The majority of orders were successfully delivered.

- Delivered Orders: **96,478**
- Delivery Rate: **~97%**

This indicates strong operational efficiency and successful order fulfillment.

---

## 2. Low Cancellation Rate
Canceled orders represent a very small percentage of total orders.

- Canceled Orders: **625**
- Cancellation Rate: **~0.63%**

This suggests relatively stable order completion performance.

---

## 3. Large-Scale E-Commerce Operations
The business processed:

- 99K+ orders
- 96K+ customers
- 13.59M+ revenue

This indicates a substantial e-commerce operation with sufficient scale for advanced trend and customer behavior analysis.

---

## 4. Dataset Suitable for Time-Series Analysis
The dataset spans approximately two years, making it suitable for:

- Monthly revenue trends
- Growth analysis
- Seasonal pattern detection

---
## 5. Customer Identifier Insight

The dataset contains two customer identifiers:

- customer_id → unique for each order-level customer record
- customer_unique_id → unique for actual customers

This distinction is important because the same customer may place multiple orders and receive different customer_ids across transactions.

Analysis showed:

- Customer Records: 99,441
- Unique Customers: 96,096

This indicates the presence of repeat customers in the dataset and provides a foundation for retention and repeat purchase analysis.

# Next Steps

The next phase of analysis will focus on:

- Revenue trend analysis
- Monthly growth analysis
- Average Order Value (AOV)
- Customer behavior analysis
- Product category performance
- Seller performance evaluation
