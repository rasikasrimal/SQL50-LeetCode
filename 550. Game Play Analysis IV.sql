SELECT
    ROUND(COUNT(DISTINCT CASE WHEN E1 = DATE_ADD(E2, INTERVAL -1 DAY) THEN player_id END) /
    COUNT(DISTINCT player_id),2) AS fraction
FROM (
    SELECT a1.player_id, a1.event_date AS E1, a2.event_date AS E2
    FROM activity AS a1
    LEFT JOIN activity AS a2
    ON a1.player_id = a2.player_id
) AS subquery;
