Create view dbo.vw_EcommerceOrderSummary
As Select 
	OrderID,
	Date,
	CustomerID,
	Product,
	Quantity,
	UnitPrice,
	ShippingAddress,
	PaymentMethod,
	OrderStatus,
	TrackingNumber,
	ItemsInCart,
	CouponCode,
	ReferralSource,
	TotalPrice
From dbo.[Ecommerce Order CodeLabs]
