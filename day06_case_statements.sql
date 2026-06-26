-- Task 1: Categorize players as 'Star' or 'Regular' based on goals
SELECT player_name, CASE WHEN goals > 20 THEN 'Star' ELSE 'Regular' END AS goal_status FROM player_metrics;

-- Task 2: Categorize players as 'Veteran' or 'Youngster' based on age
SELECT player_name, CASE WHEN age > 30 THEN 'Veteran' ELSE 'Youngster' END AS age_category FROM player_metrics;

-- Task 3: Classify goals into Elite, Good, or Average
SELECT player_name, CASE WHEN goals > 20 THEN 'Elite' WHEN goals > 10 THEN 'Good' ELSE 'Average' END AS performance_level FROM player_metrics;

-- Task 4: Check if the role is Attacker or Defender/Midfielder
SELECT player_name, CASE WHEN position = 'Forward' THEN 'Attacker' ELSE 'Defender/Midfielder' END AS role FROM player_metrics;

-- Task 5: Check if the player has scored any goals
SELECT player_name, CASE WHEN goals = 0 THEN 'No Goals' ELSE 'Scored' END AS scoring_status FROM player_metrics;

-- Task 6: Classify experience levels based on matches played
SELECT player_name, CASE WHEN matches_played > 50 THEN 'Highly Experienced' WHEN matches_played > 20 THEN 'Experienced' ELSE 'Rookie' END AS experience_level FROM player_metrics;

-- Task 7: Identify Young Talents based on age and goals
SELECT player_name, CASE WHEN age < 25 AND goals > 10 THEN 'Young Talent' ELSE 'Standard' END AS talent_status FROM player_metrics;

-- Task 8: Check if goals exceed matches played
SELECT player_name, age, goals, CASE WHEN goals > matches_played THEN 'Exceptional' ELSE 'Normal' END AS ratio_status FROM player_metrics;

-- Task 9: Identify Legends using CASE without ELSE
SELECT player_name, CASE WHEN goals > 30 THEN 'Legend' END AS legend_status FROM player_metrics;

-- Task 10: Order by goals while categorizing into High or Low tiers
SELECT player_name, CASE WHEN goals > 15 THEN 'High' ELSE 'Low' END AS goal_tier FROM player_metrics ORDER BY goals DESC;
