select convert(decimal(12,4), sqrt((square(min(lat_n)-max(lat_n))+square(min(long_w)-max(long_w))))) AS [decimal]
                                                                                                        from station
