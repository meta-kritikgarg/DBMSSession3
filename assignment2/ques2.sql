SELECT issue_dt, accession_no, member_id, due_dt, TIMESTAMPDIFF(MONTH,issue_dt,due_dt) AS can_return
FROM book_issue
WHERE TIMESTAMPDIFF(MONTH,issue_dt,due_dt) >2