# Day 30: Final Capstone Project - Sports Data Analytics Pipeline

import pandas as pd

print("="*50)
print(" 🏆 FOOTBALL SEASON 2026: FINAL ANALYTICS REPORT 🏆 ")
print("="*50)

# 1. Creating the dataset
data = {
    "Player": ["Cristiano Ronaldo", "Erling Haaland", "Jude Bellingham", "Lionel Messi", "Vinicius Jr", "Kevin De Bruyne"],
    "Goals": [30, 25, 22, 20, 18, 10],
    "Assists": [10, 8, 12, 15, 14, 20],
    "Team": ["Al Nassr", "Manchester City", "Real Madrid", "Inter Miami", "Real Madrid", "Manchester City"]
}

df = pd.DataFrame(data)

print("\n1. Original Player Statistics:")
print(df)

# 2. Adding a new column: Total Contributions
df["Total_Contributions"] = df["Goals"] + df["Assists"]

# 3. Sorting players by goals
sorted_df = df.sort_values(by="Goals", ascending=False)

print("\n2. Players Sorted by Goals (Highest to Lowest):")
print(sorted_df)

# 4. Calculating summary statistics
total_goals_scored = df["Goals"].sum()
avg_goals_per_player = df["Goals"].mean()

print("\n3. Season Summary Statistics:")
print(f"- Total Goals Scored in League: {total_goals_scored}")
print(f"- Average Goals per Player: {avg_goals_per_player:.2f}")

# 5. Finding the star players
top_scorer = df.loc[df["Goals"].idxmax()]
top_contributor = df.loc[df["Total_Contributions"].idxmax()]

print("\n4. Season Award Winners:")
print(f"🌟 Golden Boot Winner: {top_scorer['Player']} ({top_scorer['Goals']} Goals)")
print(f"🌟 Playmaker of the Season: {top_contributor['Player']} ({top_contributor['Total_Contributions']} Total Contributions)")

print("\n" + "="*50)
print(" 🎉 CONGRATULATIONS ANCY! YOU'VE COMPLETED 30 DAYS OF PYTHON! 🎉 ")
print("="*50)

# Output
==================================================
 🏆 FOOTBALL SEASON 2026: FINAL ANALYTICS REPORT 🏆 
==================================================

1. Original Player Statistics:
              Player  Goals  Assists             Team
0  Cristiano Ronaldo     30       10         Al Nassr
1     Erling Haaland     25        8  Manchester City
2    Jude Bellingham     22       12      Real Madrid
3       Lionel Messi     20       15      Inter Miami
4        Vinicius Jr     18       14      Real Madrid
5    Kevin De Bruyne     10       20  Manchester City

2. Players Sorted by Goals (Highest to Lowest):
              Player  Goals  Assists             Team  Total_Contributions
0  Cristiano Ronaldo     30       10         Al Nassr                   40
1     Erling Haaland     25        8  Manchester City                   33
2    Jude Bellingham     22       12      Real Madrid                   34
3       Lionel Messi     20       15      Inter Miami                   35
4        Vinicius Jr     18       14      Real Madrid                   32
5    Kevin De Bruyne     10       20  Manchester City                   30

3. Season Summary Statistics:
- Total Goals Scored in League: 125
- Average Goals per Player: 20.83

4. Season Award Winners:
🌟 Golden Boot Winner: Cristiano Ronaldo (30 Goals)
🌟 Playmaker of the Season: Cristiano Ronaldo (40 Total Contributions)

==================================================

