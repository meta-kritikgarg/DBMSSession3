USE LibraryInformationSystem;

CREATE OR REPLACE VIEW due_books AS

SELECT i.issue_dt, i.accession_no, i.member_id ,i.due_dt, r.return_dt ,TIMESTAMPDIFF(MONTH,i.issue_dt,NOW()) as issued_for , B.title_id,
IFNULL(r.return_dt,TIMEDIFF(NOW(),i.issue_dt)) AS returnStatus
FROM book_issue i LEFT JOIN book_return r 
ON i.accession_no = r.accession_no AND
i.member_id = r.member_id AND
i.issue_dt = r.issue_dt
LEFT JOIN books B ON
B.accession_no = i.accession_no
WHERE TIMESTAMPDIFF(MONTH,i.issue_dt,NOW()) >2;

SELECT M.member_nm , M.members_id,  T.title_nm, V.accession_no , V.issue_dt,  V.due_dt ,V.issued_for 
FROM due_books V LEFT JOIN members M ON M.members_id = V.member_id 
LEFT JOIN titles T ON V.title_id = T.title_id
ORDER BY M.member_nm, T.title_nm ;
