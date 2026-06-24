-- Task 1: Retrieve player_name and team_name using INNER JOIN
SELECT P.player_name, T.team_name FROM players AS P INNER JOIN teams AS T ON P.team_id = T.team_id;

-- Task 2: Retrieve player_name, position, and team_name using INNER JOIN
SELECT P.player_name, P.position, T.team_name FROM players AS P INNER JOIN teams AS T ON P.team_id = T.team_id;

-- Task 3: Retrieve all player_names and their team_name using LEFT JOIN
SELECT P.player_name, T.team_name FROM players AS P LEFT JOIN teams AS T ON P.team_id = T.team_id;

-- Task 4: Retrieve players and teams specifically for 'Qatar'
SELECT P.player_name, T.team_name FROM players AS P INNER JOIN teams AS T ON P.team_id = T.team_id WHERE T.country = 'Qatar';

-- Task 5: Retrieve players and teams where the position is 'Forward'
SELECT P.player_name, T.team_name FROM players AS P INNER JOIN teams AS T ON P.team_id = T.team_id WHERE P.position = 'Forward';

-- Task 6: Count the number of players in each team
SELECT T.team_name, COUNT(P.player_name) FROM players AS P INNER JOIN teams AS T ON P.team_id = T.team_id GROUP BY T.team_name;

-- Task 7: Retrieve players and teams, ordered alphabetically by team_name
SELECT P.player_name, T.team_name FROM players AS P INNER JOIN teams AS T ON P.team_id = T.team_id ORDER BY T.team_name ASC;

-- Task 8: Retrieve players who currently have no team (NULL team_name)
SELECT P.player_name, T.team_name FROM players AS P LEFT JOIN teams AS T ON P.team_id = T.team_id WHERE T.team_name IS NULL;

-- Task 9: Retrieve teams with more than 5 players
SELECT T.team_name, COUNT(P.player_name) FROM players AS P INNER JOIN teams AS T ON P.team_id = T.team_id GROUP BY T.team_name HAVING COUNT(P.player_name) > 5;

-- Task 10: Retrieve players matching specific country or position conditions
SELECT P.player_name, T.team_name, T.country FROM players AS P INNER JOIN teams AS T ON P.team_id = T.team_id WHERE T.country = 'France' OR P.position = 'Defender';
