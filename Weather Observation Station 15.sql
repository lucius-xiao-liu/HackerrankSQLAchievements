select cast (long_w as decimal(12,4)) as [decimal]
from station
where lat_n = (select max(lat_n) from station where lat_n < 137.2345)
