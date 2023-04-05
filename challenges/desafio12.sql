SELECT ar.artist_name AS artista,
	CASE
		WHEN COUNT(fa.song_id) >= 5 THEN 'A'
    WHEN COUNT(fa.song_id) >= 3 AND COUNT(fa.song_id) < 5 THEN 'B'
		WHEN COUNT(fa.song_id) >= 1 AND COUNT(fa.song_id) < 3 THEN 'C'
    WHEN COUNT(fa.song_id) = 0 THEN '-'
	END AS ranking
FROM SpotifyClone.artists ar
	INNER JOIN SpotifyClone.albums al ON al.artist_id = ar.artist_id
	INNER JOIN SpotifyClone.songs so ON so.album_id = al.album_id
  LEFT JOIN SpotifyClone.favorite fa ON fa.song_id = so.song_id
GROUP BY artista
ORDER BY COUNT(fa.song_id) DESC, artista;