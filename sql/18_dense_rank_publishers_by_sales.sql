-- Question 18: Rank publishers by global sales using DENSE_RANK()

WITH publisher_sales AS (
    SELECT
        publisher,
        ROUND(SUM(total_sales), 2) AS total_global_sales
    FROM vgchartz
    WHERE publisher IS NOT NULL
      AND publisher <> 'Unknown'
      AND total_sales IS NOT NULL
    GROUP BY publisher
)

SELECT
    publisher,
    total_global_sales,
    DENSE_RANK() OVER (
        ORDER BY total_global_sales DESC
    ) AS sales_rank
FROM publisher_sales
ORDER BY sales_rank;
