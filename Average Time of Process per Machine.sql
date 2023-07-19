# Write your MySQL query statement below
SELECT machine_id,ROUND ((A-B)/N, 3) AS processing_time
FROM (
  SELECT machine_id,
    SUM(CASE WHEN activity_type = 'end' THEN timestamp ELSE 0 END) AS A,
    SUM(CASE WHEN activity_type = 'start' THEN timestamp ELSE 0 END) AS B,
    COUNT(DISTINCT process_id) as N
  FROM Activity
  GROUP BY machine_id
) AS subquery;
