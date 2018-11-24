USE DBName
SELECT table2.ProductName AS ������, table3.CategoryName AS �����������
FROM Products table1
/*
        ������������ ������� ����� ����� ����������� � ���������� �����, ����� ��������
        ������ ������ �������, ���� ���, ������� ��� � CMS
*/
OUTER LEFT JOIN CMS table2 ON table1.Product = table2.Product
/*
        ������������ ������� ��������� �����, ����� ��������
        ������ ������ ����� � ���������. � �������, � ������� ��� ���������, ����� � ���� ���������
        �������� NULL
*/
OUTER LEFT JOIN Categories table3 ON table2.Category = table3.Category


