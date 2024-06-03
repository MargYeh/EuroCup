WITH w AS (
SELECT match_no FROM match_details
WHERE decided_by <> 'P'
GROUP BY match_no
HAVING (MAX(goal_score) - MIN(goal_score) = 1)
)

SELECT COUNT(*) FROM w;