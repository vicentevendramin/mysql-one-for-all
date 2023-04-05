SELECT u.user_name AS pessoa_usuaria,
	IF(MAX(YEAR(h.historic_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.users u
	INNER JOIN SpotifyClone.historic h ON h.user_id = u.user_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;