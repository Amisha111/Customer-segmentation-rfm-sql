-- Data preparation and cleaning

-- Create a clean table from the raw dataset
CREATE TABLE superstore_clean AS
SELECT
    "Order ID" AS order_id,
    "Order Date" AS order_date,
    "Customer ID" AS customer_id,
    "Customer Name" AS customer_name,
    "Sales" AS sales,
    "Country" AS country
FROM superstore
WHERE "Sales" > 0;
