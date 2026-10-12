-- Question 5: Top 10 games by combined NA and Japan sales

SELECT
    title,
    console,
    na_sales,
    jp_sales,
    jp_sales + na_sales AS combined_sales
FROM vgchartz
WHERE na_sales IS NOT NULL
  AND jp_sales IS NOT NULL
ORDER BY combined_sales DESC
LIMIT 10;
