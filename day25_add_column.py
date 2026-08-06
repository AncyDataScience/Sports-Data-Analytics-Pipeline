# Day 25: Adding New Columns in Pandas DataFrames

import pandas as pd

# Creating a DataFrame with goals and assists data
data = {
    "Player": ["Cristiano Ronaldo", "Erling Haaland", "Jude Bellingham", "Lionel Messi"],
    "Goals": [30, 25, 22, 20],
    "Assists": [10, 8, 12, 15],
    "Team": ["Al Nassr", "Manchester City", "Real Madrid", "Inter Miami"]
}

df = pd.DataFrame(data)

# Adding a new column for Total Goal Contributions
df["Total_Contributions"] = df["Goals"] + df["Assists"]

# Displaying the updated DataFrame
print("## Players with Total Goal Contributions ##")
print(df)

# Output 
## Players with Total Goal Contributions ##
              Player  Goals  Assists             Team  Total_Contributions
0  Cristiano Ronaldo     30       10         Al Nassr                   40
1     Erling Haaland     25        8  Manchester City                   33
2    Jude Bellingham     22       12      Real Madrid                   34
3       Lionel Messi     20       15      Inter Miami                   35
