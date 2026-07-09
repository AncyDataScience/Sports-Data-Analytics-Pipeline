/* 
   Project: Football Analytics Case Study
   Author: Ancy
   Date: 2026-07-09
   Description: Analysis of player seson performance and efficiency

*/

-- 1. Create season_performance table
CREATE TABLE season_performance (
    player_id INT PRIMARY KEY,
    goals_scored INT,
    minutes_played INT
);

-- 2. Identify top performers using a Subquery
SELECT player_id, goals_scored
FROM season_performance
WHERE goals_scored > (SELECT AVG(goals_scored) FROM season_performance);

-- 3. Create a View for efficiency calculation
CREATE VIEW player_efficiency AS
SELECT player_id,
       (goals_scored * 1.0 / minutes_played) AS efficiency_ratio
FROM season_performance;