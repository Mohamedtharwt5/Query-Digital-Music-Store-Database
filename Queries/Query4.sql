/*Query4*/
/*Which number of artists per genre?*/
SELECT Genre.Name, count(DISTINCT Artist.ArtistId) "Number of Artists"
FROM Genre
JOIN Artist
ON Artist.ArtistId=Album.ArtistId
JOIN Album
ON Album.AlbumId=Track.AlbumId
JOIN Track
ON Track.GenreId=Genre.GenreId
GROUP by Genre.Name
ORDER by "Number of Artists" DESC
LIMIT 10;