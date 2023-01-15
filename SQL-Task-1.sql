--1)Write a query to count current and discontinued products.

select count(*) [Discontinued products] from Products p 
group by p.Discontinued 
having p.Discontinued = 'true'

--2)Write a query to get Product list (name, units on order , units in stock) of stock 
--is less than the quantity on order

select p.ProductName, p.UnitsOnOrder, p.UnitsInStock from Products p 
where p.UnitsInStock < p.UnitsOnOrder

--3)Write a query to get discontinued Product list (Product ID and name).

select p.CategoryID, p.ProductName from products p where p.Discontinued = 'true'

--4)Write a query to get Product list (id, name, unit price) where current products cost less than $20.

select p.ProductID, p.ProductName, p.UnitPrice from Products p where p.UnitPrice < 20

--5)Write a query to get Product list (id, name, unit price) where products cost between $15 and $25.

select p.ProductID, p.ProductName, p.UnitPrice from Products p where p.UnitPrice between 15 and 25