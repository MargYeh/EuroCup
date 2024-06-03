SELECT referee_name, venue_name, COUNT(*) as matches FROM match_mast m
JOIN referee_mast r ON m.referee_id = r.referee_id
JOIN soccer_venue v ON m.venue_id = v.venue_id
GROUP BY referee_name, venue_name;