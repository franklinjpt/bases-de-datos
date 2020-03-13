SELECT COUNT(CategoryID) AS ProductosDistrib
FROM Products

SELECT COUNT(DISTINCT CategoryID) AS ProductosDistrib
FROM Products

SELECT *
FROM Employees

SELECT *
FROM Products

SELECT COUNT(*)
FROM Employees

SELECT COUNT(DISTINCT Region)
FROM Employees

SELECT *
FROM Customers

SELECT AVG(UnitPrice) AS Promedio
FROM Products
WHERE SupplierID = 1

SELECT COUNT(*) AS Cantidad,AVG(UnitPrice) AS Promedio
FROM Products
WHERE SupplierID = 1

SELECT COUNT(*) AS Cantidad,AVG(UnitPrice) AS Promedio
FROM Products
WHERE SupplierID = 1

SELECT MAX(UnitPrice) 
FROM Products

SELECT MIN(UnitPrice)
FROM Products

SELECT MIN(UnitPrice) AS MinEmpresa
FROM Products
WHERE SupplierID = 2

SELECT SUM(UnitPrice) AS valortotalunidad
FROM Products

SELECT SUM(UnitPrice*UnitsInStock) AS [valor inventario]
FROM Products

SELECT SUM(unitprice*quantity*(1-discount)) AS Ganancia
FROM [order details]

SELECT *
FROM ORDERS

SELECT MIN(ORDERDATE) 
FROM ORDERS

SELECT MAX(ORDERDATE)
FROM ORDERS


/*ejercicio*/

Select COUNT(*) as [Numero de Productos],
	   MAX(unitprice) as [PrecioUnit Max],
	   Min(unitprice) as [PrecioUnit Min],
	   AVG(unitprice) as [PrecioUnit Prom],
	   STDEV(unitprice) as [PrecioUnit Desv],
	   SUM(unitprice*unitsinstock) as [Precioinventario]
FROM Products
Where discontinued='false' and supplierid in (1,3,5,7,9,11,12,15,18,21)
 
select avg(unitprice) as Prom_precio
from products
group by categoryid

select *
from employees 

select city, count(employeeid)
from employees
group by city


