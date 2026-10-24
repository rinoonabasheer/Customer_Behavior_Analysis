# Customer_Behavior_Analysis
Data Analytics Project Showcasing  Customer Behavior Analysis Using Python Sql and Power Bi
# 📊 Customer Behavior Dashboard

An end-to-end data analytics project that analyzes customer shopping
behavior, subscription patterns and sales performance using
**Python, SQL (MySQL) and Power BI**.

## 🎯 Objective
To understand who the customers are, what they buy, and which categories
and age groups generate the most revenue and sales.

## 🔄 Project Workflow
1. **Python (pandas):** loaded the raw dataset, cleaned it (missing values,
   data types, duplicates) and created the age_group column
2. **SQL (MySQL):** loaded the cleaned data into a database and wrote
   queries to explore customers, categories and subscriptions
3. **Power BI:** connected to the data, created DAX measures and built the
   interactive dashboard

## 📌 Key Metrics
| Metric | Value |
|---|---|
| Number of customers | 3.9K |
| Average purchase amount | $59.76 |
| Average review rating | 3.75 |

## 🔍 Key Insights
- Only 27% of customers are subscribed, while 73% are not, so there is room to grow subscriptions.
- Clothing is the top category for both revenue and sales, followed by Accessories, Footwear and Outerwear.
- Young Adults and Middle-Aged customers contribute the most revenue and sales.
- Seniors contribute the least, which could be a target for marketing.

## 🧩 Dashboard Features
- KPI cards: number of customers, average purchase amount, average review rating
- Donut chart: % of customers by subscription status
- Bar charts: revenue and sales by category and by age group
- Slicers: subscription status, gender, category and shipping type

## 🗂️ Dataset Fields
customer_id · gender · age_group · location · category · item_purchased ·
purchase_amount · review_rating · season · payment_method · shipping_type ·
subscription_status · discount_applied · promo_code · previous_purchases ·
frequency_of_purchases

## 🛠️ Tools Used
| Tool | Purpose |
|---|---|
| Python (pandas) | Data cleaning and preparation |
| SQL (MySQL) | Data storage and querying |
| Power BI | DAX measures and dashboard |

## 📁 Repository Structure

├── data/ # raw and cleaned dataset
├── notebooks/ # Python cleaning notebook
├── sql/ # SQL queries
├── dashboard/ # Power BI (.pbix) file
└── dashboard.png # dashboard preview
