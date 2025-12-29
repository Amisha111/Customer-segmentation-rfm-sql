-- Segment-wise KPI calculation

SELECT
    customer_segment,
    COUNT(customer_id) AS total_customers,
    ROUND(AVG(monetary / frequency), 2) AS avg_order_value,
    ROUND(AVG(frequency), 2) AS repeat_rate,
    ROUND(AVG(recency_score), 2) AS churn_proxy
FROM segmented_customers
GROUP BY customer_segment
ORDER BY total_customers DESC;
