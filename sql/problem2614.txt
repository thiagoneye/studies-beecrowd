SELECT customers.name, rentals.rentals_date
FROM customers
INNER JOIN rentals
ON customers.id = rentals.id_customers
WHERE rentals.rentals_date BETWEEN '20160901' AND '20160930'