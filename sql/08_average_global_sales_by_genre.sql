-- Question 8: Average global sales by genre

SELECT
    genre,
    ROUND(AVG(total_sales), 2) AS avg_global_sales
FROM vgchartz
WHERE genre IS NOT NULL
  AND total_sales IS NOT NULL
GROUP BY genre
ORDER BY avg_global_sales DESC;
