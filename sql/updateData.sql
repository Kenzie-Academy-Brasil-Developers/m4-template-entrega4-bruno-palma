UPDATE books SET ("name") = ROW ('Harry Potter e o Prisioneiro de Azkaban')
WHERE "id" = 1;

UPDATE books SET ("authorId") = ROW (1)
WHERE "name" ILIKE 'One Piece%';