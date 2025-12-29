-- RFM scoring using window functions

CREATE VIEW rfm_scored AS
SELECT
    customer_id,
    customer_name,
    last_purchase_date,
    frequency,
    monetary,
    NTILE(5) OVER (ORDER BY last_purchase_date DESC) AS recency_score,
    NTILE(5) OVER (ORDER BY frequency) AS frequency_score,
    NTILE(5) OVER (ORDER BY monetary) AS monetary_score
FROM rfm_base;
