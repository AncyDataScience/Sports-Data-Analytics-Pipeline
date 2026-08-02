# Day 21: Introduction to Pandas for Sports Analytics

import pandas as pd

# Data dictionary
data = {
    "Player": ["Cristiano Ronaldo", "Erling Haaland", "Jude Bellingham"],
    "Goals": [30, 25, 22],
    "Team": ["Al Nassr", "Manchester City", "Real Madrid"]
}

# Creating a Pandas DataFrame
df = pd.DataFrame(data)

# Displaying the DataFrame
print(df)

# OUTPUT 
              Player  Goals             Team
0  Cristiano Ronaldo     30         Al Nassr
1     Erling Haaland     25  Manchester City
2    Jude Bellingham     22       Real Madrid
