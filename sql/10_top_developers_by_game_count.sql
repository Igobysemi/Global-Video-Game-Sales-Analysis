-- Question 10: Top 10 developers by number of games

SELECT
    developer,
    COUNT(*) AS total_games
FROM vgchartz
WHERE developer IS NOT NULL
GROUP BY developer
ORDER BY total_games DESC
LIMIT 10;
