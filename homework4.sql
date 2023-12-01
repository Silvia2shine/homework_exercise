--1. Write a SELECT statement that will return all rows and 
--all columns from the Person.Person table.


select *
from Person.Person;


--2. Write a SELECT statement to return the Title, 
--FirstName, MiddleName and LastName columns from 
--the Person.Person table.

select 
Title, 
FirstName,
MiddleName,
LastName
from Person.Person;

--3.Write a SELECT statement to return FirstName column 
--from the Person.Person table. Write down the number 
--of rows.  

select 
[FirstName]
from Person.Person;

-- 4. Modify the query from Exercise 3 to return only distinct 
--values. How many rows were returned?
--When the rows returned by the two queries will be the 
--same?

select 
[FirstName]
from Person.Person;

select distinct
[FirstName]
from Person.Person;

--5.Write a SELECT statement to return the FirstName and 
--LastName columns from the Person.Person table 
--assigning “P” as the table alias. Use the table alias P to 
--prefix the names of the two columns in the SELECT list 

select distinct
p.[FirstName],
p.[LastName]
from Person.Person as p;

--6.Write a SELECT statement to return the 
--BusinessEntityID, FirstName and LastName columns 
--from the Person.Person table. Assign the column 
--aliases “PersonID”, “First Name” and “Last Name” 
--for reporting purposes.select
[BusinessEntityID] as PersonId,
[FirstName]as [First Name],
[LastName] as [Last Name]
from Person.Person;

-- 7. The following should return two columns but it returns 
--just one. Please modify the query to function correctly.
--SELECT FirstName LastName
--FROM Person.Person

SELECT FirstName, LastName
FROM Person.Person


-- 8. You have to create a report based on the 
--Production.Product and 
--Production.ProductSubcategory tables. The report 
--should contain the product name and the category name 
--of the product. The following table contains the mapping 
--between the product category IDs and their names:select p.[Name],ps.[Name]from Production.Product pjoin Production.ProductSubcategory pson p.ProductSubcategoryId = ps.ProductSubcategoryId;