-- Task 1: Find players with market value greater than the overall average
SELECT player_name FROM transfer_market WHERE market_value_millions > (SELECT AVG(market_value_millions) FROM transfer_market);

-- Task 2: Find the player with the highest market value
SELECT player_name FROM transfer_market WHERE market_value_millions = (SELECT MAX(market_value_millions) FROM transfer_market);

-- Task 3: Find players with goals less than the average goals
SELECT player_name FROM transfer_market WHERE goals < (SELECT AVG(goals) FROM transfer_market);

-- Task 4: Find the player with the minimum goals
SELECT player_name FROM transfer_market WHERE goals = (SELECT MIN(goals) FROM transfer_market);

-- Task 5: Find players who have the same goals as Kylian Mbappe
SELECT player_name FROM transfer_market WHERE goals = (SELECT goals FROM transfer_market WHERE player_name = 'Kylian Mbappe');

-- Task 6: Find PSG players whose market value is greater than the overall average
SELECT player_name FROM transfer_market WHERE club = 'PSG' AND market_value_millions > (SELECT AVG(market_value_millions) FROM transfer_market);

-- Task 7: Find the club that possesses the player with the maximum goals
SELECT club FROM transfer_market WHERE goals = (SELECT MAX(goals) FROM transfer_market);

-- Task 8: Find players with market value > average market value of Real Madrid players
SELECT player_name FROM transfer_market WHERE market_value_millions > (SELECT AVG(market_value_millions) FROM transfer_market WHERE club = 'Real Madrid');

-- Task 9: Count the number of players whose goals are above the overall average
SELECT COUNT(player_name) FROM transfer_market WHERE goals > (SELECT AVG(goals) FROM transfer_market);

-- Task 10: Find players with below-average goals AND above-average market value
SELECT player_name FROM transfer_market WHERE goals < (SELECT AVG(goals) FROM transfer_market) AND market_value_millions > (SELECT AVG(market_value_millions) FROM transfer_market);
