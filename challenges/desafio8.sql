SELECT a.nome AS artista,  alb.nome AS album
FROM SpotifyClone.artista as a
LEFT JOIN SpotifyClone.album as alb ON a.artista_id = alb.artista_id
WHERE a.nome = 'Elis Regina';