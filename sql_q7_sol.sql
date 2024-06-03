SELECT venue_name FROM match_mast
JOIN soccer_venue on match_mast.venue_id = soccer_venue.venue_id
WHERE decided_by = 'P';