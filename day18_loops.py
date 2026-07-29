# Day 18: Using For Loops in Sports Analytics

players_data = [
    {"name": "Cristiano Ronaldo", "goals": 30, "team": "Al Nassr"},
    {"name": "Erling Haaland", "goals": 25, "team": "Manchester City"},
    {"name": "Jude Bellingham", "goals": 22, "team": "Real Madrid"}
]

# Using a for loop to iterate through each player's data efficiently
for player in players_data:
    print(player["name"], "scored", player["goals"], "goals for", player["team"])

# OUTPUT
Cristiano Ronaldo scored 30 goals for Al Nassr
Erling Haaland scored 25 goals for Manchester City
Jude Bellingham scored 22 goals for Real Madrid
