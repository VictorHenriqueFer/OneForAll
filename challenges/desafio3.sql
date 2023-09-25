SELECT u.nome AS pessoa_usuaria, COUNT(h.user_id) AS musicas_ouvidas, FORMAT(SUM(CEIL(m.duracao) / 60), 2) AS total_minutos
FROM SpotifyClone.user AS u
JOIN SpotifyClone.historico AS h ON u.user_id = h.user_id
JOIN SpotifyClone.musica AS m ON h.musica_id = m.musica_id
GROUP BY u.nome;

