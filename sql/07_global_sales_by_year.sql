-- Question 7: Global video game sales by year

SELECT
    YEAR(TRY_CAST(release_date AS DATE)) AS release_year,
    SUM(total_sales) AS total_year_sales
FROM vgchartz
WHERE TRY_CAST(release_date AS DATE) IS NOT NULL
  AND total_sales IS NOT NULL
GROUP BY release_year
ORDER BY release_year;
