SELECT match_no,
country_name,
SUM(penalty_score) OVER (PARTITION BY match_no) as total_penalty_shots
FROM match_details AS m
JOIN soccer_country AS s1 ON m.team_id = s1.country_id
ORDER BY total_penalty_shots DESC
LiMIT 2;
