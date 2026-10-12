-- Question 13: Total North American sales by genre

SELECT
    genre,
    ROUND(SUM(na_sales), 2) AS total_na_sales
FROM vgchartz
WHERE genre IS NOT NULL
  AND na_sales IS NOT NULL
GROUP BY genre
ORDER BY total_na_sales DESC;
