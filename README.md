# 📊 Northwind Sales Analytics — Data Science Portfolio Project

🔴 **[[View Live Interactive Dashboard Here!](https://northwind-sql-analysis.streamlit.app/)]**

---

## 📌 Project Overview
This is an end-to-end Data Science portfolio project. It demonstrates the ability to extract data from a relational database, process it programmatically, and present actionable insights via an interactive web dashboard. The analysis is based on the classic **Northwind** dataset (a fictional company's sales data).

While this project heavily utilizes SQL and Data Visualization, it serves as the foundational data pipeline for future Machine Learning tasks (e.g., Customer Churn Prediction).

## 🛠️ Tech Stack
*   **Database:** PostgreSQL (Advanced SQL: CTEs, Window Functions)
*   **Data Processing:** Python (Pandas, NumPy)
*   **Visualization:** Streamlit, Plotly
*   **Deployment:** Streamlit Community Cloud

## 🧠 Data Science Perspective & Insights
This project focuses on extracting business intelligence that can drive data-driven decisions:
1.  **Customer Lifetime Value (CLV):** Identifying the top 10% of customers who generate the majority of revenue (Pareto Principle).
2.  **Churn Risk Identification:** Using SQL date functions to isolate customers inactive for >6 months—the perfect candidate pool for a predictive churn model.
3.  **Product & Category Performance:** Utilizing Window Functions (Rank) to dynamically identify top-performing products per category.
4.  **Time-Series Analysis:** Analyzing Month-over-Month (MoM) revenue growth to detect seasonality.

## 📈 The 10 Business Questions Answered
*(See the `queries/` folder for the exact SQL codes)*
1. Monthly Revenue Trend
2. Top 10 Customers by Lifetime Value
3. Revenue Distribution by Country
4. Top Products per Category *(Window Functions)*
5. Month-over-Month Revenue Growth *(CTEs)*
6. Courier Shipping Performance
7. Category Revenue Contribution (%)
8. Sales Representative Performance
9. Inactive Customers (Churn candidates)
10. Most Purchased Products by Quantity

## 📸 Dashboard Preview
*(Insert your dashboard screenshot here by saving an image in the repo and linking it)*
<!-- Example: ![Dashboard Preview](screenshots/dashboard.png) -->

## 🚀 How to Run Locally
1. Clone this repository:
   ```bash
   git clone https://github.com/Nebukhad1/northwind-sql-analysis.git
Create a PostgreSQL database named northwind.

Import the dataset: psql -U postgres -d northwind -f northwind.sql

Install the Python requirements:

bash
pip install -r requirements.txt
Run the Streamlit dashboard:

bash
streamlit run dashboard.py
🔮 Future Work (Data Science Roadmap)
Predictive Modeling: Build a classification model (e.g., Random Forest or XGBoost) to predict which customers are likely to churn, using the "Inactive Customers" data.

Recommendation System: Implement collaborative filtering to recommend products to customers based on their past purchase history.

Time-Series Forecasting: Apply ARIMA or Prophet models to forecast revenue for the next quarter.

Created with ❤️ by Muhammad Nebukhadnezar