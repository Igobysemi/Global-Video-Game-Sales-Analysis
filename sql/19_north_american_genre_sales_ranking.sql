-- Question 19: Rank genres by North American sales

WITH genre_sales AS (
    SELECT
        genre,
        ROUND(SUM(na_sales), 2) AS total_na_sales
    FROM vgchartz
    WHERE genre IS NOT NULL
      AND na_sales IS NOT NULL
    GROUP BY genre
)

SELECT
    genre,
    total_na_sales,
    RANK() OVER (
        ORDER BY total_na_sales DESC
    ) AS sales_rank
FROM genre_sales
ORDER BY sales_rank;
