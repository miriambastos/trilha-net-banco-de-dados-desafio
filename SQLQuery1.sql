-- 1
SELECT 
	Nome,
	Ano
FROM Filmes

--2
SELECT * FROM Filmes
ORDER BY Ano ASC

--3
SELECT * FROM  Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT * FROM Filmes
WHERE Ano LIKE '1997%' 

--5
SELECT * FROM Filmes
WHERE Ano LIKE '2%'

--6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT
	Ano,
COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores 
WHERE Genero = 'M'

--9
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10
SELECT 
	F.Nome, G.Genero 
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON G.Id = FG.IdGenero

--11
SELECT 
	F.Nome, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

--12
SELECT 
	F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel 
FROM Filmes F
JOIN ElencoFilme EF ON F.Id = EF.IdFilme
JOIN Atores A ON A.Id = EF.IdAtor;


