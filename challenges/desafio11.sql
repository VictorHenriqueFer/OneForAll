SELECT a.nome AS album, COUNT(c.musica_id) AS favoritadas
FROM SpotifyClone.album AS a
INNER JOIN SpotifyClone.musica AS m ON m.album_id = a.album_id
INNER JOIN SpotifyClone.cancoes_favoritas AS c ON c.musica_id = m.musica_id
GROUP BY a.nome
ORDER BY favoritadas DESC, album LIMIT 3;