-- Question 20: Rank video games by global sales within each genre

SELECT
    title,
    genre,
    total_sales,
    RANK() OVER (
        PARTITION BY genre
        ORDER BY total_sales DESC
    ) AS genre_sales_rank
FROM vgchartz
WHERE genre IS NOT NULL
  AND total_sales IS NOT NULL
ORDER BY genre, genre_sales_rank;
