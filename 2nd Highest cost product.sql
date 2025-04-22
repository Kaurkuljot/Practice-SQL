Select top 1 ProductName, Unitprice
FROM
(
Select ProductName, Unitprice, 
Rank () OVER (Order BY Unitprice DESC) AS Pricerank
FROM Products
) AS rankedProducts
WHERE Pricerank= 2;


Method 2#


Select productname, Unitprice from Products p1
where 1= (Select COUNT(Distinct unitprice) From Products p2
Where P2.unitprice > P1.unitprice)