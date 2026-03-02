# Vehicle Sales Analysis 🏎️📊

---

## Project Overview
This project focuses on cleaning and analyzing a dataset of vehicle sales and specifications. The goal was to take raw, messy data and transform it into a structured **MySQL** database for deep analytical insights, eventually visualizing market trends in **Power BI**.

---

## Data Cleaning Challenges (The "Hard" Part)
The raw data contained several inconsistencies that prevented mathematical analysis. I solved these using SQL:

* **Date Standardization:** Converted string dates like `2-Feb-14` into a standard `DATE` type using `STR_TO_DATE`.
* **Data Type Correction:** Used `ALTER TABLE` to convert columns like `Sales_in_thousands`, `Price_in_thousands`, and `Four_year_resale_value` from strings to `DECIMAL` for accurate calculations.
* **Schema Optimization:** Reconfigured the database by modifying column types for `Horsepower`, `Fuel_efficiency`, and `Curb_weight` to ensure the database is optimized for performance.

---

## 🛠️ Tech Stack & Data
* **Database:** MySQL (Data Cleaning & Analysis)
* **Visualization:** Power BI
* **Dataset:** [Raw Vehicle Sales Data 📊](./Car_sales.csv)
* **SQL Scripts:** [View SQL Script here 📂](./Project_query.sql)
* **Power BI File:** [Download Dashboard 📉](./Vehicle_sales_dashboard.pbix)

---

## Key SQL Snippets
One of the most important parts was ensuring the numerical data was functional for the BI tool:

```sql
-- Standardizing the launch date
UPDATE car_sales
SET launch_date_fixed = STR_TO_DATE(latest_launch, '%d-%b-%y');

-- Optimizing column types for analysis
ALTER TABLE car_sales 
MODIFY COLUMN Sales_in_thousands DECIMAL(10,3),
MODIFY COLUMN Price_in_thousands DECIMAL(10,3),
MODIFY COLUMN Fuel_efficiency INT;
```

---

## Data Visualizations

### 📊 Vehicle Sales Dashboard (Overview)
![Dashboard Screenshot](./Screenshots/your_dashboard_image.png)

---

### 🔥 Sales Performance: Toyota Model Comparison
I filtered the dashboard to analyze the sales and pricing of the top Toyota models.

| Vehicle Model | Total Sales (Thousands) | Average Price ($K) |
| :--- | :--- | :--- |
| **Camry** | 247.99 | **17.52** |
| **Corolla** | 142.54 | **13.11** |
| **Avalon** | 63.85 | **25.55** |
| **Celica** | 33.27 | **16.88** |

**💡 Key Insight:** The **Camry** is the dominant volume leader, accounting for over 50% of sales in this subset. This shows that the market favors mid-range pricing over high-end luxury models like the Avalon.

---

### 📉 Does Luxury Cost the Planet? (Price vs. MPG)
![Price vs MPG Chart](./Screenshots/price_vs_mpg.png)

**Insight:** This scatter plot analyzes the relationship between vehicle price and fuel efficiency. As the **Price in thousands** increases, **Fuel Efficiency (MPG)** generally decreases, showing a clear trade-off between luxury/performance and environmental impact.

---

### 🍩 Market Share: Fuel Efficiency by Model
![Efficiency Chart](./Screenshots/efficiency_chart.png)

**Insight:** While the Camry leads in sales, the **Corolla** leads in efficiency (33 MPG). This visualization helps consumers choose models based on their priority: volume/space vs. fuel savings.

---

