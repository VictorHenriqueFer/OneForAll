SELECT u.nome AS pessoa_usuaria,
IF(MAX(YEAR(h.data_execucao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.user AS u
LEFT JOIN SpotifyClone.historico AS h ON u.user_id = h.user_id
GROUP BY u.nome;
