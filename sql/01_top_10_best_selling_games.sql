-- ======================================================
-- Question 1: Top 10 best-selling games?
-- ======================================================
SELECT title, console, total_sales
FROM vgchartz
WHERE total_sales IS NOT NULL
ORDER BY total_sales DESC
LIMIT 10;
