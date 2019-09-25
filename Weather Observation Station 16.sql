select cast(min(lat_n) as decimal (12,4)) as [decimal]
from station
where lat_n > 38.7780
