/*
  Project: Football Analytics - Day 15 Advanced Analysis
  Author: Ancy
  Date: 2026-07-20
  Description: Using Window Functions and CTEs for Player Performance Ranking
*/
-- 1. Rank players based on goals scored (Highest to Lowest)
SELECT 
    player_id,
    goals_scored,
    minutes_played,
    RANK() OVER (ORDER BY goals_scored DESC) AS player_rank
FROM season_performance;

-- 2. Find the top performer using a CTE (Common Table Expression)
WITH RankedPlayers AS (
    SELECT 
        player_id,
        goals_scored,
        RANK() OVER (ORDER BY goals_scored DESC) AS rnk 
    FROM season_performance    
)
SELECT player_id, goals_scored
FROM RankedPlayers
WHERE rnk = 1;