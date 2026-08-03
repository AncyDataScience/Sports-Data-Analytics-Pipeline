# Day 22: Filtering Data using Pandas

import pandas as pd

# Creating a DataFrame with player statistics
data = {
    "Player": ["Cristiano Ronaldo", "Erling Haaland", "Jude Bellingham", "Lionel Messi"],
    "Goals": [30, 25, 22, 20],
    "Team": ["Al Nassr", "Manchester City", "Real Madrid", "Inter Miami"]
}

df = pd.DataFrame(data)

# Filtering players who scored 25 or more goals
top_scorers = df[df["Goals"] >= 25]

# Displaying the filtered DataFrame
print("## Top Scorers (25+ Goals) ##")
print(top_scorers)

# OUTPUT 

## Top Scorers (25+ Goals) ##
              Player  Goals             Team
0  Cristiano Ronaldo     30         Al Nassr
1     Erling Haaland     25  Manchester City
