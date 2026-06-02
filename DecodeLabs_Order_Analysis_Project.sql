Select *
From [Ecommerce Order CodeLabs]
--TotalOrder count
Select COUNT(*) as TotalOrders
From dbo.[Ecommerce Order CodeLabs]

--Count of Payment Method
		SELECT PaymentMethod, COUNT(*) AS PaymentMethodCount
		From dbo.[Ecommerce Order CodeLabs]
		Group BY PaymentMethod
		Order BY PaymentMethodCount DESC;

	--Count of Coupon Codes
		Select CouponCode, COUNT(*) AS CouponCodeCount
		From dbo.[Ecommerce Order CodeLabs]
		Group BY CouponCode
		Order BY CouponCodeCount DESC;

	--Order by product type
		Select [Product], COUNT(*) AS ProductTypeCount
		From dbo.[Ecommerce Order CodeLabs]
		Group BY [Product]
		Order BY ProductTypeCount DESC;

	--Product Outliers by TotalPrice
		Select [OrderID], [Date], [Product], [Quantity], [TotalPrice]
		From dbo.[Ecommerce Order CodeLabs]
		Where TotalPrice <= -1345.36 OR TotalPrice >= 3337.10
		Order BY TotalPrice;

	--Order Count by Referral Source
		Select ReferralSource, COUNT(*) AS ReferralSourceCount
		From dbo.[Ecommerce Order CodeLabs]
		Group BY ReferralSource
		Order BY ReferralSourceCount DESC;

	--Order Count by Referral Source for Delivered Orders
		Select ReferralSource, COUNT(*) AS ReferralSourceCount
		From dbo.[Ecommerce Order CodeLabs]
		where OrderStatus= 'delivered'
		Group BY ReferralSource
		Order BY ReferralSourceCount DESC;

	--Order Count by Status
		Select OrderStatus,COUNT(*) AS NumberOfOrders
		From dbo.[Ecommerce Order CodeLabs]
		Group BY OrderStatus
		Order BY NumberOfOrders DESC;

	--Order  count by Product
		Select Product,COUNT(*) AS ProductOrders
		from dbo.[Ecommerce Order CodeLabs]
		Group BY Product
		Order BY ProductOrders DESC;

	--Order by payment method
		Select PaymentMethod, COUNT(*) AS PaymentMethodCount
		From dbo.[Ecommerce Order CodeLabs]
		Group BY PaymentMethod
		Order BY PaymentMethodCount DESC;
--Total Revenue
	Select SUM(TotalPrice) as TotalRevenue
	From dbo.[Ecommerce Order CodeLabs]
	Where OrderStatus= 'delivered'

--Revenue by Product
	Select Product, SUM(TotalPrice) AS Revenue
	From dbo.[Ecommerce Order CodeLabs]
	Where OrderStatus= 'delivered'
	Group BY Product
	Order BY Revenue DESC;

--Revenue by Order Status
	Select OrderStatus, SUM(TotalPrice) AS Revenue
	From dbo.[Ecommerce Order CodeLabs]
	Group BY OrderStatus
	Order BY Revenue DESC;

--Revenue by Payment Method
	Select PaymentMethod, SUM(TotalPrice) AS Revenue
	From dbo.[Ecommerce Order CodeLabs]
	Where OrderStatus= 'delivered'
	Group BY PaymentMethod
	Order BY Revenue DESC;

--Revenue by Month
	Select MONTH(Date) AS OrderMonth, SUM(TotalPrice) AS Revenue
	From dbo.[Ecommerce Order CodeLabs]
	Where OrderStatus= 'delivered'
	Group BY MONTH(Date)
	Order BY Revenue DESC;

--Revenue referral Source
	Select ReferralSource, SUM(TotalPrice) AS Revenue
	From dbo.[Ecommerce Order CodeLabs]
	Where OrderStatus= 'delivered'
	Group BY ReferralSource
	Order BY Revenue DESC;

--Average order value by product
	Select Product, AVG(TotalPrice) AS AverageOrderValue
	From dbo.[Ecommerce Order CodeLabs]
	Where OrderStatus= 'delivered'
	Group BY Product
	Order BY AverageOrderValue DESC;

--	Average order value by payment method
			Select PaymentMethod, AVG(TotalPrice) AS AverageOrderValue
			From dbo.[Ecommerce Order CodeLabs]
			Group BY PaymentMethod
			Order BY AverageOrderValue DESC;

--Average order value by payment method
		Select paymentmethod, AVG(TotalPrice) AS AverageOrderValue
		From dbo.[Ecommerce Order CodeLabs]
		Where OrderStatus= 'delivered'
		Group by paymentmethod
		Order BY AverageOrderValue DESC;

--Average Quantity by Product
		Select Product, AVG(Quantity) AS AverageQuantity
		From dbo.[Ecommerce Order CodeLabs]
		Group BY Product
		Order BY AverageQuantity DESC;

----Average Quantity by Payment Method
		Select PaymentMethod, AVG(Quantity) AS AverageQuantity
		From dbo.[Ecommerce Order CodeLabs]
		Group BY PaymentMethod
		Order BY AverageQuantity DESC;

--Highest Quantity Ordered
		Select Max(Quantity) AS HighestQuantity
		From dbo.[Ecommerce Order CodeLabs]
		Order BY Quantity DESC;

--Highest Order Value
		Select max(TotalPrice) as HighesttotalPrice
		From dbo.[Ecommerce Order CodeLabs]

--Hihest Unitprice
		Select max(unitprice) as HighestTotalPrice
		From dbo.[Ecommerce Order CodeLabs] 

--Lowest Order Value
		Select min(TotalPrice) as LowestTotalPrice
		From dbo.[Ecommerce Order CodeLabs]

--Lowest Unit Price
		Select min(UnitPrice) as LowestUnitPrice
		From dbo.[Ecommerce Order CodeLabs]

--Lowest Quantity Ordered
		Select min(Quantity) as LowestQuantity
		From dbo.[Ecommerce Order CodeLabs]

----Lowest Quantity Ordered by Product
		Select Product, MIN(Quantity) AS LowestQuantity
		From dbo.[Ecommerce Order CodeLabs]
		Group BY Product
		Order BY LowestQuantity ASC;
--Top 10 Highest Orders
		Select TOP 10 OrderID, Date, Product, Quantity, TotalPrice
		From dbo.[Ecommerce Order CodeLabs]
		Order BY TotalPrice DESC;
--Top 10 High Orders
		Select TOP 10 OrderID, Date, Product, Quantity, TotalPrice
		From dbo.[Ecommerce Order CodeLabs]
		where OrderStatus= 'delivered'
		Order by TotalPrice DESC;

