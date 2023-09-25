SELECT a.nome AS artista,  alb.nome AS album, COUNT(s.artista_id) AS pessoas_seguidoras
FROM SpotifyClone.artista AS a
LEFT JOIN SpotifyClone.album AS alb ON a.artista_id = alb.artista_id
LEFT JOIN SpotifyClone.seguindo AS s ON s.artista_id = a.artista_id
GROUP BY album, artista
ORDER BY pessoas_seguidoras DESC, SUBSTRING(artista, 1, 1) ASC,SUBSTRING(album, 1, 1) ASC;

