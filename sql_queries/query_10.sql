SELECT st.fullname AS student_name, s.name AS subject_name, t.fullname AS teacher_name
FROM subjects s
JOIN teachers t ON s.teacher_id = t.id
JOIN grades g ON s.id = g.subject_id
JOIN students st ON g.student_id = st.id
WHERE s.teacher_id = 1 AND g.student_id = 1  -- ID вчителя та ID студента