-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT tracks.TrackId, tracks.Name, artists.Name
FROM tracks
JOIN albumns ON tracks.AlbumId = albumns.AlbumId
JOIN artists;