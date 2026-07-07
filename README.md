# Sports-Data-Analytics-Pipeline
​"A 4-month structured Sports Data Analytics portfolio. Mastering data extraction, analysis, and visualization of football databases using SQL, Python, and Power BI."
# ⚽ Sports Data Analytics: End-to-End Portfolio

Welcome to my Sports Data Analytics repository! This project is a structured 4-month journey dedicated to mastering the complete data lifecycle using real-world sports databases (specifically football match statistics, player performance, and tactical metrics).

### 🎯 Project Objective
To build a highly professional data portfolio by sequentially mastering the core trinity of Data Analytics:
1. **Data Extraction & Manipulation** (SQL)
2. **Data Cleaning & Advanced Analytics** (Python)
3. **Interactive Data Visualization** (Power BI)

### 🗓️ The 4-Month Roadmap
- **Phase 1 (SQL):** Querying complex sports databases, using JOINs, aggregations, and window functions to extract precise match data.
- **Phase 2 (Python):** Utilizing Pandas and NumPy to clean raw data, perform statistical analysis, and compute advanced football metrics (e.g., Expected Goals - xG).
- **Phase 3 (Power BI):** Transforming the analyzed data into dynamic, interactive dashboards for team management and tactical insights.

### 📈 Daily Progress Log
Below is the day-by-day track record of my SQL, Python, and Power BI scripts, showcasing continuous learning and practical application in the sports domain.

### Day 1: Basic SQL Retrieval and Filtering
- **What I learned:** Successfully extracted and filtered football player data using conditional logic.
- **SQL Concepts:** `SELECT`, `FROM`, `WHERE`, `OR`.
- **Domain Application:** Analyzed the `psg_squad` database to filter athletes based on their on-field positions (e.g., Defenders) and goal-scoring milestones.
  
### Day 2: Data Aggregation & Grouping
- **What I learned:** Calculated total, average, max, and min values, and grouped data by specific categories.
- **SQL Concepts:** `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`, `GROUP BY`.
- **Domain Application:** Aggregated team performance metrics for the `qatar_national_team` to analyze goals, distances, and match distributions by player positions.

### Day 3: Data Sorting & Advanced Aggregation Filtering
- **What I learned:** Mastered sorting data efficiently and filtering aggregated results using HAVING.
- **SQL Concepts:** `ORDER BY` (ASC/DESC), `LIMIT`, `HAVING`.
- **Domain Application:** Ranked player statistics and filtered team-level aggregated metrics (like total goals and average assists) using the `player_stats` table.

### Day 4: Relational Data & JOINs
- **What I learned:** Mastered combining multiple datasets using INNER JOIN and LEFT JOIN, implementing table aliasing (AS) for cleaner code.
- **SQL Concepts:** `INNER JOIN`, `LEFT JOIN`, `IS NULL`, Table Aliasing.
- **Domain Application:** Connected individual player profiles (`players` table) with their respective franchise/national team details (`teams` table) to perform cross-table analytics.
  
### Day 5: Subqueries (Nested Queries)
- **What I learned:** Mastered the ability to write dynamic inner queries to filter data based on calculated aggregated values (like averages and max values).
- **SQL Concepts:** `Subqueries` (Inner and Outer Queries).
- **Domain Application:** Evaluated player market values and goal statistics against dynamic averages within the `transfer_market` dataset.

### Day 6: Conditional Logic in SQL
- **What I learned:** Implemented IF-ELSE logic in SQL to dynamically categorize and classify data points. 
- **SQL Concepts:** `CASE WHEN`, `THEN`, `ELSE`, `END AS`.
- **Domain Application:** Categorized player metrics into meaningful business segments (e.g., Star players, Veterans, Elite performance) within the `player_metrics` dataset.

### Day 7: Aggregate Functions & Data Grouping
- **What I learned:** Mastered the use of aggregate functions (COUNT, SUM, AVG, MAX, MIN) and GROUP BY clauses to summarize football player statistics.
- **SQL Concepts:** `Aggregate Functions`, `GROUP BY`, `Data Summarization`.
- **Domain Application:** Performed comprehensive data analysis on the `football_players` dataset to extract team-wise and position-wise performance metrics.

- ### Day 8: Advanced Filtering with HAVING and ORDER BY
- **What I learned:** Implemented 'HAVING' for group-level filtering and 'ORDER BY' for data sorting. Corrected the syntax structure for combining multiple SQL clauses.
- **SQL Concepts:** `HAVING`, `ORDER BY`, `LIMIT`, `BETWEEN`.
- **Domain Application:** Advanced summarization of player stats, focusing on top scorers, young teams, and high-contribution positions in the football pipeline.

### Day 9: Mastering SQL JOINS
- **What I learned:** Successfully implemented INNER JOIN to link 'players' and 'teams' tables. Mastered the use of table aliases (AS) to simplify complex queries.
- **SQL Concepts:** `INNER JOIN`, `ON`, `GROUP BY` with `JOIN`, `Aliases`.
- **Domain Application:** Merged relational datasets in the Football Analytics pipeline to retrieve cross-table insights such as team-specific player stats and country-based rosters.

### Day 10: SQL Subqueries Mastery
- **What I learned:** Mastered the use of Subqueries to perform complex nested data retrievals. Learned to filter data based on aggregate results derived from internal queries.
- **SQL Concepts:** `Subqueries` inside `WHERE` clause, `IN`, `NOT IN`, `Nested Aggregate Functions`.
- **Domain Application:** Executed advanced analytical queries on the football database to identify top performers, compare metrics, and filter team compositions based on complex conditions.

### Day 11: Introduction to DDL and DML
- **What I learned:** Transitioned from querying data (DQL) to managing database structures (DDL) and manipulating records (DML). Learned to define schemas and handle data lifecycle events.
- **SQL Concepts:** - **DDL:** `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`.
- **DML:** `INSERT INTO`, `UPDATE SET`, `DELETE FROM`.
- **Domain Application:** Designed and managed a `team_roster` and `match_results` database schema, simulating real-world operations like updating stadium capacities and recording match outcomes.

### Day 12: SQL Constraints (Data Integrity)
- **What I learned:** Mastered the implementation of database constraints to ensure data accuracy and integrity. Learned how to enforce rules at the schema level.
- **SQL Concepts:** - `PRIMARY KEY` (Unique identification)
  - `NOT NULL` (Mandatory fields)
  - `UNIQUE` (Preventing duplicate values)
  - `DEFAULT` (Automatic fallback values)
  - `FOREIGN KEY` (Relational integrity)
- **Domain Application:** Designed a robust football database structure (stadiums, coaches, transfers, players, leagues, clubs) with strict rules to prevent data errors and maintain consistency across the pipeline.

### Day 13: Database Optimization (Index & Views)
- **What I learned:** Explored techniques to optimize database performance and simplify complex query management.
- **SQL Concepts:** - **INDEX:** Accelerated data retrieval by creating indexes on frequently queried columns.
- **VIEW:** Created virtual tables to encapsulate complex JOIN logic and simplify repetitive report generation.
- **Domain Application:** Optimized the football analytics pipeline by creating indexes on `player_name` and `team_name` for faster searching. Developed modular views for `top_scorers` and `player_details`, making the analysis of football data more efficient and maintainable.

  




  
  
