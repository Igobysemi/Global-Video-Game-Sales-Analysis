-- Question 4: Top 10 games by North American sales

SELECT
    title,
    console,
    na_sales
FROM vgchartz
WHERE na_sales IS NOT NULL
ORDER BY na_sales DESC
LIMIT 10;
