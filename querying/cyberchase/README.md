# Cyberchase

## Problem to Solve

Cyberchase is an animated, educational kid’s television series, aired by the United States’ Public Broadcasting Service (PBS) since 2002. Originally designed to “show kids that math is everywhere and everyone can be good at it,” the world of Cyberchase centers on Jackie, Matt, and Inez as they team up with Digit—a “cybird”—to stop Hacker from taking over Cyberspace and infecting Motherboard. Along the way, the quartet learn math, science, and problem-solving skills to thwart Hacker in his attempts.

## Schema

`id`, which uniquely identifies each row (episode) in the table\
`season`, which is the season number in which the episode aired\
`episode_in_season`, which is the episode’s number within its given season\
`title`, which is the episode’s title\
`topic`, which identifies the ideas the episode aimed to teach\
`air_date`, which is the date (expressed as YYYY-MM-DD) on which the episode “aired” (i.e., was published)\
`production_code`, which is the unique ID used by PBS to refer to each episode internally\

## Specification

`1.sql`, write a SQL query to list the titles of all episodes in Cyberchase’s original season, Season 1.\
`2.sql`, list the season number of, and title of, the first episode of every season.\
`3.sql`, find the production code for the episode “Hackerized!”.\
`4.sql`, write a query to find the titles of episodes that do not yet have a listed topic.\
`5.sql`, find the title of the holiday episode that aired on December 31st, 2004.\
`6.sql`, list the titles of episodes from season 6 (2008) that were released early, in 2007.\
`7.sql`, write a SQL query to list the titles and topics of all episodes teaching fractions.\
`8.sql`, write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.\
`9.sql`, write a query that counts the number of episodes released in Cyberchase’s first 6 years, from 2002 to 2007, inclusive.\
`10.sql`, write a SQL query to list the ids, titles, and production codes of all episodes. Order the results by production code, from earliest to latest.\
`11.sql`, list the titles of episodes from season 5, in reverse alphabetical order.\
`12.sql`, count the number of unique episode titles.\
`13.sql`, write a SQL query to explore a question of your choice. This query should:\
Involve at least one condition, using WHERE with AND or OR\
