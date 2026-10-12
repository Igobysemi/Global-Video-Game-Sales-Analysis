-- Question 2: Top 10 genres by total global sales

SELECT
    genre,
    SUM(total_sales) AS total_genre_sales
FROM vgchartz
WHERE genre IS NOT NULL
  AND total_sales IS NOT NULL
GROUP BY genre
ORDER BY total_genre_sales DESC
LIMIT 10;
