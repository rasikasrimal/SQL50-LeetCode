SELECT ROUND(100 * SUM(j.immediate_count) / (SUM(j.immediate_count) + SUM(j.scheduled_count)), 2) AS immediate_percentage
FROM (
    SELECT 
        k.customer_id, 
        SUM(CASE WHEN k.customer_pref_delivery_date > k.order_date THEN 1 ELSE 0 END) AS scheduled_count, 
        SUM(CASE WHEN k.customer_pref_delivery_date = k.order_date THEN 1 ELSE 0 END) AS immediate_count
    FROM (
SELECT
    customer_id,
    order_date,
    customer_pref_delivery_date
FROM (
    SELECT
        customer_id,
        order_date,
        customer_pref_delivery_date,
        ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS row_num
    FROM delivery
) AS ranked
WHERE row_num = 1
    ) AS k
    GROUP BY k.customer_id
) AS j;
