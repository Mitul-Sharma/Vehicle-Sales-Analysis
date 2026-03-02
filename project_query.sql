USE sales_db;

DROP TABLE IF EXISTS car_sales;

CREATE TABLE car_sales (
    Manufacturer VARCHAR(255),
    Model VARCHAR(255),
    Sales_in_thousands VARCHAR(255),
    Four_year_resale_value VARCHAR(255),
    Vehicle_type VARCHAR(255),
    Price_in_thousands VARCHAR(255),
    Engine_size VARCHAR(255),
    Horsepower VARCHAR(255),
    Wheelbase VARCHAR(255),
    Width VARCHAR(255),
    Length VARCHAR(255),
    Curb_weight VARCHAR(255),
    Fuel_capacity VARCHAR(255),
    Fuel_efficiency VARCHAR(255),
    Latest_Launch VARCHAR(255)
);

SELECT COUNT(*) AS total_rows FROM car_sales;

ALTER TABLE car_sales ADD COLUMN launch_date_fixed DATE;

UPDATE car_sales
SET launch_date_fixed = STR_TO_DATE(latest_launch,'%d-%b-%y');


ALTER TABLE car_sales DROP COLUMN Latest_Launch;
ALTER TABLE car_sales RENAME COLUMN Launch_Date_Fixed TO Latest_Launch;

ALTER TABLE car_sales 
MODIFY COLUMN Sales_in_thousands DECIMAL(10,3),
MODIFY COLUMN Price_in_thousands DECIMAL(10,3),
MODIFY COLUMN Four_year_resale_value DECIMAL(10,3);

ALTER TABLE car_sales
MODIFY COLUMN Wheelbase DECIMAL(10,1),
MODIFY COLUMN Width DECIMAL(10,1),
MODIFY COLUMN Length DECIMAL(10,1);

ALTER TABLE car_sales
MODIFY COLUMN Engine_size DECIMAL(5,2),
MODIFY COLUMN Horsepower INT,
MODIFY COLUMN Fuel_efficiency INT,
MODIFY COLUMN Fuel_capacity DECIMAL(10,1),
MODIFY COLUMN Curb_weight DECIMAL(10,3);

DESCRIBE car_sales;

SELECT * FROM car_sales;