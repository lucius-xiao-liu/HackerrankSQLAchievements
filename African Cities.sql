select city.name
from city 
join country on country.code = city.countrycode
where country.continent = 'Africa'
