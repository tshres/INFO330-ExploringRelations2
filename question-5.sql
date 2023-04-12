-- What was the most purchased track of 2013?
SELECT tracks.name, COUNT(invoice_items.TrackId)
FROM invoice_items
JOIN tracks ON tracks.TrackId = invoice_items.TrackId
JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
WHERE invoices.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY tracks.TrackId
ORDER BY COUNT(invoice_items.TrackId) DESC;
