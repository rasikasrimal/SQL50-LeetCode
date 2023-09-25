SELECT
    q1.query_name,
    ROUND(SUM(q1.rating/q1.position) / q2.count_query_name, 2) AS quality,
    ROUND((SUM(CASE WHEN q1.rating < 3 THEN 1 ELSE 0 END) / q2.count_query_name) * 100, 2) AS poor_query_percentage
FROM
    queries q1
JOIN (
    SELECT
        query_name,
        COUNT(query_name) AS count_query_name
    FROM
        queries
    GROUP BY
        query_name
) q2
ON
    q1.query_name = q2.query_name
GROUP BY
    q1.query_name, q2.count_query_name;
