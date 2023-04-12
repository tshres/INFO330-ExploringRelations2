-- Which sales agent made the most in sales in 2010?
SELECT employees.FirstName, employees.LastName, SUM(invoices.Total)
FROM employees
JOIN customers ON employees.EmployeeId = customers.SupportRepId
JOIN invoices on customers.CustomerId = invoices.CustomerId
WHERE invoices.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY employees.EmployeeId
ORDER BY SUM(invoices.Total);