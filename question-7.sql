-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT tracks.TrackId, tracks.Name, tracks.Composer
FROM tracks
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId;