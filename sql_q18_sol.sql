SELECT COUNT(*) as num_fouls FROM player_booked
GROUP BY match_no
ORDER BY num_fouls DESC
LIMIT 1;