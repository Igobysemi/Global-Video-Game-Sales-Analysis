-- Question 9: How many video games are in each genre?

SELECT
    genre,
    COUNT(*) AS total_games
FROM vgchartz
WHERE genre IS NOT NULL
GROUP BY genre
ORDER BY total_games DESC;
