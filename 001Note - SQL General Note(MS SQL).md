# T-SQL Statements
* Data Definiition Language - defines data structures(CAUD).
    * **A**LTER
    * Collations
    * **C**REATE
    * **D**ROP
    * Disable Trigger
    * Enable Trigger
    * Rename
    * **U**pdate Statistics
* Data Manipulation Language - affect the information stored in the database.
    * Insert
    * Delete
    * Update
    * Merge
    * Truncate Table
    * Bulk Insert - Insert a file (BULK INSERT DBname FROM 'file_address')
    
## Queries  
* Select From  Join On Where Group By Having Order By
* Joins:
    * Inner Joins
    * Outer Joins
        * Left Joins
        * Right Joins
    * Cross Joins - multi to multi
* Declare @variables
* Temp Table (CTE/Common Table Expression)
    * With temp as ()select.....From....
    * -- Define the CTE expression name and column list.  
WITH Sales_CTE (SalesPersonID, SalesOrderID, SalesYear)  
AS  
-- Define the CTE query.  
(  
    SELECT SalesPersonID, SalesOrderID, YEAR(OrderDate) AS SalesYear  
    FROM Sales.SalesOrderHeader  
    WHERE SalesPersonID IS NOT NULL  
)  
-- Define the outer query referencing the CTE name.  
SELECT SalesPersonID, COUNT(SalesOrderID) AS TotalSales, SalesYear  
FROM Sales_CTE  
GROUP BY SalesYear, SalesPersonID  
ORDER BY SalesPersonID, SalesYear; 
* Pivot Table
    * https://docs.microsoft.com/en-us/sql/t-sql/queries/from-using-pivot-and-unpivot?view=sql-server-2017

# Others
* CASE expression
      * WHEN when_expression THEN result_expression [ ...n ]   
        [ ELSE else_result_expression ]   

* CONCAT ( string_value1, string_value2 [, string_valueN ] )  
* -- CAST Syntax:  
CAST ( expression AS data_type [ ( length ) ] )  
  
* -- CONVERT Syntax:  
CONVERT ( data_type [ ( length ) ] , expression [ , style ] )  

* Left/Right expression
      * LEFT/RIGHT (character_expression/column, integer_expression/how much you want to show)--> return type: varchar(non-unicode)/nvarchar(unicode)   
