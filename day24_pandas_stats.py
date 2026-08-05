# Day 24: Basic Statistics using Pandas

import pandas as pd

# Creating a DataFrame with player statistics
data = {
    "Player": ["Cristiano Ronaldo", "Erling Haaland", "Jude Bellingham", "Lionel Messi"],
    "Goals": [30, 25, 22, 20],
    "Team": ["Al Nassr", "Manchester City", "Real Madrid", "Inter Miami"]
}

df = pd.DataFrame(data)

# Calculating basic statistics
total_goals = df["Goals"].sum()
average_goals = df["Goals"].mean()
max_goals = df["Goals"].max()

# Displaying the statistical results
print("## Sports Analytics Statistics ##")
print("Total Goals Scored:", total_goals)
print("Average Goals per Player:", average_goals)
print("Maximum Goals by a Player:", max_goals)

# Output 
## Sports Analytics Statistics ##
Total Goals Scored: 97
Average Goals per Player: 24.25
Maximum Goals by a Player: 30
