SELECT
    [Doctor],
    [Professor],
    [Singer],
    [Actor]
FROM
    (SELECT 
         ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) rn,
         [Name],
         [Occupation] 
     FROM 
         Occupations
    ) AS source 
PIVOT
    ( MAX([Name]) FOR [occupation] IN ([Doctor],[Professor],[Singer],[Actor]) ) as pvt
ORDER BY rn
