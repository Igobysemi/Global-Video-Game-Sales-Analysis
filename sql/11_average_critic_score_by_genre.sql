-- Question 11: Average critic score by genre

SELECT
    genre,
    ROUND(AVG(critic_score), 2) AS avg_critic_score
FROM vgchartz
WHERE genre IS NOT NULL
  AND critic_score IS NOT NULL
GROUP BY genre
ORDER BY avg_critic_score DESC;
