
-- 1. Players with goals > average
SELECT player_name FROM football_players WHERE goals > (SELECT AVG(goals) FROM football_players);

-- 2. Players in Real Madrid
SELECT player_name FROM football_players WHERE team_name = 'Real Madrid';

-- 3. Player with max assists
SELECT player_name FROM football_players WHERE assists = (SELECT MAX(assists) FROM football_players);

-- 4. Players older than average age
SELECT player_name FROM football_players WHERE age > (SELECT AVG(age) FROM football_players);

-- 5. Teams with high scorers
SELECT DISTINCT team_name FROM football_players WHERE goals > 20;

-- 6. Players with same position as Messi
SELECT player_name FROM football_players WHERE position = (SELECT position FROM football_players WHERE player_name = 'Lionel Messi');

-- 7. Teams with more players than average (Complex Logic - Simplified)
SELECT team_name FROM football_players GROUP BY team_name HAVING COUNT(player_id) > 2; 

-- 8. Players with more matches than the minimum
SELECT player_name FROM football_players WHERE matches_played > (SELECT MIN(matches_played) FROM football_players);

-- 9. Midfielders with lowest goals
SELECT player_name, goals FROM football_players WHERE goals = (SELECT MIN(goals) FROM football_players WHERE position = 'Midfielder') ORDER BY goals DESC;

-- 10. Teams with no forwards
SELECT DISTINCT team_name FROM football_players WHERE team_name NOT IN (SELECT team_name FROM football_players WHERE position = 'Forward');
