SELECT s.song_name AS cancao,
	COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.songs s
	INNER JOIN SpotifyClone.historic h ON h.song_id = s.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;