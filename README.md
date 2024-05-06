# Programming the South American Qualifiers for the FIFA 2018 World Cup using Integer Programming

### Introduction
In all World Cups from 1998 to 2014, CONMEBOL (South American Football Confederation) used a double round-robin system for the qualifying tournament. The tournament is divided into 18 matchdays, and under this format, a team would face each opponent once in the first 9 matchdays in a predetermined order, and then again in the last 9 matchdays in the same order but with the home-away reversed. Each matchday consists of 5 matches in which each team participates exactly once. Therefore, the tournament comprises a total of 90 matches.

The decision to structure the fixture in this manner led to many injustices and complaints from the various federations within CONMEBOL. In this project, we will be analyzing different variants, aiming to find solutions that meet all required constraints.

Our objective with this work is to define the fixture for the South American football qualifiers for the 2018 World Cup. To do this, we will make use of linear programming.

### Report
In the report, besides presenting all possible fixtures, we have explained how the variables we used are defined, along with their respective constraints, to explore different fixture configurations, such as the French, English schemes, among others. Once all configurations were obtained, we proceeded to assign numbers to each country through a random draw and completed the fixtures in each scheme, ensuring not to show favoritism towards any particular country.

Additionally, considering the variants previously made and addressing concerns expressed by the federations of the countries, who have pointed out that playing against Argentina and Brazil in consecutive dates demotivates the players due to the almost inevitable defeat, we have incorporated an additional constraint to avoid this situation. Consequently, new fixtures have been generated taking this constraint into account.

### Code and Usage
The project contains the necessary code to solve the linear programming problem and generate a new fixture for the South American qualifiers in ZPL format, with each formulated variation. To obtain the solution, simply execute the desired file in SCIP or another integer programming framework.


### Authors

+ Alvarez Colombo, Juan Ignacio
+ Comerso Salzer, Delfina Belen
+ Ortiz, Pedro
+ Sanchez Goicochea, Jhosept Levyt
