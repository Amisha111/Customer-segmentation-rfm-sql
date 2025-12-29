-- Customer segmentation logic

CREATE VIEW segmented_customers AS
SELECT *,
    recency_score + frequency_score + monetary_score AS rfm_total,
    CASE
        WHEN (recency_score + frequency_score + monetary_score) >= 13 THEN 'VIP Customers'
        WHEN recency_score >= 4 AND frequency_score <= 2 THEN 'New Customers'
        WHEN recency_score <= 2 AND frequency_score >= 3 THEN 'At-Risk Loyal'
        WHEN frequency = 1 THEN 'One-Time Buyers'
        ELSE 'Regular Customers'
    END AS customer_segment
FROM rfm_scored;
