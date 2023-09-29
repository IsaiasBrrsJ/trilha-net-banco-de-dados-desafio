SELECT Filmes.Nome, Filmes.Ano FROM Filmes

SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes
ORDER BY Filmes.Ano DESC

SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes
WHERE Filmes.Nome LIKE 'De %Futuro'

SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes
WHERE Filmes.Ano = 1997

SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes
WHERE Filmes.Ano > 2000

SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes
WHERE Filmes.Duracao BETWEEN 101 and 149
ORDER BY Filmes.Duracao 

SELECT Filmes.Ano,COUNT(*) AS Quantidade FROM Filmes
GROUP BY Filmes.Ano
ORDER BY Quantidade DESC

SELECT Atores.Id, Atores.PrimeiroNome,
 Atores.UltimoNome, Atores.Genero
FROM Atores AS Atores
WHERE Atores.Genero = 'M'


SELECT Atores.Id, Atores.PrimeiroNome,
 Atores.UltimoNome, Atores.Genero
FROM Atores AS Atores
WHERE Atores.Genero = 'F'
ORDER BY Atores.PrimeiroNome



SELECT Filmes.Nome, Generos.Genero 
	FROM FilmesGenero AS FilmesGenero
INNER JOIN Filmes AS  Filmes
	ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos AS Generos
	ON Generos.Id = FilmesGenero.IdGenero;


SELECT Filmes.Nome, Generos.Genero 
	FROM Filmes AS Filmes
INNER JOIN Generos AS Generos
ON Generos.Genero = 'Mistério'


SELECT Filmes.Nome ,Atores.PrimeiroNome, 
	   Atores.UltimoNome, ElencoFilme.Papel
FROM Atores AS Atores
INNER JOIN ElencoFilme AS ElencoFilme
	ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes AS Filmes
	ON Filmes.Id = ElencoFilme.IdFilme
