-- 1. Create team_roster
CREATE TABLE team_roster (
    roster_id INT PRIMARY KEY,
    team_name VARCHAR(100),
    stadium_capacity INT
);

-- 2. Add column head_coach
ALTER TABLE team_roster ADD COLUMN head_coach VARCHAR(100);

-- 3. Insert records correctly
INSERT INTO team_roster (roster_id, team_name, stadium_capacity) VALUES 
(1, 'Real Madrid', 70240),
(2, 'FC Barcelona', 68500),
(3, 'PSG', 88966);

-- 4. Update capacity
UPDATE team_roster SET stadium_capacity = 88970 WHERE roster_id = 3;

-- 5. Delete specific record (Not all)
DELETE FROM team_roster WHERE roster_id = 1;

-- 6. Create match_results
CREATE TABLE match_results (
    match_id INT PRIMARY KEY,
    home_team VARCHAR(100),
    away_team VARCHAR(100),
    result VARCHAR(20) -- Result is text, not int
);

-- 7. Insert match results
INSERT INTO match_results VALUES 
(1, 'Aston Villa', 'PSG', 'Pending'),
(2, 'Leicester City', 'Man City', 'Finished'),
(3, 'Arsenal', 'Tottenham', 'Pending');

-- 8. Change column type
ALTER TABLE match_results MODIFY COLUMN result VARCHAR(20);

-- 9. Update multiple records (Separately)
UPDATE match_results SET result = 'Finished' WHERE match_id = 1;
UPDATE match_results SET result = 'Finished' WHERE match_id = 3;

-- 10. Drop table
DROP TABLE match_results;
