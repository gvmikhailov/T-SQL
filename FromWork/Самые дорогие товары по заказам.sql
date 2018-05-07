USE [DTP31]
DECLARE @orderMin INT, @orderMax INT, @iteration INT, @maxUnit INT
SET @orderMin = 1524857100;
SET @orderMax = 1524857163;
SET @iteration = 1;
WHILE @orderMin < @orderMax
BEGIN
SET @maxUnit = (SELECT MAX(priceUnit) FROM ProductData WHERE orderNo = @orderMin)
SELECT priceUnit, table1.orderNo, article, [Описание]
FROM [P31-MSNAV01].DTP31.dbo.ProductData table1
JOIN [GS-MSNAV01].GS.dbo.[Городской супермаркет$Товар] table2 ON table1.article = table2.[Но.] COLLATE Cyrillic_General_BIN
JOIN [P31-MSNAV01].DTP31.dbo.OrderData table3 ON table1.orderNo = table3.orderNo
WHERE table3.orderNo = @orderMin AND priceUnit = @maxUnit
SET @orderMin = @orderMin + @iteration;
END
