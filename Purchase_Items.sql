CREATE TABLE [dbo].[Purchase_Items](
	[ID] [int] NULL,
	[Model_Name] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[PurchaseDate] [date] NULL
);
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (1, N'Galaxy S10', N'Samsung', CAST(25000.00 AS Decimal(18, 2)), CAST(N'2020-01-12' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (2, N'Galaxy S20', N'Samsung', CAST(55000.00 AS Decimal(18, 2)), CAST(N'2020-01-18' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (3, N'Galaxy Note10', N'Samsung', CAST(40000.00 AS Decimal(18, 2)), CAST(N'2020-01-22' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (4, N'Galaxy A51', N'Samsung', CAST(21000.00 AS Decimal(18, 2)), CAST(N'2020-01-31' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (5, N'iPhone X', N'Apple', CAST(50000.00 AS Decimal(18, 2)), CAST(N'2020-02-03' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (6, N'iPhone 11', N'Apple', CAST(70000.00 AS Decimal(18, 2)), CAST(N'2020-02-07' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (7, N'iPhone 6s', N'Apple', CAST(20000.00 AS Decimal(18, 2)), CAST(N'2020-02-10' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (8, N'iPhone 8', N'Apple', CAST(30000.00 AS Decimal(18, 2)), CAST(N'2020-02-21' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (9, N'Y8', N'Huawei', CAST(16000.00 AS Decimal(18, 2)), CAST(N'2020-03-10' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (10, N'P30', N'Huawei', CAST(45000.00 AS Decimal(18, 2)), CAST(N'2020-03-12' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (11, N'Y9', N'Huawei', CAST(24000.00 AS Decimal(18, 2)), CAST(N'2020-03-14' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (12, N'P40', N'Huawei', CAST(50000.00 AS Decimal(18, 2)), CAST(N'2020-03-19' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (13, N'Redmi 9', N'Xiaomi', CAST(10000.00 AS Decimal(18, 2)), CAST(N'2020-03-21' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (14, N'Redmi K30', N'Xiaomi', CAST(25000.00 AS Decimal(18, 2)), CAST(N'2020-04-03' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (15, N'Mi Note 10', N'Xiaomi', CAST(15000.00 AS Decimal(18, 2)), CAST(N'2020-04-21' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (16, N'BlackShark', N'Xiaomi', CAST(30000.00 AS Decimal(18, 2)), CAST(N'2020-04-20' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (17, N'iPhone 11', N'Apple', CAST(70000.00 AS Decimal(18, 2)), CAST(N'2020-04-22' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (18, N'iPhone 11', N'Apple', CAST(70000.00 AS Decimal(18, 2)), CAST(N'2020-05-03' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (19, N'Galaxy S20', N'Samsung', CAST(55000.00 AS Decimal(18, 2)), CAST(N'2020-05-10' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (20, N'Galaxy S10', N'Samsung', CAST(25000.00 AS Decimal(18, 2)), CAST(N'2020-05-12' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (21, N'Galaxy Note10', N'Samsung', CAST(40000.00 AS Decimal(18, 2)), CAST(N'2020-05-14' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (22, N'iPhone 8', N'Apple', CAST(30000.00 AS Decimal(18, 2)), CAST(N'2020-05-21' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (23, N'BlackShark 3', N'Xiaomi', CAST(30000.00 AS Decimal(18, 2)), CAST(N'2020-05-22' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (24, N'P40', N'Huawei', CAST(45000.00 AS Decimal(18, 2)), CAST(N'2020-05-08' AS Date));
INSERT [dbo].[Purchase_Items] ([ID], [Model_Name], [Brand], [Price], [PurchaseDate]) VALUES (25, N'iPhone X', N'Apple', CAST(70000.00 AS Decimal(18, 2)), CAST(N'2020-05-10' AS Date));

SELECT 
    ISNULL(Brand, 'GrandTotal') AS Brand,
    SUM(Price) AS [Total Amount]
FROM Purchase_Items
GROUP BY ROLLUP(Brand);



SELECT 
    MONTH(PurchaseDate) AS [Month],
    ISNULL(Brand, 
        CASE 
            WHEN GROUPING(MONTH(PurchaseDate)) = 0 THEN 'Monthly Total'
            ELSE 'Grand Total'
        END
    ) AS Brand,
    SUM(Price) AS [Total Amount]
FROM Purchase_Items
GROUP BY ROLLUP(MONTH(PurchaseDate), Brand)
ORDER BY 
    GROUPING(MONTH(PurchaseDate)),
    MONTH(PurchaseDate),
    GROUPING(Brand),
    Brand;
    
 
 
 
SELECT
  CASE WHEN GROUPING(MONTH(PurchaseDate)) = 0 THEN MONTH(PurchaseDate) ELSE NULL END AS PurchaseMonth,
  CASE
    WHEN GROUPING(Brand) = 0 AND GROUPING(MONTH(PurchaseDate)) = 0 THEN Brand                          
    WHEN GROUPING(Brand) = 0 AND GROUPING(MONTH(PurchaseDate)) = 1 THEN 'Grand Total for ' + Brand    
    WHEN GROUPING(Brand) = 1 AND GROUPING(MONTH(PurchaseDate)) = 1 THEN 'Grand Total'               
    WHEN GROUPING(Brand) = 1 AND GROUPING(MONTH(PurchaseDate)) = 0 THEN 'Monthly SubTotal'         
  END AS Brand,
  SUM(Price) AS [Total Amount]
FROM Purchase_Items
GROUP BY CUBE(MONTH(PurchaseDate), Brand)
ORDER BY

  CASE WHEN GROUPING(Brand) = 0 THEN 0 ELSE 1 END,

  CASE WHEN GROUPING(Brand) = 0 THEN Brand ELSE '' END,

  CASE
    WHEN GROUPING(Brand) = 0 AND GROUPING(MONTH(PurchaseDate)) = 0 THEN 0
    WHEN GROUPING(Brand) = 0 AND GROUPING(MONTH(PurchaseDate)) = 1 THEN 1

    WHEN GROUPING(Brand) = 1 AND GROUPING(MONTH(PurchaseDate)) = 1 THEN 0
    ELSE 2
  END,

  MONTH(PurchaseDate);


SELECT
  CASE WHEN GROUPING(MONTH(PurchaseDate)) = 0 THEN MONTH(PurchaseDate) ELSE NULL END AS PurchaseMonth,
  SUM(Price) AS [Total Amount]
FROM Purchase_Items
GROUP BY CUBE(MONTH(PurchaseDate))
ORDER BY

  CASE WHEN GROUPING(MONTH(PurchaseDate)) = 1 THEN 1 ELSE 0 END,
  MONTH(PurchaseDate);