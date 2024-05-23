# Football Matches - Tasks

Each of the questions/tasks below can be answered using a `SELECT` query. When you find a solution copy it into the code block under the question before pushing your solution to GitHub.

1) Find all the matches from 2017.

```sql
<!-- SELECT * FROM matches where season = 2017; -->


```

2) Find all the matches featuring Barcelona.

```sql
<!-- SELECT * FROM matches WHERE hometeam = 'Barcelona' OR awayteam = 'Barcelona'; -->


```

3) What are the names of the Scottish divisions included?

```sql
<!-- SELECT name FROM divisions WHERE country = 'Scotland';  -->


```

4) Find the value of the `code` for the `Bundesliga` division. Use that code to find out how many matches Freiburg have played in that division. HINT: You will need to query both tables

```sql
<!-- SELECT COUNT(*)
-- FROM matches
-- WHERE division_code = (
--     SELECT code
--     FROM divisions
--     WHERE name = 'Bundesliga'
-- )
-- AND (hometeam = 'Freiburg' OR awayteam = 'Freiburg'); -->


```

5)  Find the teams which include the word "City" in their name. HINT: Not every team has been entered into the database with their full name, eg. `Norwich City` are listed as `Norwich`. If your query is correct it should return four teams.

```sql
<!-- SELECT DISTINCT hometeam AS team
-- FROM matches
-- WHERE hometeam LIKE '%City%'
-- UNION
-- SELECT DISTINCT awayteam AS team
-- FROM matches
-- WHERE awayteam LIKE '%City%'-->


```

6) How many different teams have played in matches recorded in a French division?

```sql
<!-- SELECT COUNT(DISTINCT team)
-- FROM (
--     SELECT hometeam AS team
--     FROM matches
--     WHERE division_code IN (SELECT code FROM divisions WHERE country = 'France')
--     UNION ALL
--     SELECT awayteam AS team
--     FROM matches
--     WHERE division_code IN (SELECT code FROM divisions WHERE country = 'France')
-- ) AS combined_teams; -->


```

7) Have Huddersfield played Swansea in any of the recorded matches?

```sql
<!-- SELECT * FROM matches
-- WHERE (hometeam = 'Huddersfield' AND awayteam = 'Swansea')
--    OR (hometeam = 'Swansea' AND awayteam = 'Huddersfield'); -->


```

8) How many draws were there in the `Eredivisie` between 2010 and 2015?

```sql
<!-- SELECT COUNT(*) AS draw_count
-- FROM matches
-- WHERE division_code = (SELECT code FROM divisions WHERE name = 'Eredivisie')
--   AND fthg = ftag
--   AND season BETWEEN 2010 AND 2015;-->


```

9) Select the matches played in the Premier League in order of total goals scored (`fthg` + `ftag`) from highest to lowest. When two matches have the same total the match with more home goals (`fthg`) should come first. 

```sql
<!-- SELECT *
-- FROM matches
-- WHERE division_code = (SELECT code FROM divisions WHERE name = 'Premier League')
-- ORDER BY (fthg + ftag) DESC, fthg DESC;-->


```

10) Find the name of the division in which the most goals were scored in a single season and the year in which it happened.

```sql
<!-- SELECT d.name AS division_name, m.season
-- FROM (
--     SELECT division_code, season, SUM(fthg + ftag) AS total_goals
--     FROM matches
--     GROUP BY division_code, season
-- ) AS m
-- JOIN divisions AS d ON m.division_code = d.code
-- ORDER BY m.total_goals DESC
-- LIMIT 1;-->


```

### Useful Resources

- [Filtering results](https://www.w3schools.com/sql/sql_where.asp)
- [Ordering results](https://www.w3schools.com/sql/sql_orderby.asp)
- [Grouping results](https://www.w3schools.com/sql/sql_groupby.asp)