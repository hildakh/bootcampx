SELECT day, COUNT(*)
FROM assignments
GROUP BY day
ORDER BY day;