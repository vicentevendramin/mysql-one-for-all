SELECT FORMAT(MIN(p.plan_price), 2) AS faturamento_minimo,
	FORMAT(MAX(p.plan_price), 2) AS faturamento_maximo,
  FORMAT(AVG(p.plan_price), 2) AS faturamento_medio,
  FORMAT(SUM(p.plan_price), 2) AS faturamento_total
FROM SpotifyClone.plans p
	INNER JOIN SpotifyClone.users u ON u.plan_id = p.plan_id;