-- Which vehicles should have been returned but aren't yet?
SELECT v.make, v.model, v.number_plate,
       c.name AS customer_name,
       r.loan_date, r.return_date
FROM Rentals r
JOIN Vehicles v ON r.vehicle_id = v.vehicle_id
JOIN Customers c ON r.customer_id = c.customer_id
WHERE r.returned = 0
  AND r.return_date < CURDATE();

-- How much money has each staff member made us?
SELECT s.name, SUM(r.price) AS total_income
FROM Rentals r
JOIN Staff s ON r.staff_id = s.staff_id
GROUP BY s.name
ORDER BY total_income DESC;

-- Who can we email spam offers to?
SELECT name, email 
FROM Customers c 
WHERE CUSTOMER_ID < 25;
