SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
USE [GS]
DECLARE @MaxDifference decimal(38,20);
SET @MaxDifference = (SELECT MAX([���� �������] - [������. �������]) FROM [dbo].[��������� �����������$�����])
SELECT [��.], [��������], [���� �������], [������. �������], @MaxDifference as MaxDifference FROM  [dbo].[��������� �����������$�����] 
WHERE [���� �������] != 0 AND ([���� �������] - [������. �������]) = @MaxDifference