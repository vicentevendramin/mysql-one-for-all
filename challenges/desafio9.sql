SELECT COUNT(h.song_id) AS musicas_no_historico
FROM SpotifyClone.users u
	INNER JOIN SpotifyClone.historic h ON h.user_id = u.user_id
WHERE u.user_name = 'Barbara Liskov';