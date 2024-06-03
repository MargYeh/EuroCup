SELECT country_name, COUNT(*) as num_asst_ref FROM asst_referee_mast a
JOIN soccer_country c ON c.country_id = a.country_id
GROUP BY country_name
ORDER BY num_asst_ref DESC
Limit 1;