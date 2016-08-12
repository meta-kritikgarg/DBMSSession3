SELECT I.issue_dt,I.due_dt, I.accession_no, M.member_nm, M.addressline1 ,M.addressline2, M.category
FROM book_issue I
LEFT JOIN members M ON I.member_id = M.members_id
WHERE M.category <> 'F'
ORDER BY M.member_nm;