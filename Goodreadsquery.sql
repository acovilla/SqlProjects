-- Number of books read by year
SELECT YEAR(DateRead) AS YearRead, COUNT(Title) AS NumberOfBooks
FROM books
WHERE ReadOrNotRead = 'Read'
GROUP BY YEAR(DateRead)

--Number of books read by author
SELECT Author, COUNT(Title) AS NumberOfBooks
FROM books
WHERE ReadOrNotRead = 'Read'
GROUP BY Author

--Average rating by publisher
SELECT Publisher, AVG(MyRating) AS AverageRating
FROM books
GROUP BY Publisher

--Number of pages read by year
SELECT YEAR(DateRead) AS YearRead, SUM(NumberOfPages) AS PagesRead
FROM books
WHERE ReadOrNotRead = 'Read'
GROUP BY YEAR(DateRead)
