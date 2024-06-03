SELECT DISTINCT player_name FROM goal_details g
-- JOIN soccer_country c ON g.team_id = c.country_id
JOIN player_mast p ON g.player_id = p.player_id
JOIN playing_position pos ON p.posi_to_play = pos.position_id
WHERE position_desc = 'Defenders';