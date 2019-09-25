 SELECT SUM(City.Population) 
 FROM City 
 INNER JOIN Country ON City.COUNTRYCODE=Country.Code 
 WHERE Country.Continent='Asia';
