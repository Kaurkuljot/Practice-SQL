Select TOP 10 Products.ProductName, SUM([Order Details].Quantity) AS [Number of units Sold]
FROM [Order Details]
JOIN Products
ON Products.ProductID = [Order Details].ProductID
GROUP BY Products.ProductName
Order BY [Number of units Sold] DESC