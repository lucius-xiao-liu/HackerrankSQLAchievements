/*
* https://www.hackerrank.com/challenges/weather-observation-station-3/problem
*/

select distinct City
from station
where id%2 = 0
