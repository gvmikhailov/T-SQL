USE [GS]
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
DECLARE @MaxPrice decimal(38,20)
SET @MaxPrice = (SELECT MAX([���� �������]) FROM [dbo].[��������� �����������$�����] WHERE [����������� ������������] <> 0)
SELECT [��.], [��������], [����. ���� ���������], @MaxPrice
  FROM [dbo].[��������� �����������$�����]
  WHERE [����������� ������������] <> 0 AND [���� �������] = @MaxPrice
  Order by [����. ���� ���������] DESC