-- Question 15: Total global sales by console

SELECT
    console,
    ROUND(SUM(total_sales), 2) AS total_global_sales
FROM vgchartz
WHERE console IS NOT NULL
  AND total_sales IS NOT NULL
GROUP BY console
ORDER BY total_global_sales DESC;
