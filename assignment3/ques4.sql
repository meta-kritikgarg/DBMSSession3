
SELECT DISTINCT T.auther_id , A.auther_nm , COUNT(T.auther_id)
FROM  title_auther T
LEFT JOIN books B ON B.title_id = T.title_id
LEFT JOIN authers A on A.auther_id = T.auther_id
GROUP BY T.auther_id;