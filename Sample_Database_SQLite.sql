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
