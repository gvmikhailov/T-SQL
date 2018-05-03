USE [DTP31]
SELECT [customerEmail], [orderNo], MAX([orderPrice]) AS MaxPriceOrders
FROM [OrderData]
GROUP BY [customerEmail], [orderNo]
