-- Task 1: Count the total number of players in the team
SELECT COUNT(player_name) FROM qatar_national_team;

-- Task 2: Calculate the total number of goals scored by the entire team
SELECT SUM(goals_scored) FROM qatar_national_team;

-- Task 3: Find the average distance covered by all the players
SELECT AVG(distance_covered) FROM qatar_national_team;

-- Task 4: Find the maximum number of goals scored by a single player
SELECT MAX(goals_scored) FROM qatar_national_team;

-- Task 5: Find the minimum number of matches played by any player
SELECT MIN(matches_played) FROM qatar_national_team;

-- Task 6: Count the total number of players grouped by their position
SELECT position, COUNT(player_name) FROM qatar_national_team GROUP BY position;

-- Task 7: Calculate the total goals scored by each position
SELECT position, SUM(goals_scored) FROM qatar_national_team GROUP BY position;

-- Task 8: Find the average matches played by players in each position
SELECT position, AVG(matches_played) FROM qatar_national_team GROUP BY position;

-- Task 9: Calculate the total distance covered specifically by Midfielders
SELECT SUM(distance_covered) FROM qatar_national_team WHERE position = 'Midfielder';

-- Task 10: Count how many players have scored more than 5 goals
SELECT COUNT(player_name) FROM qatar_national_team WHERE goals_scored > 5;
