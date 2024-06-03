WITH w AS (
SELECT referee_name, COUNT(*) as number_of_bookings FROM match_mast m
JOIN referee_mast r ON r.referee_id = m.referee_id
JOIN player_booked p ON p.match_no = m.match_no
GROUP BY referee_name
ORDER BY number_of_bookings DESC
)

SELECT referee_name, number_of_bookings FROM w
WHERE number_of_bookings = (
	SELECT MAX(number_of_bookings) FROM w
    );