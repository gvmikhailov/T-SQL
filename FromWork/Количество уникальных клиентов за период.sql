USE DTP31
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT Count(DISTINCT [customerEmail]) as [UniqueEmails], [customerEmail]
  FROM [dbo].[OrderData] where [orderCreation] BETWEEN '2018-03-23 00:00:00.0' AND '2018-04-23 23:59:59.0'
  GROUP BY [customerEmail]