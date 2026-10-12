-- Question 12: Classify games based on critic scores

SELECT
    title,
    critic_score,
    CASE
        WHEN critic_score >= 8 THEN 'Highly Rated'
        WHEN critic_score >= 5 THEN 'Average'
        ELSE 'Low Rated'
    END AS rating_category
FROM vgchartz
WHERE critic_score IS NOT NULL
ORDER BY critic_score DESC;
