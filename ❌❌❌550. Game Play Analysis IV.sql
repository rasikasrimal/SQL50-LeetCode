SELECT
    ROUND(
        COUNT(DISTINCT CASE WHEN E2 IS NOT NULL THEN player_id END) /
        COUNT(DISTINCT player_id), 2
    ) AS fraction
FROM (
    SELECT a1.player_id, a1.event_date AS E1, a2.event_date AS E2
    FROM (
        SELECT player_id, event_date
        FROM activity
        ORDER BY player_id, event_date
    ) AS a1
    LEFT JOIN (
        SELECT player_id, event_date
        FROM activity
        ORDER BY player_id, event_date
    ) AS a2
    ON a1.event_date = DATE_ADD(a2.event_date, INTERVAL -1 DAY)
    GROUP BY a1.player_id, a1.event_date
) AS subquery;
