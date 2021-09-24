-- Add 3 new artists to the artist table using INSERT. (It’s already created.)
INSERT INTO artist (name)
VALUES ('waxmotif'),
	    ('rezz'),
        ('captainHook')

-- Select 5 artists in alphabetical order.
SELECT
 *
FROM
  artist
ORDER BY name ASC
LIMIT 5

-- List all employee first and last names only that live in Calgary.
SELECT 
employee.first_name,
employee.last_name
FROM employee
WHERE employee.city = 'Calgary'

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo co
-- lumn). You will need to query the employee table to find the Id for Nancy Edwards
SELECT * 
FROM employee
WHERE reports_to = 2

-- Count how many people live in Lethbridge.
SELECT 
	COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

-- Count how many orders were made from the USA.
SELECT
COUNT(*)
FROM invoice
WHERE billing_country = 'USA'

-- Find the largest order total amount.
SELECT 
MAX(total)
FROM invoice

-- Find the smallest order total amount.
SELECT 
MIN(total)
FROM invoice

-- Find all orders bigger than $5.
SELECT 
* 
FROM invoice
WHERE total > 5

-- Count how many orders were smaller than $5.
SELECT 
COUNT(*)
FROM invoice
WHERE total < 5

-- Get the total sum of the orders.
SELECT 
SUM(total)
FROM invoice

-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT *
FROM invoice
	JOIN invoice_line
  	ON invoice.invoice_id = invoice_line.invoice_id
    WHERE invoice_line.unit_price > 0.99

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.
SELECT invoice_date, first_name, last_name, total
FROM invoice
	JOIN customer
  	on invoice.customer_id = customer.customer_id

-- Get the customer first_name and last_name and the support rep’s first_name and last_name
-- from all customers. Note that support reps are on the employee table.
SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name
FROM customer
	JOIN employee
  	ON customer.support_rep_id = employee.employee_id

-- Get the album title and the artist name from all albums.
SELECT artist.name, album.title
FROM artist
	JOIN album
  	ON artist.artist_id = album.artist_id



--**------------- EXTRA CREDIT ---------------------------------**
-- Select 10 artists in reverse alphabetical order.
SELECT
 *
FROM
  artist
ORDER BY name DESC
LIMIT 10

-- Select all artists that start with the word ‘Black’.
SELECT * 
FROM artist 
WHERE name LIKE 'Black%' 

-- Select all artists that contain the word ‘Black’.
SELECT * 
FROM artist 
WHERE name LIKE '% Black%'

