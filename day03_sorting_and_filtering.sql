-- Task 1: Retrieve player_name and goals, sorted by goals descending
SELECT player_name, goals FROM player_stats ORDER BY goals DESC;

-- Task 2: Find the top 5 players with the most assists
SELECT player_name, assists FROM player_stats ORDER BY assists DESC LIMIT 5;

-- Task 3: Retrieve player_name and fouls, sorted by fouls ascending, limit to 10
SELECT player_name, fouls FROM player_stats ORDER BY fouls ASC LIMIT 10;

-- Task 4: Sort first by team ascending, then by goals descending
SELECT player_name, team, goals FROM player_stats ORDER BY team ASC, goals DESC;

-- Task 5: Total goals scored by each team, showing only teams with > 10 goals
SELECT team, SUM(goals) FROM player_stats GROUP BY team HAVING SUM(goals) > 10;

-- Task 6: Average assists by each team, showing only teams with > 2 average assists
SELECT team, AVG(assists) FROM player_stats GROUP BY team HAVING AVG(assists) > 2;

-- Task 7: Count players in each team, showing only teams with > 3 players
SELECT team, COUNT(player_name) FROM player_stats GROUP BY team HAVING COUNT(player_name) > 3;

-- Task 8: Retrieve the top 1 player with the highest goals
SELECT player_name, goals FROM player_stats ORDER BY goals DESC LIMIT 1;

-- Task 9: Retrieve player_name and team, ordered alphabetically by player_name
SELECT player_name, team FROM player_stats ORDER BY player_name ASC;

-- Task 10: Total fouls per team, showing only teams with < 20 total fouls
SELECT team, SUM(fouls) FROM player_stats GROUP BY team HAVING SUM(fouls) < 20;
