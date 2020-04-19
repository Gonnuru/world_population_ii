1) How many entries in the countries table are from Africa?
----
select count(*) as Africa
from countries 
where continent = 'Africa';
----

2) What was the total population of the continent of Oceania in 2005?
----
SELECT round(SUM(population),0) as 'Oceania Population in 2005' 
FROM population_years
INNER JOIN countries ON
countries.id = population_years.country_id
WHERE year = 2005
AND continent = 'Oceania';
----

3) What is the average population of countries in South America in 2003?
----
select round(avg(population), 1) as 'Average South America Population in 2003'
from population_years
join countries
  on countries.id = population_years.country_id
where year = 2003
  and continent = 'South America';
----

4) What country had the smallest population in 2007?
----
select min(population) as 'Population count', name as 'Smallest Population in 2007'
from population_years
join countries
  on countries.id = population_years.country_id
where year = 2007;
----

5) What is the average population of Poland during the time period covered by this dataset?
----
select round(avg(population), 2) as 'Average Population', name as 'Country = Poland'
from population_years
join countries
  on countries.id = population_years.country_id
where name = 'Poland';
----

6) How many countries have the word “The” in their name?
----
select count(*) as 'Total Countries Having word = The' 
from countries
where name like '%The%';
----

7) What was the total population of each continent in 2010?
----
select sum(population) as 'Total Popluation per continent in 2010', continent
from population_years
join countries
  on countries.id = population_years.country_id
where year = 2010
group by continent;
----