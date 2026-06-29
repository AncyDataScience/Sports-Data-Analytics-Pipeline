-- Day 8: Data Filtering and Advanced Summarization (HAVING & ORDER BY)

-- 1. Teams with more than 3 players
SELECT team_name, COUNT(player_name) FROM football_players GROUP BY team_name HAVING COUNT(player_id) > 3;

-- 2. Top 5 players based on goals
SELECT player_name, SUM(goals) FROM football_players GROUP BY player_name ORDER BY SUM(goals) DESC LIMIT 5;

-- 3. Positions with total goals > 50
SELECT position, SUM(goals) FROM football_players GROUP BY position HAVING SUM(goals) > 50;

-- 4. Teams with average age < 25
SELECT team_name, AVG(age) FROM football_players GROUP BY team_name HAVING AVG(age) < 25;

-- 5. Players with assists between 10 and 20
SELECT player_name, SUM(assists) FROM football_players GROUP BY player_name HAVING SUM(assists) BETWEEN 10 AND 20;

-- 6. Teams with more than 50 total matches
SELECT team_name, SUM(matches_played) FROM football_players GROUP BY team_name HAVING SUM(matches_played) > 50;

-- 7. Positions where max goals > 20
SELECT position, MAX(goals) FROM football_players GROUP BY position HAVING MAX(goals) > 20;

-- 8. Group by team and order by player count
SELECT team_name, COUNT(player_name) FROM football_players GROUP BY team_name ORDER BY COUNT(player_name) DESC;

-- 9. Players with matches > 30, ordered by goals
SELECT player_name, goals FROM football_players WHERE matches_played > 30 ORDER BY goals DESC;

-- 10. Positions with total goal contribution > 2
SELECT position, SUM(goals + assists) FROM football_players GROUP BY position HAVING SUM(goals + assists) > 2;
