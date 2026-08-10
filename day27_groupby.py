# Day 27: Grouping Data using Pandas

import pandas as pd

# Creating a dataset with multiple players per team
data = {
    "Player": ["Ronaldo", "Talisca", "Haaland", "De Bruyne", "Bellingham", "Vinicius"],
    "Goals": [30, 15, 25, 10, 22, 18],
    "Team": ["Al Nassr", "Al Nassr", "Man City", "Man City", "Real Madrid", "Real Madrid"]
}

df = pd.DataFrame(data)

print("## Original DataFrame ##")
print(df)
print("\n" + "="*40 + "\n")

# Grouping by Team and calculating total goals for each team
team_goals = df.groupby("Team")["Goals"].sum()

print("## Total Goals by Team (groupby) ##")
print(team_goals)

#Output
## Original DataFrame ##
       Player  Goals         Team
0     Ronaldo     30     Al Nassr
1     Talisca     15     Al Nassr
2     Haaland     25     Man City
3   De Bruyne     10     Man City
4  Bellingham     22  Real Madrid
5    Vinicius     18  Real Madrid

========================================

## Total Goals by Team (groupby) ##
Team
Al Nassr       45
Man City       35
Real Madrid    40
Name: Goals, dtype: int64
