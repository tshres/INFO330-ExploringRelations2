-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT tracks.TrackId, tracks.Name, tracks.Composer
FROM tracks
LEFT JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
LEFT JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
LEFT JOIN customers ON invoices.CustomerId = customers.CustomerId
WHERE invoice_items.InvoiceLineId IS NULL;
