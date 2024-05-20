# League of Legends Statistics @ 15 minutes

### Project Overview

This project's objective is to provide insights on the number of factors that could affect the win rate of each side, blue or red. Factors such as dragons slained, total gold gained, number of kills a team has can alter the result of a match. We will dive into the dataset to try to discover any trends that could lead to a side to become the victors of a game. 

### About the Data

The primary dataset can be found on <https://www.kaggle.com/datasets/jakejoeanderson/league-of-legends-diamond-matches-ff15>. The dataset is <LoL_15_Diamond.csv>, provided in the repository. 

### Tools Used

- Excel - Data Cleaning
- SQL - Data Cleaning & Data Analysis
- Tableau - Data Visualization

### Data Cleaning/Preparation

1. Data loading and Joining
2. Data Cleaning and Sorting
3. Data Formatting and Transforming

### Exploratory Data Analysis (EDA)

EDA was performed to answer key questions, such as, but not limited to:

1. Were there any substantial differences between the totals from both sides?
2. Were there any substantial differences between the averages from both sides?
3. Could any of these differences lead to victories?
4. What were some KPIs that would highly influence a victory or a defeat?

### Results/Findings

1. We saw that there was a big difference in total wards where blue side has placed more of. Voidgrubs from blue side was also considerably higher than red side. Red side, however, had more dragons slained compared to blue. The rest of the data seemed to be relatively close to each other.
2. We saw the average voidgrub to be decently higher on the blue side compared to red side. Dragons from red side was slightly higher than blue's. The rest of the data seems to be relatively close to each other.
3. Blue side's total wards being higher could be a reason why blue side had a higher win rate. Voidgrubs and dragons are neutral objectives that spawn in the middle of the map and both sides have a statistic higher than the other and vice-versa.
4. It appeared that the KPIs would be total wards, voidgrubs, and dragons. These factors seemed to have the highest difference between both sides.

### Recommendations

Based on the analysis, we recommend the following actions:

1. Blue side seems to have a slightly higher win rate but that does not guarantee a victory. Placing wards and securing void grubs could help lead blue side to a victory. On the red side, securing more dragons could be a good strategy to winning a game.
2. This dataset provides statistical information at the 15 minute mark specifically, games can go onto 30 minutes, 45 minutes to over 1 hour long. At that point, anything can happen and these statistics would no longer be of use.
3. League of Legends is a very fast paced game where nothing can be decided based on ambiguous factors like number of wards placed, number of voidgrubs or dragons slained, etc. Even if the total gold is lower on 1 side, does not mean they would automatically lose the game. Comeback potential in this game is very likely and should not be underestimated. There are many factors aside from these factors such as champion (the characters in the game) match up, skill match up between players, and teams match ups, etc. 

### Complimentary Visualization

<https://public.tableau.com/app/profile/david.lee7724/viz/Book1_17159968328150/TotalSum>











