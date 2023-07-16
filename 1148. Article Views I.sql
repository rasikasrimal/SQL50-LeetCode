-- Write your MySQL query statement below
SELECT DISTINCT author_id as id FROM views where author_id = viewer_id ORDER BY ID ASC;

-- DISTINCT --> to remove duplicate values
-- ORDER BY ID ASC --> to rearrange raws in ascending order
