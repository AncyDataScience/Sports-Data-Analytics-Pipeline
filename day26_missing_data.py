# Day 26: Handling Missing Data in Pandas

import pandas as pd
import numpy as np

# Creating a dataset with missing values (NaN)
data = {
    "Player": ["Cristiano Ronaldo", "Erling Haaland", "Jude Bellingham", "Lionel Messi", "Neymar Jr"],
    "Goals": [30, 25, np.nan, 20, np.nan],
    "Assists": [10, 8, 12, np.nan, 5],
    "Team": ["Al Nassr", "Manchester City", "Real Madrid", "Inter Miami", "Al Hilal"]
}

df = pd.DataFrame(data)

print("## Original DataFrame with Missing Values ##")
print(df)
print("\n" + "="*50 + "\n")

# 1. Dropping rows with any missing values
df_dropped = df.dropna()
print("## After Dropping Missing Rows (.dropna()) ##")
print(df_dropped)
print("\n" + "="*50 + "\n")

# 2. Filling missing values with 0
df_filled = df.fillna(0)
print("## After Filling Missing Values with 0 (.fillna(0)) ##")
print(df_filled)

# Output 

## Original DataFrame with Missing Values ##
              Player  Goals  Assists             Team
0  Cristiano Ronaldo   30.0     10.0         Al Nassr
1     Erling Haaland   25.0      8.0  Manchester City
2    Jude Bellingham    NaN     12.0      Real Madrid
3       Lionel Messi   20.0      NaN      Inter Miami
4          Neymar Jr    NaN      5.0         Al Hilal

==================================================

## After Dropping Missing Rows (.dropna()) ##
              Player  Goals  Assists             Team
0  Cristiano Ronaldo   30.0     10.0         Al Nassr
1     Erling Haaland   25.0      8.0  Manchester City

==================================================

## After Filling Missing Values with 0 (.fillna(0)) ##
              Player  Goals  Assists             Team
0  Cristiano Ronaldo   30.0     10.0         Al Nassr
1     Erling Haaland   25.0      8.0  Manchester City
2    Jude Bellingham    0.0     12.0      Real Madrid
3       Lionel Messi   20.0      0.0      Inter Miami
4          Neymar Jr    0.0      5.0         Al Hilal
