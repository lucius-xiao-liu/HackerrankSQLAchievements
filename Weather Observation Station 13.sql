select cast (sum(lat_n) AS decimal(12,4)) AS [decimal]
from station
where lat_n > 38.7880 and lat_n < 137.2345
