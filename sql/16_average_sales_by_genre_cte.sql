-- Question 16: Average global sales by genre using a CTE

WITH genre_avg_sales AS (
    SELECT
        genre,
        ROUND(AVG(total_sales), 2) AS avg_global_sales
    FROM vgchartz
    WHERE genre IS NOT NULL
      AND total_sales IS NOT NULL
    GROUP BY genre
)

SELECT
    genre,
    avg_global_sales
FROM genre_avg_sales
ORDER BY avg_global_sales DESC;
