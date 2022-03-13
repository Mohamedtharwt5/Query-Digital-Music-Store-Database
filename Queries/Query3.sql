/*Query3*/
/*Top geners according to earnings?*/
SELECT Genre.Name, sum(InvoiceLine.UnitPrice * InvoiceLine.quantity) "Earnings"
FROM genre
JOIN Track
ON Genre.GenreId=Track.GenreId
JOIN InvoiceLine
ON InvoiceLine.TrackId=Track.TrackId
GROUP by Genre.Name
ORDER by "Earnings" DESC
LIMIT 10;