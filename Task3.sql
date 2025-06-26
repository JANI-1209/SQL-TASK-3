USE librarydb;
SELECT B.Title, A.Name AS Author, C.CategoryName
FROM Books B
JOIN Authors A ON B.AuthorID = A.AuthorID
JOIN Categories C ON B.CategoryID = C.CategoryID;

SELECT * FROM Students;

SELECT S.Name, B.Title, BB.BorrowDate
FROM BorrowedBooks BB
JOIN Students S ON BB.StudentID = S.StudentID
JOIN Books B ON BB.BookID = B.BookID
WHERE BB.ReturnDate IS NULL;

SELECT * FROM BorrowedBooks
WHERE BorrowDate BETWEEN '2025-06-01' AND '2025-06-05';

SELECT * FROM Books
ORDER BY Title ASC;

SELECT * FROM Categories
ORDER BY CategoryName DESC;

SELECT * FROM Students
WHERE Email IS NULL;

SELECT * FROM Books
WHERE Title LIKE '%Code%';

SELECT * FROM BorrowedBooks
ORDER BY BorrowDate DESC
LIMIT 2;

SELECT S.Name, COUNT(*) AS BooksBorrowed
FROM BorrowedBooks BB
JOIN Students S ON BB.StudentID = S.StudentID
GROUP BY S.Name;
