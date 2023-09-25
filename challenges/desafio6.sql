SELECT MIN(p.valor_planos) AS faturamento_minimo,
FORMAT(MAX(p.valor_planos), 2) AS faturamento_maximo,
FORMAT(AVG(p.valor_planos), 2) AS faturamento_medio,
SUM(p.valor_planos) AS faturamento_total
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.planos AS p ON u.planos_id = p.planos_id
