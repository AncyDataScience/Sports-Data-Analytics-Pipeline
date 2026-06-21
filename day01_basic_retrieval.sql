-- Task 1: Retrieve the player names and positions of all players.
SELECT player_name, position 
FROM psg_squad;

-- Task 2: Find the player names of those who play exactly in the 'Defender' position.
SELECT player_name 
FROM psg_squad
WHERE position = 'Defender';

-- Task 3: Retrieve players who are 'Forwards' OR have scored more than 15 goals.
SELECT player_name, goals_scored 
FROM psg_squad
WHERE position = 'Forward' OR goals_scored > 15;

-- Task 4: Retrieve all details of Midfielders.
SELECT * FROM psg_squad
WHERE position = 'Midfielder';

-- Task 5: Find players with more than 20 matches played.
SELECT player_name, jersey_number 
FROM psg_squad
WHERE matches_played > 20;

-- Task 6: Retrieve the name of the player wearing jersey number 10.
SELECT player_name 
FROM psg_squad
WHERE jersey_number = 10;

-- Task 7: Find Defenders who scored more than 2 goals.
SELECT player_name, goals_scored 
FROM psg_squad
WHERE position = 'Defender' AND goals_scored > 2;

-- Task 8: Retrieve players who are Forwards OR played less than 10 matches.
SELECT player_name 
FROM psg_squad
WHERE position = 'Forward' OR matches_played < 10;

-- Task 9: Find players with 0 goals AND more than 15 matches played.
SELECT player_name, position 
FROM psg_squad
WHERE goals_scored = 0 AND matches_played > 15;

-- Task 10: Retrieve all details of players who played exactly 30 matches.
SELECT * FROM psg_squad 
WHERE matches_played = 30;
