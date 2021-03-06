USE [DTP31]
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT [orderNo], [orderCreation]
  FROM [dbo].[OrderData]
  WHERE [orderNo] = (SELECT MIN([orderNo]) FROM [OrderData] WHERE [orderCreation] BETWEEN '2017-04-20 00:00:00.0' AND '2018-04-20 00:00:00.0')