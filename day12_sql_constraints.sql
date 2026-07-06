
-- 1. Create stadiums table
CREATE TABLE stadiums (
    stadium_id INT PRIMARY KEY,
    stadium_name VARCHAR(100) NOT NULL
);

-- 2. Create coaches table
CREATE TABLE coaches (
    coach_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);

-- 3. Create transfers table with default date
CREATE TABLE transfers (
    transfer_id INT PRIMARY KEY,
    transfer_date DATE DEFAULT (CURRENT_DATE)
);

-- 4. Alter players table to add goals with default value
-- (Assuming 'players' table exists from previous days)
ALTER TABLE players ADD COLUMN goals INT DEFAULT 0;

-- 5. Create match_officials table
CREATE TABLE match_officials (
    official_id INT PRIMARY KEY,
    nationality VARCHAR(100) NOT NULL
);

-- 6. Create leagues table with unique name
CREATE TABLE leagues (
    league_id INT PRIMARY KEY,
    league_name VARCHAR(100) UNIQUE
);

-- 7. Create players table with Foreign Key reference
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(100),
    league_id INT,
    FOREIGN KEY (league_id) REFERENCES leagues(league_id)
);

-- 8. Create sponsors table
CREATE TABLE sponsors (
    sponsor_id INT PRIMARY KEY,
    contract_value VARCHAR(100) NOT NULL
);

-- 9. Unique Constraint Test (Conceptual)
-- Attempting to insert duplicate league name will trigger an error
INSERT INTO leagues (league_id, league_name) VALUES (1, 'Premier League');
-- INSERT INTO leagues (league_id, league_name) VALUES (2, 'Premier League'); -- This will fail

-- 10. Create clubs table with constraints
CREATE TABLE clubs (
    club_id INT PRIMARY KEY,
    club_name VARCHAR(100) NOT NULL,
    match_played INT,
    win INT,
    loss INT,
    draw INT DEFAULT 0,
    points INT
);
