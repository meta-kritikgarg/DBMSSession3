SELECT member_nm, length(member_nm) AS length FROM members WHERE length(member_nm) = (SELECT max(length(member_nm)) FROM members);