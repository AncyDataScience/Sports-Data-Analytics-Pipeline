
-- 1. List all player names and their respective team names
SELECT P.player_name, T.team_name
FROM players AS P
INNER JOIN teams AS T ON P.team_id = T.team_id;

-- 2. Find players who belong to teams from 'England'
SELECT P.player_name, T.country
FROM players AS P
INNER JOIN teams AS T ON P.team_id = T.team_id 
WHERE T.country = 'England';

-- 3. Show player name and country
SELECT P.player_name, T.country
FROM players AS P
INNER JOIN teams AS T ON P.team_id = T.team_id;

-- 4. Number of players in each team
SELECT T.team_name, COUNT(P.player_name) AS player_count
FROM players AS P
INNER JOIN teams AS T ON P.team_id = T.team_id
GROUP BY T.team_name;

-- 5. Players with goals > 10, along with their team name
SELECT P.player_name, T.team_name, P.goals
FROM players AS P
INNER JOIN teams AS T ON P.team_id = T.team_id
WHERE P.goals > 10;

-- 6. All teams that have 'Forward' players
SELECT DISTINCT T.team_name
FROM players AS P
INNER JOIN teams AS T ON P.team_id = T.team_id
WHERE P.position = 'Forward';

-- 7. Player name, team name, and matches played for players with > 20 matches
SELECT P.player_name, T.team_name, P.matches_played
FROM players AS P
INNER JOIN teams AS T ON P.team_id = T.team_id
WHERE P.matches_played > 20;

-- 8. Top 3 teams based on total goals scored
SELECT T.team_name, SUM(P.goals) AS total_goals
FROM players AS P
INNER JOIN teams AS T ON P.team_id = T.team_id
GROUP BY T.team_name
ORDER BY total_goals DESC
LIMIT 3;

-- 9. Player name and team name for players aged between 20 and 25
SELECT P.player_name, T.team_name, P.age
FROM players AS P
INNER JOIN teams AS T ON P.team_id = T.team_id 
WHERE P.age BETWEEN 20 AND 25;

-- 10. Players who play for 'Real Madrid' and have assists > 5
SELECT P.player_name, T.team_name, P.assists
FROM players AS P
INNER JOIN teams AS T ON P.team_id = T.team_id 
WHERE T.team_name = 'Real Madrid' AND P.assists > 5;
