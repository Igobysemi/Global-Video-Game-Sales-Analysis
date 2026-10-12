-- Question 14: Top 10 publishers by number of games

SELECT
    publisher,
    COUNT(*) AS total_games
FROM vgchartz
WHERE publisher IS NOT NULL
  AND publisher <> 'Unknown'
GROUP BY publisher
ORDER BY total_games DESC
LIMIT 10;
