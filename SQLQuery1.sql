Select ProductName, Unitprice
from Products
where ProductID in (SELECT ProductId
					FROM [Order Details]
					Where OrderID in (Select orderid
										from orders
										where CustomerID in (Select customerID
																From customers
																Where city = 'London')))
Order by ProductName

SELECT CompanyName, City, Country
FROM Customers
Where CustomerID in (SELECT CustomerID
					 FROM Orders
					 WHERE OrderID in (SELECT OrderID
									   FROM [Order Details]
									   WHERE ProductID in (SELECT ProductID
														   FROM Products
														   WHERE CategoryID in (SELECT CategoryID
																			    FROM Categories
																				WHERE CategoryName = 'Condiments'))))
Order by CompanyName

SELECT ProductName, UnitPrice
FROM Products Prod
WHERE UnitPrice = (SELECT MAX(UnitPrice)
					FROM Products
					WHERE CategoryID = Prod.CategoryID)
order by ProductName

SELECT 
	Products.ProductID,
	Products.ProductName,
	Products.UnitPrice,
	Categories.CategoryName
FROM Categories INNER JOIN Products
ON Categories.CategoryID = Products.CategoryID
Order by Categories.CategoryName, Products.ProductName

SELECT CompanyName, City, Country
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID
						FROM Orders)
						ORDER BY Country

SELECT CompanyName, City, Country
FROM Customers LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE OrderID IS NULL
ORDER BY Country

SELECT *
FROM Orders

SELECT CompanyName, City, Country, COUNT(Orders.OrderID) as Cantidad
FROM Customers LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY CompanyName, City, Country
ORDER BY Cantidad

SELECT *
FROM Customers LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
JOIN [Order Details] OD
ON Orders.OrderID = OD.OrderID


