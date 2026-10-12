-- Question 6: Top 10 consoles by global sales

SELECT
    console,
    SUM(total_sales) AS total_console_sales
FROM vgchartz
WHERE console IS NOT NULL
  AND total_sales IS NOT NULL
GROUP BY console
ORDER BY total_console_sales DESC
LIMIT 10;
