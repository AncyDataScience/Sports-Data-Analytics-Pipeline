# Day 20: Using Return Statements in Functions

# Function to calculate and return total goals
def calculate_total_goals(goals1, goals2):
    total = goals1 + goals2
    return total

# Player goals data
ronaldo_goals = 30
haaland_goals = 25

# Calling the function and storing the returned value
total_goals_scored = calculate_total_goals(ronaldo_goals, haaland_goals)

print("Total goals scored by Ronaldo and Haaland:", total_goals_scored)

# OUTPUT
Total goals scored by Ronaldo and Haaland: 55

