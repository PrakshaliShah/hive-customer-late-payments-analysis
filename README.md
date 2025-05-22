# 🏦 Hive Late Payment Analytics – Customer Behavior Insights

This project uses **Apache Hive on Hadoop** to analyze customer behavior and payment trends.  
It explores insights like late payment history, credit card usage, and digital banking adoption across customer profiles using **partitioned Hive tables** and HiveQL.

---

## 📌 Overview

Using Hive and HDFS, we built an analytical workflow that:
- Created Hive databases and structured tables (external, internal, and partitioned)
- Loaded customer and payment data from HDFS
- Joined tables and ran real-world HiveQL business queries
- Identified late payment risks, segmentation trends, and behavioral patterns

---

## 🛠️ Tools & Concepts

- Hive on Hadoop (HDFS backend)  
- HiveQL (DDL & DML)  
- External vs Internal Tables  
- Partitioning by state  
- Joins, filters, group by, counts  
- SSH terminal + Nano editor (Linux-based)

---

## 📁 Files Included

- [`customer_table_setup.hql`](customer_table_setup.hql) – Creates database, tables, partitions; loads data  
- [`customer_analysis_queries.hql`](customer_analysis_queries.hql) – 10 HiveQL queries to derive insights  
- [`CustomerDetails.txt`](CustomerDetails.txt) – Raw customer profile dataset  
- [`LatePayments.txt`](LatePayments.txt) – Payment transaction data with late payment flags  
- [`hive-late-payments-report.pdf`](hive-late-payments-report.pdf) – Final report summary  
- [`hive-query-screenshot.png`](hive-query-screenshot.png) – Hive CLI output (optional)

---

## 🧪 Sample Queries

- ✅ Customers from Chicago or specific states  
- ✅ Customers with `CreditCard = FALSE` and `LatePayment = TRUE`  
- ✅ Age-based filter: Customers born after 1980  
- ✅ Mobile/Internet banking users  
- ✅ Count by state and gender  
- ✅ Join customers with their transactions using `CustomerID`

---

## 📄 Sample Input

### 🔸 [Customer Details](./CustomerDetails.txt)
Contains customer profile data including demographics, banking preferences, and credit usage.


---


## 🖼️ Preview

![Hive Output Preview](hive-query-screenshot.png)

> Hive terminal output after executing queries from `customer_analysis_queries.hql`

---


