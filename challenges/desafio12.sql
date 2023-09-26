SELECT art.nome AS artista,
CASE
	WHEN COUNT(c.musica_id) >= 5 THEN 'A'
    WHEN COUNT(c.musica_id) BETWEEN 3 AND 4 THEN 'B'
    WHEN COUNT(c.musica_id)  BETWEEN 1 AND 2 THEN 'C'
    ELSE '-'
    END AS ranking
FROM SpotifyClone.album AS a
INNER JOIN SpotifyClone.musica AS m ON m.album_id = a.album_id
INNER JOIN SpotifyClone.cancoes_favoritas AS c ON c.musica_id = m.musica_id
RIGHT JOIN SpotifyClone.artista AS art ON art.artista_id = a.artista_id
GROUP BY artista
ORDER BY COUNT(c.musica_id) DESC, artista ASC;