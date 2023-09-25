SELECT COUNT(h.user_id) as musicas_no_historico
FROM SpotifyClone.user AS u 
LEFT JOIN SpotifyClone.historico AS h ON u.user_id = h.user_id
WHERE u.nome = 'Barbara Liskov';