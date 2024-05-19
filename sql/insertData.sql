INSERT INTO authors ("name", "bio")
VALUES ('Eiichiro Oda', 'Eiichiro Oda em um mangaká conhecido pela criação do mangá One Piece.'),
('J. K. Rowling', 'J. K. Rowling é uma escritora, roteirista e produtora cinematográfica britânica, notória por escrever a série de livros Harry Potter.'), ('Osvaldo Silva', 'Autor e compositor brasileiro.') RETURNING *;

INSERT INTO books ("name", "pages", "createdAt", "updatedAt", "authorId")
VALUES ('Harry Potter', 325, '19-05-2024', '19-05-2024', 2),
('Jogos Vorazes', 276, '19-05-2024', '19-05-2024', NULL),
('One Piece - Volume 1', 120, '19-05-2024', '19-05-2024', NULL),
('One Piece - Volume 2', 137, '19-05-2024', '19-05-2024', NULL) RETURNING *;

INSERT INTO categories ("name", "createdAt", "updatedAt")
VALUES ('Mangá', '19-05-2024', '19-05-2024'),
('Aventura', '19-05-2024', '19-05-2024'),
('Fantasia', '19-05-2024', '19-05-2024') RETURNING *;

INSERT INTO books_categories ("bookId", "categoryId")
VALUES (1, 2), (2, 2), (3, 2), (4, 2), (1, 3), (3, 3), (4, 3), (3, 1), (4, 1) RETURNING *;

INSERT INTO contact_infos ("phone", "email", "authorId")
VALUES ('(44) 99123-4567', 'osvaldo@osvaldocompany.com', 3) RETURNING *;