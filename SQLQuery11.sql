select OrderID, OrderDate
	 from Orders
	 where EmployeeID = 5

select SupplierID, ContactName, ContactTitle
	 from Suppliers
	 where ContactTitle != 'Marketing Manager' 
		and ContactTitle != 'Sales Manager'

select * 
	from Products
	where ProductName like '%chai%'

select OrderID, CustomerID, ShipCountry
	from Orders
	where ShipCountry = 'France' 
		or ShipCountry = 'Belgium'

select OrderID, CustomerID, ShipCountry
	from Orders
	where ShipCountry in ('Brazil', 'Mexico', 'Argentina', 'Venezuela')


select FirstName, LastName, convert (date, BirthDate), Title
	from Employees
	order by BirthDate 

select FirstName, LastName, FirstName + ' ' + LastName as FullName
	from Employees

select OrderId, ProductId, UnitPrice, Quantity, UnitPrice * Quantity as TotalPrice
	from [Order Details]
	order by OrderId, ProductId

select count(*) as TotalCustomers
	from Customers

select min (OrderDate) as FirstOrderDate, max ( OrderDate) as LastOrderDate
	from Orders

select Country
	from Customers
	group by Country

select distinct Country
	from Customers

select Country, count(*) as CustomerCount
	from Customers
	--where Country in ( 'Argentina', 'Brazil')
	group by Country

Select ContactTitle, count(*) as TitleCount
	from Customers
	group by ContactTitle

select * from Products
select * from Suppliers

select ProductId, p.ProductName, s.CompanyName
   from Products as p
   Join Suppliers as s on (p.SupplierID = s.SupplierId)
  --group by ProductName, CompanyName
	--where s.SupplierId = 3

select * from Orders
select * from Shippers

select OrderId, convert(date,OrderDate) as OrderDate, CompanyName 
	from Orders as o
	Join Shippers as s on ( s.ShipperId = o.ShipVia)
	--where OrderId < 10300

select * from Products
select * from Categories

select CategoryID, count(*) as ProductCount
	from Products 
	group by CategoryID

select c.CategoryId, c.CategoryName, count(*) as ProductCount
	from Products as p
		join Categories as c on ( c.CategoryID = p.CategoryID)
	group by c.CategoryID, c.CategoryName

select * from Customers

Select City, Country, count(*) as CustomersCount
	from Customers
	group by City, Country

select ProductId, ProductName, UnitsInStock, UnitsOnOrder
	from Products
	where UnitsInStock < ReorderLevel 
		and Discontinued = 0

select * from Products

select ProductId, ProductName, UnitsInStock, UnitsOnOrder
	from Products
	where UnitsInStock <= ReorderLevel - UnitsOnOrder
	--where UnitsInStock + UnitsOnOrder <= ReorderLevel
		and Discontinued = 0

select CustomerID, CompanyName,
	( case when Region is null then 'BÖLGE BİLGİSİ YOK' else Region end) as Region
	from Customers
	--where Region is null
	--where Region is not null

select * from Orders

select ShipCountry,	avg( Freight) as AverageShippingCost
	from Orders
	group by ShipCountry
	order by AverageShippingCost desc

select top 3 ShipCountry,	avg( Freight) as AverageShippingCost
	from Orders
	group by ShipCountry
	order by AverageShippingCost desc

select ShipCountry,	avg( Freight) as AverageShippingCost
	from Orders
	where OrderDate between '19970101' and '19980101'
	group by ShipCountry
	order by AverageShippingCost desc