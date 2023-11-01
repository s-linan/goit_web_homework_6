SELECT st.fullname AS student_name, s.name AS subject_name
FROM students st
JOIN grades g ON st.id = g.student_id
JOIN subjects s ON g.subject_id = s.id
WHERE st.id = 1; -- ID студента