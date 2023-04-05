SELECT a.album_name AS album,
	COUNT(f.song_id) AS favoritadas
FROM SpotifyClone.albums a
	INNER JOIN SpotifyClone.songs s
	INNER JOIN SpotifyClone.favorite f ON f.song_id = s.song_id AND s.album_id = a.album_id
GROUP BY album
ORDER BY favoritadas DESC
LIMIT 3;