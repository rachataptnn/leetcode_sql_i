SELECT 
  Customers.name Customers
FROM Customers
LEFT JOIN Orders
ON Orders.customerId = Customers.ID
WHERE customerId is null