SELECT t.product_id, COALESCE(t.average_price, 0) AS average_price
FROM (
    SELECT
        p.product_id,
        p.price,
        SUM(CASE WHEN u.purchase_date BETWEEN p.start_date AND p.end_date THEN u.units ELSE 0 END) AS total_units_sold,
        SUM(p.price * CASE WHEN u.purchase_date BETWEEN p.start_date AND p.end_date THEN u.units ELSE 0 END) AS total_price,
        ROUND(
            SUM(p.price * CASE WHEN u.purchase_date BETWEEN p.start_date AND p.end_date THEN u.units ELSE 0 END) /
            NULLIF(SUM(CASE WHEN u.purchase_date BETWEEN p.start_date AND p.end_date THEN u.units ELSE 0 END), 0),
            2
        ) AS average_price
    FROM prices AS p
    LEFT JOIN unitssold AS u ON p.product_id = u.product_id
    GROUP BY p.product_id
) AS t;
