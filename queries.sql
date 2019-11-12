-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select ProductName, CategoryId from [Product];

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

-- SELECT [Order].Id as OrderId, Shipper.CompanyName FROM [Order] 
-- JOIN Shipper on [Order].ShipVia = Shipper.Id WHERE ShippedDate < '2012-08-09' ;

select o.Id, s.CompanyName from [Order] as o join [Shipper]as s On o.ShipVia = s.Id where o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select p.ProductName,p.QuantityPerUnit from [OrderDetail] as od  join [Product] as p On od.ProductId = p.Id where od.OrderId = 10251 order by p.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [Order].Id, [Customer].CompanyName, [Employee].LastName
FROM [Order]
JOIN [Customer], [Employee]
WHERE [Order].CustomerId = [Customer].Id AND [Order].EmployeeId = [Employee].Id;
