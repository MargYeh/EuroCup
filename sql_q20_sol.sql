SELECT player_name FROM player_in_out
JOIN player_mast USING(player_id)
WHERE in_out = 'I' 
AND play_half = 1
AND play_schedule = 'NT';