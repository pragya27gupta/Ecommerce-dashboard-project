# Project Architecture — E-Commerce Dashboard Project

## 1. Project Goal

The goal of this project is to analyze e-commerce sales data from the Olist dataset to uncover insights related to sales performance, customer behavior, product trends, and operational efficiency.

This project simulates a real-world business analytics workflow by combining SQL, Python, and dashboarding tools to transform raw data into actionable business insights.

The primary objective is to identify revenue drivers, operational bottlenecks, and customer satisfaction patterns to improve business performance.

---

## 2. Business Problem

The business aims to understand key performance indicators and operational metrics to support data-driven decision-making.

Key business problems include:

* How is revenue changing over time?
* Which product categories generate the highest sales?
* Which sellers contribute most to revenue?
* Which regions perform best and worst?
* What factors affect customer satisfaction?
* Are delivery delays impacting customer reviews?

The goal is to uncover trends and provide recommendations that improve profitability, customer experience, and operational efficiency.

---

## 3. Dataset Overview

This project uses the Brazilian E-Commerce Public Dataset by Olist.

The dataset contains 9 CSV files representing various business entities and transactions across the e-commerce ecosystem.

### Available Tables

* Customers
* Orders
* Order Items
* Payments
* Reviews
* Products
* Sellers
* Geolocation
* Product Category Translation

### Core Tables Used for Analysis

* Customers
* Orders
* Order Items
* Payments
* Reviews
* Products

Optional tables such as Sellers and Geolocation may be used in advanced analysis for regional and seller performance insights.

---

## 4. Schema & Table Relationships

The dataset is relational and consists of multiple connected tables.

Main relationships:

customers
→ orders
→ order_items
  ├── products
  ├── sellers
  ├── payments
  └── reviews

### Relationship Summary

* A customer can place multiple orders.
* Each order may contain multiple products.
* Each order item is associated with a product and seller.
* Payment details are linked to each order.
* Reviews capture customer satisfaction for completed orders.

This relational structure enables multi-dimensional business analysis across sales, customers, products, and operations.

---

## 5. Analysis Workflow

This project follows a structured analytics workflow:

Raw CSV Files
↓
Data Cleaning & Preparation
↓
Database Creation in MySQL
↓
SQL Analysis
↓
Python Exploratory Data Analysis
↓
Dashboard Development
↓
Business Insights & Recommendations

### Workflow Stages

### 1. Data Collection

Load raw CSV files and understand dataset structure.

### 2. Data Cleaning

Handle missing values, duplicates, and inconsistencies.

### 3. SQL Analysis

Perform joins, aggregations, KPI calculations, and business queries.

### 4. Python EDA

Conduct deeper analysis and generate visual insights.

### 5. Dashboard Development

Build an executive dashboard to track business KPIs.

### 6. Final Reporting

Summarize insights and recommend strategic actions.

---

## 6. Key Performance Indicators (KPIs)

The following KPIs will be tracked in this project.

### Revenue KPIs

* Total Revenue
* Monthly Revenue
* Average Order Value

### Order KPIs

* Total Orders
* Delivered Orders
* Cancellation Rate

### Customer KPIs

* Customer Satisfaction Score
* Review Score Distribution

### Operational KPIs

* Delivery Time
* Late Delivery Rate

### Business KPIs

* Top Product Categories
* Top Sellers
* Regional Performance

---

## 7. Key Business Questions

This analysis focuses on answering the following business questions.

### Revenue Analysis

* How is revenue trending over time?
* Which months show peak sales?

### Product Analysis

* Which product categories generate the highest revenue?
* Which categories underperform?

### Customer Analysis

* What influences customer satisfaction?
* Do delayed deliveries lead to poor reviews?

### Seller Analysis

* Which sellers perform best?
* Which sellers contribute the most revenue?

### Operational Analysis

* Which regions experience longer delivery times?
* Where do delivery bottlenecks occur?

---

## 8. Expected Deliverables

The final project deliverables include:

* Structured SQL query repository
* Python notebooks for EDA
* KPI dashboard
* Business insights report
* Strategic recommendations

The final outcome should demonstrate technical analytics skills, business problem-solving ability, and professional project documentation.
