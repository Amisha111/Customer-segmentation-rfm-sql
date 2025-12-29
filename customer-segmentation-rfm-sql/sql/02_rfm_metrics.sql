-- RFM base metrics calculation

CREATE VIEW rfm_base AS
SELECT
    customer_id,
    customer_name,
    MAX(order_date) AS last_purchase_date,
    COUNT(DISTINCT order_id) AS frequency,
    SUM(sales) AS monetary
FROM superstore_clean
GROUP BY customer_id, customer_name;
