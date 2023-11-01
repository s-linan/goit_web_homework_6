SELECT t.fullname AS teacher_name, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN subjects s ON g.subject_id = s.id
JOIN teachers t ON s.teacher_id = t.id
WHERE t.id = 1  -- ID викладача
GROUP BY t.fullname;