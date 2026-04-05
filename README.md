# 📊 E-commerce User Behavior Analysis

## 📌 Project Overview

This project analyzes user behavior in an e-commerce platform using **SQL** and **Power BI**.
The goal is to understand how users interact with products and identify opportunities to improve conversion rates.

---

## 🎯 Objectives

* Analyze user activity patterns
* Measure purchase behavior
* Calculate conversion rates
* Identify peak hours of engagement

---

## 🛠️ Tools & Technologies

* SQL (SQLite, DBeaver)
* Power BI

---

## 📂 Dataset

The dataset contains user interaction events with the following fields:

* `event_time`
* `event_type` (view, cart, purchase)
* `user_id`
* `product_id`
* `category_id`
* `price`

---

## 🔍 Analysis

### 1. Total Users

Calculated the number of unique users interacting with the platform.

### 2. Total Purchases

Measured the total number of completed purchases.

### 3. User Activity by Hour

Analyzed when users are most active during the day.

### 4. Purchases by Hour

Identified peak purchasing times.

### 5. Conversion Rate by Hour

Calculated conversion rate using:

Conversion Rate = (Unique Purchases / Unique Views) * 100

---

## 📈 Key Insights

* Most users are active between **07:00 and 19:00**
* Purchases follow a similar pattern
* Conversion rate remains relatively stable during peak hours
* Significant drop occurs between **view → cart stage**

---

## 💡 Recommendations

* Focus marketing campaigns during peak hours
* Improve product page UX (descriptions, reviews, pricing clarity)
* Optimize product discovery to reduce drop-off

---

## 📊 Dashboard

The analysis is visualized in Power BI, including:

* Funnel (view → cart → purchase)
* Activity by hour
* Conversion rate by hour

---

## 📁 Project Structure

```
ecommerce-user-behavior-analysis/
│
├── ecommerce_analysis.sql
├── dashboard.pdf
└── README.md
```

---

## 🚀 Author

**Marharyta Piatrouskaya**

