SELECT T.title_nm, P.publisher_nm, COUNT(T.title_nm) AS TotalNo
FROM book_issue I
LEFT JOIN books B ON I.accession_no = B.accession_no
LEFT JOIN titles T ON T.title_id = B.title_id
LEFT JOIN publisher P ON P.publisher_id = T.pub_id
GROUP BY T.title_nm
HAVING COUNT(T.title_nm) >2
ORDER BY TotalNo
;