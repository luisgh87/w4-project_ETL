---query que devuelva el nombre de la etapa el nombre de sus puertos de montaña y la distancia a la meta---

SELECT stage, climb_name, km_before_finish 
FROM stages 
INNER JOIN stage_climb 
ON stages.stage_id = stage_climb.stage_id

---query para saber los 5 equipos que mas etapas han ganado---

SELECT team_name, COUNT(*) 
FROM startlist 
JOIN stages 
ON startlist.rider_name = stages.winner 
GROUP BY team_name 
ORDER BY COUNT(*) 
DESC LIMIT 5

--- query para saber las etapas que ha ganado cada corredor---

SELECT rider_name, stage 
FROM startlist 
INNER JOIN stages 
ON startlist.rider_name = stages.winner