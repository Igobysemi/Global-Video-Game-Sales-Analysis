-- Question 3: Top 10 publishers by total global sales

SELECT
    publisher,
    SUM(total_sales) AS total_publisher_sales
FROM vgchartz
WHERE publisher IS NOT NULL
  AND total_sales IS NOT NULL
GROUP BY publisher
ORDER BY total_publisher_sales DESC
LIMIT 10;
