
-- 1. Count total players
SELECT COUNT(player_name) FROM football_players;

-- 2. Calculate total goals
SELECT SUM(goals) FROM football_players;

-- 3. Calculate average age
SELECT AVG(age) FROM football_players;

-- 4. Find maximum assists
SELECT MAX(assists) FROM football_players;

-- 5. Find minimum matches played
SELECT MIN(matches_played) FROM football_players;

-- 6. Group by team and count players
SELECT team_name, COUNT(player_name) 
FROM football_players 
GROUP BY team_name;

-- 7. Group by position and sum goals
SELECT position, SUM(goals) 
FROM football_players 
GROUP BY position;

-- 8. Group by position and average assists
SELECT position, AVG(assists) 
FROM football_players 
GROUP BY position;

-- 9. Group by team and find max goals per player
SELECT team_name, MAX(goals) 
FROM football_players 
GROUP BY team_name;

-- 10. Group by team and sum goal contributions
SELECT team_name, SUM(goals + assists) 
FROM football_players 
GROUP BY team_name;
