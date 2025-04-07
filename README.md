# 📊 Retail Sales Analysis Using SQL

## 📁 Project Overview

This project provides an in-depth analysis of a supermarket retail dataset using SQL. The primary goal is to extract actionable business insights related to customer behavior, product performance, sales trends, and operational efficiency through structured queries.

---

## 🎯 Objectives

- **Market Analysis**: Understand customer purchasing patterns.
- **Operational Efficiency**: Evaluate inventory movement and payment preferences.
- **Sales Performance**: Identify best- and worst-performing products and branches.
- **Customer Satisfaction**: Analyze feedback and satisfaction ratings to enhance service.

---

## 🧰 Tools Used

- **Database**: MySQL
- **Language**: SQL
- **Dataset**: `supermarket_sales.csv`

---

## 🧹 Data Preprocessing

- Created a database and imported data using MySQL import wizard.
- Verified data integrity:
  - ✅ No duplicate `Invoice_ID`s.
  - ✅ No null values in key fields.
- Added a combined **datetime** column from `Date` and `Time`.

---

## 🔍 Key Analyses Performed

### 🧑‍🤝‍🧑 Customer Segmentation
- Compared spending and order frequency between **Member** and **Normal** customers.
- Found that **Members** have higher average and total spending.

### 📆 Sales Trend Analysis
- Highest sales in **January**.
- Busiest days: **9th, 15th, 17th**.
- Peak hours: **1 PM, 7 PM, 10 AM**.

### 📦 Product Line Performance
- **Food and Beverages** had the highest revenue.
- **Electronic Accessories** had the highest average quantity sold.

### 💳 Payment Insights
- Most revenue: **Cash > Credit > E-wallet**
- Highest customer satisfaction: **Credit > Cash > E-wallet**

### 🌍 Branch and City Sales
- Highest revenue: **Branch C (Naypyitaw)**.
- Branch B and A followed in performance.

### 💸 Customer Revenue Contribution
- Significant spending difference between **Normal** and **Member** customers.

### 💰 Profitability by Product Line
- All product lines had the **same profit percentage** due to consistent pricing strategies.

### 🌟 Customer Satisfaction
- Ratings were grouped into:
  - **High (≥7)**
  - **Medium (4–6)**
  - **Low (<4)**
- Correlated with **avg revenue, quantity, and unit price**.

---

## 📈 Analytical Report – Key Insights

1. **Member Customers** are more profitable in both frequency and spend.
2. **Sales peak** in January, especially on **9th, 15th, and 17th** at **1 PM to 7 PM**.
3. **Branch C (Naypyitaw)** outperforms others significantly.
4. **Food and Beverages** dominate revenue, but **Electronics** dominate quantity.
5. **Credit card payments** yield higher satisfaction scores.
6. Products like **Health and Beauty** underperform in revenue.
7. Consistent **profit margins** across all product lines.

---

## 💡 Strategic Recommendations

1. **Enhance Loyalty Programs**:
   - Target **Normal** customers with offers to encourage conversion to **Members**.
   
2. **Time-Based Promotions**:
   - Run deals during **peak hours and days** to maximize conversions.

3. **Push Underperforming Categories**:
   - Bundle or discount **Health and Beauty** products.

4. **Encourage Credit Usage**:
   - Offer **cashbacks or loyalty points** for credit card users.

5. **Branch-Level Optimization**:
   - Replicate **Branch C’s** strategies in underperforming branches.

6. **Improve Customer Experience**:
   - Collect feedback from **medium/low satisfaction** customers.
   - Reward **highly satisfied** customers via referral programs.

7. **Inventory Focus**:
   - Prioritize **Electronic Accessories** for stock management due to high demand.

---

## 📌 Conclusion

This project demonstrates how SQL can be a powerful tool for business decision-making in the retail sector. It highlights the importance of data in optimizing operations, increasing profitability, and improving customer satisfaction.

---

Let me know if you'd like this README formatted for GitHub or as a downloadable `.md` file!
