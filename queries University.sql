-- -- 1․
-- SELECT
--     f.faculty AS Faculty,
--     c.course AS Course,
--     SUM(pl.dur_sub * s.price_sub) AS OneYearFee
-- FROM
--     faculties f
    
--     JOIN professions pf ON f.id = pf.faculity_id
--     JOIN plan pl ON pf.plan_id = pl.id
--     JOIN bridge_lect bl ON pl.id = bl.plan_id
--     JOIN subjects s ON bl.subject_id = s.id
--     JOIN courses c ON pf.course_id = c.id
-- GROUP BY
--     Faculty,
--     Course;
	
-- 2.
-- select 
-- 	sum(oneyearfee) AS The_income_received
-- from
-- 	(SELECT
--     f.faculty AS Faculty,
--     c.course AS Course,
--     SUM((pl.dur_sub * s.price_sub) + p.price_prog) AS OneYearFee
-- FROM
--     faculties f
--     JOIN bridge_stud bs ON f.id = bs.faculty_id
--     JOIN programs p ON bs.program_id = p.id
--     JOIN professions pf ON f.id = pf.faculity_id
--     JOIN plan pl ON pf.plan_id = pl.id
--     JOIN bridge_lect bl ON pl.id = bl.plan_id
--     JOIN subjects s ON bl.subject_id = s.id
--     JOIN courses c ON pf.course_id = c.id
-- GROUP BY
--     Faculty,
--  	Course) as i
	
-- 	;




-- 3.

-- SELECT 
--     st.student,
--     c.course,
--     f.faculty,
--     sb.subject,
--     e.scores,
--     CASE
--         WHEN e.scores < 70 THEN 'լիկվիդ'
--         ELSE 'բավարար'
--     END AS Comment
-- FROM
--     exam e
--     JOIN bridge_exam be ON e.id = be.exam_id
--     JOIN students st ON be.student_id = st.id
--     JOIN professions pf ON e.profession_id = pf.id
--     JOIN courses c ON pf.course_id = c.id
--     JOIN faculties f ON pf.faculity_id = f.id
--     JOIN plan pl ON pf.plan_id = pl.id
--     JOIN bridge_lect bl ON pl.id = bl.plan_id
--     JOIN subjects sb ON bl.subject_id = sb.id;

-- 4․

-- SELECT 
-- 	course,
-- 	student,
-- 	avg_score,
-- 	'Ավարտել է' as avg_score
	

    
-- FROM      
--      (
--       SELECT 
--     c.course,
-- 	f.faculty,
-- 	s.student,
--     AVG(e.scores) AS avg_score
		
    
		
-- FROM courses c
-- JOIN professions pf ON c.id = pf.course_id
-- JOIN exam e ON pf.id = e.profession_id
-- JOIN students s ON pf.id = s.profession_id
-- JOIN faculties f ON pf.faculity_id = f.id
-- JOIN bridge_stud bs ON f.id = bs.faculty_id
-- JOIN programs p ON bs.program_id = p.id
-- JOIN plan pl ON pf.plan_id = pl.id
-- JOIN bridge_lect bl ON pl.id = bl.plan_id
-- JOIN subjects sb ON bl.subject_id = sb.id
-- GROUP BY s.student, f.faculty, c.course) AS a

-- where avg_score > 70;






-- 5.


-- tarberak 1
-- SELECT 

-- 	max(avg_score),
-- 	min(avg_score)
	
	
 
-- FROM      
--      (
--       SELECT 
--     c.course,
-- 	f.faculty,
-- 	s.student,
--     AVG(e.scores) AS avg_score
		
    
		
-- FROM courses c
-- JOIN professions pf ON c.id = pf.course_id
-- JOIN exam e ON pf.id = e.profession_id
-- JOIN students s ON pf.id = s.profession_id
-- JOIN faculties f ON pf.faculity_id = f.id
-- JOIN bridge_stud bs ON f.id = bs.faculty_id
-- JOIN programs p ON bs.program_id = p.id
-- JOIN plan pl ON pf.plan_id = pl.id
-- JOIN bridge_lect bl ON pl.id = bl.plan_id
-- JOIN subjects sb ON bl.subject_id = sb.id
-- GROUP BY s.student, f.faculty, c.course) AS a;


	
	
-- tarberak 2
-- SELECT 
--     student,
--     max(avg_score) as Best_Student,
--     min(avg_score) as Worst_Student
-- FROM      
--      (
--       SELECT 
--         c.course,
--         f.faculty,
--         s.student,
--         AVG(e.scores) AS avg_score
--       FROM courses c
--       JOIN professions pf ON c.id = pf.course_id
--       JOIN exam e ON pf.id = e.profession_id
--       JOIN students s ON pf.id = s.profession_id
--       JOIN faculties f ON pf.faculity_id = f.id
--       JOIN bridge_stud bs ON f.id = bs.faculty_id
--       JOIN programs p ON bs.program_id = p.id
--       JOIN plan pl ON pf.plan_id = pl.id
--       JOIN bridge_lect bl ON pl.id = bl.plan_id
--       JOIN subjects sb ON bl.subject_id = sb.id
--       GROUP BY c.course, f.faculty, s.student  -- Включаем столбец student в GROUP BY
--      ) AS a
-- GROUP BY student;




-------------------------------------------------

-- 6


	
-- SELECT 
-- 	student,
-- 	sum(dur_sub * price_sub) as oneyear_sp,
-- 	sum(price_prog) as oneyear_pp,
-- 	(sum(dur_sub * price_sub)+sum(price_prog)) as general
	
-- FROM courses c
-- JOIN professions pf ON c.id = pf.course_id
-- JOIN students st ON pf.id = st.profession_id


-- JOIN plan pl ON pf.plan_id = pl.id
-- JOIN bridge_lect bl ON pl.id = bl.plan_id
-- JOIN subjects sb ON bl.subject_id = sb.id

-- JOIN faculties f ON pf.faculity_id = f.id
-- JOIN bridge_stud bs ON f.id = bs.faculty_id
-- JOIN programs p ON bs.program_id = p.id

-- group by student

-- ;





