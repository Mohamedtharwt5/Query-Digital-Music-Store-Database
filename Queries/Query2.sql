/*Query2*/
/*Top 10 albums according sales?*/
SELECT Album.Title, sum(InvoiceLine.UnitPrice * InvoiceLine.Quantity) "Sales"
FROM Album
JOIN Track
ON Album.AlbumId=Track.AlbumId
JOIN InvoiceLine
ON InvoiceLine.TrackId=Track.TrackId
GROUP by album.Title
ORDER by "Sales" DESC
LIMIT 10;