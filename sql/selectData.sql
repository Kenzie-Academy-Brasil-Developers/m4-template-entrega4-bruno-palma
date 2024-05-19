SELECT * FROM books;

SELECT 
books."id",
books."name",
books."pages",
books."createdAt",
books."updatedAt",
books."authorId",
books_categories."categoryId"
FROM books 
JOIN books_categories ON books."id" = books_categories."bookId"
WHERE books_categories."categoryId" = 3;

SELECT 
books."id" AS "bookId",
books."name" AS "bookName",
books."pages",
books."authorId",
categories."id" AS "categoryId",
categories."name" AS "categoryName"
FROM books 
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON categories."id" = books_categories."categoryId";

SELECT 
books."id" AS "bookId",
books."name" AS "bookName",
books."pages",
authors."id" AS "authorId",
authors."name" AS "authorName",
authors."bio"
FROM books 
JOIN authors ON books."authorId" = authors."id"
WHERE books."id" = 1;