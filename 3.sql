SELECT c.champion_name AS champion_name, COUNT(*) AS cnt
FROM champ AS c 
    JOIN participant AS p 
    ON c.champion_id = p.champion_id 
WHERE p.position='JUNGLE' 
GROUP BY c.champion_id 
ORDER BY cnt DESC
LIMIT 3;