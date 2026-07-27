# ## Sports Analytics ##
# Day 16: Introduction to Python Lists and Append Method

# Initial players and goals data
players = ["Cristiano Ronaldo", "Erling Brut Haaland", "Jude Bellingham"]
goals = [30, 25, 22]

# Printing initial data using index positions
print(players[0], "scored", goals[0])
print(players[1], "scored", goals[1])
print(players[2], "scored", goals[2])

# Adding a new player and their goals using append()
players.append("Kylian Mbappe")
goals.append(22)

# Printing the newly added player's data
print(players[3], "scored", goals[3])
