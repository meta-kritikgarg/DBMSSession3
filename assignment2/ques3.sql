SELECT accession_no, price 
FROM books
WHERE price>(SELECT MIN(price) FROM books)
ORDER BY price;