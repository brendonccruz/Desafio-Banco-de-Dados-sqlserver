-- OBJETIVO 1
SELECT 
	Nome,
	Ano
FROM Filmes;

-- OBJETIVO 2
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC;

-- OBJETIVO 3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- OBJETIVO 4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997;

-- OBJETIVO 5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000;

-- OBJETIVO 6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100  AND Duracao < 150
ORDER BY Duracao ASC;

-- OBJETIVO 7
SELECT
	Ano,
	COUNT(Ano) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- OBJETIVO 8
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';

-- OBJETIVO 9
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- OBJETIVO 10
SELECT
	Filmes.Nome,
	Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero
	ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
	ON Generos.Id = FilmesGenero.IdGenero;

-- OBJETIVO 11
SELECT
	Filmes.Nome,
	Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero
	ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
	ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério';

-- OBJETIVO 12
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme
	ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores
	ON Atores.Id = ElencoFilme.IdAtor

-- SELECAO TABELAS
SELECT * FROM Filmes
SELECT * FROM FilmesGenero
SELECT * FROM Generos
SELECT * FROM Atores
SELECT * FROM ElencoFilme