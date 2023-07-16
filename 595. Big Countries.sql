-- Write your MySQL query statement below
SELECT name,population,area from World where area >= 3000000 or population >= 25000000;

#Another way - USING UNION KEYWORD
#SELECT name,population,area from World where area >= 3000000 UNION SELECT name,population,area from World where population >= 25000000;
