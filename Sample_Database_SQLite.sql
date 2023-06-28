SELECT *
FROM Customer 

--PROJEÇÃO 

-- Limite

SELECT *
FROM Customer
LIMIT 10

-- Contador

SELECT COUNT(*)
FROM Customer

SELECT
	FirstName,
	LastName,
	City
FROM Customer 
LIMIT 10

-- Apelido, Alias

SELECT
	FirstName as Nome,
	LastName as Sobrenome,
	City as Cidade
FROM Customer 
ORDER BY 3 DESC

SELECT
	FirstName as Nome,
	LastName as Sobrenome,
	City as Cidade
FROM Customer
ORDER BY 1 ASC 

SELECT
	FirstName as "Nome",
	LastName as "Sobrenome",
	City as "Cidade do Cliente"
FROM Customer
ORDER BY 1 ASC

-- SELEÇÃO -- FILTRO 

SELECT *
FROM Album
WHERE Title = "Big Ones"

-- Consultas de String devem respeitar maiúsculas e minúsculas (Case sensitive)

SELECT *
FROM Album
WHERE ArtistId = 10

-- Selecionando valores nulos e não nulos

SELECT *
FROM Album 
WHERE Column1 NOTNULL

SELECT *
FROM Album 
WHERE Column1 is NULL

-- Filtros com valores lógicos

SELECT *
FROM Album
WHERE AlbumId >= 100
ORDER BY Title ASC

SELECT * 
FROM Album
WHERE AlbumId
	BETWEEN 10 and 30
	
SELECT *
FROM Album
WHERE AlbumId >= 100
	AND ArtistId = 22
	
SELECT *
FROM Album
WHERE AlbumId >= 100
	OR ArtistId = 22

-- Usando like

SELECT *
FROM Album
WHERE Title LIKE "Big Ones"

SELECT *
FROM Album
WHERE Title LIKE "Big%" -- % é um símbolo coringa

SELECT *
FROM Album
WHERE Title LIKE "%Vivo" -- % é um símbolo coringa
	
SELECT *
FROM Album
WHERE Title LIKE "%DISC%" 

SELECT * 
FROM Artist
WHERE Name LIKE "AC_DC" -- _ é um símbolo coringa

-- Manipulação de dados

SELECT *
FROM Genre
LIMIT 10

SELECT *
FROM Genre
WHERE Name like "MPB"

INSERT INTO Genre (GenreId, Name)
VALUES (NULL, "MPB")

-- ID 26

SELECT *
FROM Artist
WHERE Name like "TOQUINHO"

INSERT INTO Artist (Name)
VALUES ("Toquinho")

-- 276

SELECT *
FROM Track

INSERT INTO Track
VALUES (NULL, "Aquarela", NULL, 1, 26, "Toquinho e Vinicius", 2500000, 8000000, 5.99)

SELECT *
FROM Track
WHERE GenreId = 26

-- Atualização de dados de uma tabela

SELECT *
FROM Customer
WHERE CustomerId = 2

UPDATE Customer
SET Company = "EBAC"
WHERE CustomerId = 2

SELECT *
FROM Customer
WHERE Country like "Bra_il"

UPDATE Customer
SET Country = "Brasil"
WHERE Country like "Bra_il"

-- Exclusão de registro -- Delete

SELECT *
FROM Invoice
WHERE Total >= 20
	AND BillingCountry like "USA"
	
DELETE
FROM Invoice
WHERE Total >= 20
	AND BillingCountry like "USA"
	

-- Junção de dados
	
SELECT COUNT(*)
FROM Album

SELECT COUNT(*)
FROM Artist

-- forma errada de juntar base de dados
SELECT COUNT(*)
FROM Album, Artist

-- Join

SELECT
	Album.Title,
	Artist.Name
FROM Album
INNER JOIN Artist
	ON Album.AlbumId = Artist.ArtistId
WHERE name like "Iron Maiden"

SELECT
	Album.Title as "Título do album",
	Artist.Name as "Nome do artista",
	Track.Name as "Nome da música"
FROM Album
INNER JOIN Artist
	ON Album.AlbumId = Artist.ArtistId
INNER JOIN Track
	ON Album.AlbumId = Track.AlbumId

-- Criação de tabelas
	
	CREATE TABLE Aluno(
		AlunosId INTEGER PRIMARY KEY AUTOINCREMENT,
		Nome VARCHAR (30),
		Matricula INTEGER (5)
);

SELECT * FROM Aluno

INSERT INTO Aluno (Nome, Matricula)
VALUES
	("Fábio Araújo", 12345),
	("Mariana Silva", 43566),
	("José Ernesto", 54321)
	
-- Excluindo tabela
	
DROP TABLE Aluno


