-- Write your MySQL query statement below
SELECT name FROM customer where referee_id IS NULL OR referee_id != 2;

# 2nd Method
# WHERE COALESCE(referee_id, -1) <> 2; 
# This condition will return rows where the referee_id is not equal to 2 or NULL. 
# If referee_id is NULL, it will be treated as -1 in the comparison.
