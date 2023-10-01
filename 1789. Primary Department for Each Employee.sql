SELECT * FROM (
  SELECT employee_id, department_id
  FROM Employee
  WHERE primary_flag = 'Y'
  UNION
  SELECT employee_id, department_id
  FROM Employee
  WHERE primary_flag = 'N'
) AS K
GROUP BY employee_id;
