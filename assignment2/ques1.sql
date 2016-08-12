SELECT S.subject_nm ,   S.subjects_id , COUNT(S.subjects_id) AS NoOfBooks
FROM books B 
LEFT JOIN  titles T ON B.title_id =  T.title_id 
LEFT JOIN subjects S ON T.subjects_id = S.subjects_id 
GROUP BY S.subjects_id;