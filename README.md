Vehicle Sales Analysis 🏎️📊
Project Overview
This project focuses on cleaning and analyzing a dataset of vehicle sales and specifications. The goal was to take raw, messy data and transform it into a structured MySQL database for deep analytical insights, eventually visualizing market trends in Power BI.

Data Cleaning Challenges (The "Hard" Part)
The raw data contained several inconsistencies that prevented mathematical analysis. I solved these using SQL:

Date Standardization: Converted string dates like 2-Feb-14 into a standard DATE type using STR_TO_DATE.

Data Type Correction: Used ALTER TABLE to convert columns like Sales_in_thousands, Price_in_thousands, and Four_year_resale_value from strings to DECIMAL for accurate calculations.

Schema Optimization: Reconfigured the database by modifying column types for Horsepower, Fuel_efficiency, and Curb_weight to ensure the database is optimized for performance.

🛠️ Tech Stack & Data
Database: MySQL (Data Cleaning & Analysis)

Visualization: Power BI

SQL Scripts: [View SQL Script here 🔗]

Dataset: Raw Vehicle Sales Data 🚗

Key SQL Snippets
One of the most important parts was ensuring the numerical data was functional for the BI tool:

SQL
-- Standardizing the launch date
UPDATE car_sales
SET launch_date_fixed = STR_TO_DATE(latest_launch, '%d-%b-%y');

-- Optimizing column types for analysis
ALTER TABLE car_sales 
MODIFY COLUMN Sales_in_thousands DECIMAL(10,3),
MODIFY COLUMN Price_in_thousands DECIMAL(10,3),
MODIFY COLUMN Fuel_efficiency INT;

Data Visualizations
📊 Vehicle Sales Dashboard
🔥 Sales Performance: Toyota Analysis
By filtering for Toyota, I analyzed specific model performance:

Total Sales: The Camry is the clear leader with 247.99k units sold.

Efficiency: The Corolla offers the best fuel efficiency at 33 MPG.

Insight: There is a significant volume gap between mid-range sedans and luxury models like the Avalon.

📉 Does Luxury Cost the Planet? (Price vs. MPG)
I used a scatter plot to determine the relationship between vehicle cost and environmental impact.

Key Insight: As the Price in thousands increases, Fuel Efficiency (MPG) generally decreases, showing a clear trade-off between luxury/performance and fuel economy.
