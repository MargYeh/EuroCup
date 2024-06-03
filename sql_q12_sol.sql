SELECT COUNT(*) as num_goals, c.country_name, p.posi_to_play FROM goal_details g
JOIN soccer_country c ON g.team_id = c.country_id
JOIN player_mast p ON g.player_id = p.player_id
GROUP BY country_name, posi_to_play;