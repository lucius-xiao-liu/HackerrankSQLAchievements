select convert (decimal(12,4), abs(min(lat_n)-max(lat_n))+abs((min(long_w)-max(long_w)))) AS [decimal]
from station
