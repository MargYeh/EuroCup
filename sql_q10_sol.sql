SELECT * FROM player_mast
JOIN soccer_country ON player_mast.team_id = soccer_country.country_id
WHERE playing_club = 'Liverpool'
AND country_name = 'England';