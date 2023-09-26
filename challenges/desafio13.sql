SELECT
    CASE
        WHEN idade <= 30 THEN 'Até 30 anos'
        WHEN idade > 30 AND idade <= 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT u.user_id) AS total_pessoas_usuarias,
    COUNT(c.musica_id) AS total_favoritadas
FROM SpotifyClone.user AS u
LEFT JOIN SpotifyClone.cancoes_favoritas AS c ON c.user_id = u.user_id
LEFT JOIN SpotifyClone.musica AS m ON c.musica_id = m.musica_id
GROUP BY faixa_etaria;