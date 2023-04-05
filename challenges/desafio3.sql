SELECT u.user_name AS pessoa_usuaria,
	COUNT(h.user_id) AS musicas_ouvidas,
	ROUND(SUM(s.song_duration) / 60, 2) AS total_minutos
FROM SpotifyClone.users u
	INNER JOIN SpotifyClone.historic h ON h.user_id = u.user_id
	INNER JOIN SpotifyClone.songs s ON s.song_id = h.song_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;