USE [DTP31]
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT [orderNo], [customerEmail]
  FROM [OrderData]
  WHERE (SELECT Count([customerEmail]) FROM [OrderData]) > 1
  Order by [customerEmail]
