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
    * SELECT <non-pivoted column>,  
    [first pivoted column] AS <column name>,  
    [second pivoted column] AS <column name>,  
    ...  
    [last pivoted column] AS <column name>  
FROM  
    (<SELECT query that produces the data>)   
    AS <alias for the source query>  
PIVOT  
(  
    <aggregation function>(<column being aggregated>)  
FOR   
[<column that contains the values that will become column headers>]   
    IN ( [first pivoted column], [second pivoted column],  
    ... [last pivoted column])  
) AS <alias for the pivot table>  
<optional ORDER BY clause>;  

### Others
* CASE expression
      * WHEN when_expression THEN result_expression [ ...n ]   
     [ ELSE else_result_expression ]   

* CONCAT ( string_value1, string_value2 [, string_valueN ] )  
* -- CAST Syntax:  
CAST ( expression AS data_type [ ( length ) ] )  
  
* -- CONVERT Syntax:  
CONVERT ( data_type [ ( length ) ] , expression [ , style ] )  
