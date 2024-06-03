SELECT COUNT(DISTINCT player_gk) as num_goalkeeper_captains FROM match_details m
JOIN match_captain c ON c.match_no = m.match_no
WHERE player_captain = player_gk;