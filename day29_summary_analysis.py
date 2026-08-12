# Day 29: Advanced Data Summary & Finding Maximum in Pandas

import pandas as pd

# Creating a DataFrame with player statistics
data = {
    "Player": ["Ronaldo", "Haaland", "Bellingham", "Messi"],
    "Goals": [30, 25, 22, 20]
}

df = pd.DataFrame(data)

print("## Top Goal Scorers Summary ##")
print(df)

# Finding the row with the maximum goals using idxmax() and loc[]
top_scorer = df.loc[df["Goals"].idxmax()]

print("\nTop Goal Scorer of the Season:")
print(top_scorer["Player"], "with", top_scorer["Goals"], "goals!")

# Output 
## Top Goal Scorers Summary ##
       Player  Goals
0     Ronaldo     30
1     Haaland     25
2  Bellingham     22
3       Messi     20

Top Goal Scorer of the Season:
Ronaldo with 30 goals!
