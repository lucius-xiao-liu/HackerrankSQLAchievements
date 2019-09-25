select cast (max(lat_n) as decimal(12,4)) as [decimal]
from station 
where lat_n < 137.2345
