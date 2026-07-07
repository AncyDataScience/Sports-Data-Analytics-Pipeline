-- 1 & 2. Indexes
CREATE INDEX idx_player_name ON football_players(player_name);
CREATE INDEX idx_team_name ON football_players(team_name);

-- 3. View: Top scorers
CREATE OR REPLACE VIEW top_scorers AS
SELECT player_name, goals FROM football_players WHERE goals > 15;

-- 4. View: Player details (Join logic)
CREATE OR REPLACE VIEW player_details AS
SELECT p.player_name, t.team_name, p.position 
FROM football_players p
INNER JOIN teams t ON p.team_id = t.team_id;

-- 5. Query using View
SELECT * FROM top_scorers WHERE goals = 20;

-- 6. View: Young players
CREATE OR REPLACE VIEW young_players AS
SELECT player_name, age FROM football_players WHERE age < 23;

-- 7. Query using View
SELECT * FROM player_details WHERE team_name = 'Real Madrid';

-- 8. Drop Index
DROP INDEX idx_team_name ON football_players;

-- 9. View: Team stats with Group By
CREATE OR REPLACE VIEW team_stats AS
SELECT team_name, SUM(goals) as total_goals
FROM football_players GROUP BY team_name;

-- 10. Drop View
DROP VIEW young_players;
