SELECT DISTINCT player_name, jersey_no FROM match_mast
JOIN match_details USING(match_no)
JOIN player_mast ON match_details.player_gk = player_mast.player_id
JOIN soccer_country ON match_details.team_id = soccer_country.country_id
WHERE match_mast.play_stage = 'G'
AND country_name = 'Germany'
-- LIMIT 1;