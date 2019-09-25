select distinct city from station where city like '[^aeiou]%' or city like '%[^aeiou]'

select distinct city from station where city Not like '[aeiou]%' or city not like '%[aeiou]'
