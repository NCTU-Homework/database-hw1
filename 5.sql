SELECT IF(tmp.win=0, 'lose', 'win') AS win_lose, COUNT(*) AS cnt 
FROM (
  SELECT s.win AS win 
  FROM stat AS s 
      JOIN participant AS p
      ON p.player_id = s.player_id 
  GROUP BY s.win, p.match_id 
  HAVING sum(s.longesttimespentliving) >= 6000
) AS tmp
GROUP BY tmp.win;