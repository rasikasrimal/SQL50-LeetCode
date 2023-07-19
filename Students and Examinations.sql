SELECT Students.student_id, Students.student_name, Subjects.subject_name, IFNULL(attended_exams, 0) AS attended_exams
FROM Students
CROSS JOIN Subjects
LEFT JOIN (
  SELECT student_id, subject_name, COUNT(*) AS attended_exams
  FROM Examinations
  GROUP BY student_id, subject_name
) AS T ON Students.student_id = T.student_id AND Subjects.subject_name = T.subject_name
ORDER BY Students.student_id ASC, Subjects.subject_name ASC;
