# Day 23: Sorting Data using Pandas

import pandas as pd

# Creating a DataFrame with unordered player statistics
data = {
    "Player": ["Jude Bellingham", "Cristiano Ronaldo", "Lionel Messi", "Erling Haaland"],
    "Goals": [22, 30, 20, 25],
    "Team": ["Real Madrid", "Al Nassr", "Inter Miami", "Manchester City"]
}

df = pd.DataFrame(data)

# Sorting players by goals in descending order (highest to lowest)
sorted_df = df.sort_values(by="Goals", ascending=False)

# Displaying the sorted DataFrame
print("## Players Sorted by Goals (Highest to Lowest) ##")
print(sorted_df)

# OUTPUT 
## Players Sorted by Goals (Highest to Lowest) ##
              Player  Goals             Team
1  Cristiano Ronaldo     30         Al Nassr
3     Erling Haaland     25  Manchester City
0    Jude Bellingham     22      Real Madrid
2       Lionel Messi     20      Inter Miami
