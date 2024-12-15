# 🍕 Pizza Sales Analysis Dashboard

## 📊 Project Overview
This project focuses on analyzing pizza sales data using **SQL** for data extraction and transformation. The insights generated were visualized through a dynamic **dashboard** to help stakeholders understand key trends, patterns, and performance metrics. 

The dashboard provides an interactive view of:
- Total revenue and orders
- Daily and hourly order trends
- Sales by pizza size and category
- Best and worst-selling pizzas
- Busy days and peak hours

## 🛠 Tools & Technologies Used
- **SQL**: Data cleaning, transformation, and querying
- **Power BI**: Data visualization and dashboard creation
- **Data Source**: Pizza sales dataset

## 🎯 Key Insights
1. **Revenue**: Total revenue generated is **₹817,860**.
2. **Order Patterns**:
   - Highest orders occur on **Friday/Saturday evenings**.
   - Peak order times are **12 PM - 1 PM** and **5 PM - 8 PM**.
3. **Best & Worst Sellers**:
   - Best-selling pizzas: *The Classic Deluxe* and *Chicken* pizzas.
   - Worst-performing pizza: *The Brie Carre*.
4. **Category Performance**:
   - **Classic** category drives maximum sales and total orders.
   - **Large-sized pizzas** contribute significantly to revenue.

## 📈 Dashboard Highlights
### Key Metrics
- **Total Revenue**: ₹817,860
- **Total Orders**: 21,350
- **Total Pizzas Sold**: 49,574
- **Average Order Value**: ₹38.31

### Visuals Included
1. **Daily and Hourly Order Trends**
2. **Sales by Category & Size**
3. **Top 5 Best-Selling Pizzas**
4. **Bottom 5 Worst-Selling Pizzas**
5. **Sales Distribution by Pizza Category**
6. **Peak Days & Hours for Orders**

## 📂 Project Structure
```
Pizza-Sales-Analysis/
├── SQL-Scripts/             # SQL queries used for data analysis
├── Dashboard-Screenshots/   # Images of Power BI dashboard
├── Dataset/                 # Source dataset
├── README.md                # Project documentation
└── Insights-Report.pdf      # Summary report (optional)
```

## 📝 SQL Queries Used
1. **Revenue Calculation**:
```sql
SELECT SUM(total_price) AS total_revenue
FROM pizza_sales;
```
2. **Hourly Order Trends**:
```sql
SELECT HOUR(order_time) AS order_hour, COUNT(order_id) AS total_orders
FROM pizza_sales
GROUP BY HOUR(order_time)
ORDER BY order_hour;
```
3. **Best & Worst Sellers**:
```sql
SELECT pizza_name, COUNT(order_id) AS total_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_sold DESC;
```
*Additional queries are available in the `SQL-Scripts` folder.*

## 🚀 How to Run the Project
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/Pizza-Sales-Analysis.git
   ```
2. Load the dataset into your database.
3. Run the SQL scripts to analyze data.
4. Import the processed data into Power BI (or any visualization tool).
5. Open the Power BI file and interact with the dashboard.

## 🔍 Sample Dashboard Preview
![Pizza Sales Dashboard](path-to-your-screenshot.png)

## 🤝 Contributing
Contributions are welcome! Feel free to fork this repository and submit pull requests.

## 📧 Contact
For any queries or feedback, feel free to reach out:
- **Name**: Shubham Parte
- **Email**: parte.shubham0205@gmail.com
- **LinkedIn**: https://www.linkedin.com/in/shubham-parte-a60219231/

---
*Happy Analyzing 🍕!*
