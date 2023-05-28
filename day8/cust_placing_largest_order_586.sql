SELECT 
    c.customer_number
FROM (
    SELECT 
        customer_number, 
        COUNT(*) AS num_duplicates
    FROM Orders
    GROUP BY customer_number
    ORDER BY num_duplicates DESC
    LIMIT 1
) c