SELECT
    s.id,
    s.fullname,
    ROUND(AVG(g.grade), 2) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
GROUP BY s.id
ORDER BY average_grade DESC
LIMIT 5;


SELECT
    s.id,
    s.fullname,
    ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
where g.subject_id = 1  -- ID предмета
GROUP BY s.id
ORDER BY average_grade DESC
LIMIT 1;


SELECT g.subject_id, s.group_id, ROUND(AVG(g.grade), 2) as average_grade
FROM grades g
JOIN students s ON g.student_id = s.id
WHERE g.subject_id = 1  -- ID предмета
GROUP BY g.subject_id, s.group_id;


SELECT ROUND(AVG(grade), 2) as average_grade
FROM grades;


SELECT t.fullname AS teacher_name, s.name AS subject_name
FROM teachers t
JOIN subjects s ON t.id = s.teacher_id
WHERE t.id = 1; -- ID викладача


SELECT fullname
FROM students
WHERE group_id = 1; -- ID групи


SELECT s.fullname AS student_name, g.grade, g.grade_date
FROM students s
JOIN grades g ON s.id = g.student_id
WHERE s.group_id = 1 AND g.subject_id = 1; -- ID групи та ID предмета


SELECT t.fullname AS teacher_name, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN subjects s ON g.subject_id = s.id
JOIN teachers t ON s.teacher_id = t.id
WHERE t.id = 1  -- ID викладача
GROUP BY t.fullname;


SELECT st.fullname AS student_name, s.name AS subject_name
FROM students st
JOIN grades g ON st.id = g.student_id
JOIN subjects s ON g.subject_id = s.id
WHERE st.id = 1; -- ID студента


SELECT st.fullname AS student_name, s.name AS subject_name, t.fullname AS teacher_name
FROM subjects s
JOIN teachers t ON s.teacher_id = t.id
JOIN grades g ON s.id = g.subject_id
JOIN students st ON g.student_id = st.id
WHERE s.teacher_id = 1 AND g.student_id = 1  -- ID вчителя та ID студента