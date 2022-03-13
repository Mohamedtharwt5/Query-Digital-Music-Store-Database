/*Query1*/
/* Which artist has produced the most albums?*/
SELECT Artist.Name, COUNT(Album.AlbumId) "Number of Albums"
FROM Artist
JOIN Album 
ON Album.ArtistId=Artist.ArtistId
GROUP by Artist.Name
ORDER by "Number of Albums" DESC
LIMIT 10;