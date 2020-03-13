USE [CoreDatabase]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2020-03-13 10:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProductCategory] [int] NOT NULL,
	[ListPrice] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 2020-03-13 10:04:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (1, N'Hat', 2, CAST(125.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (2, N'Cap', 2, CAST(69.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (3, N'Jacket', 2, CAST(249.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (4, N'Jeans', 2, CAST(499.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (5, N'Tomato', 1, CAST(19.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (6, N'Beans', 1, CAST(12.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (7, N'Bacon', 1, CAST(19.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (8, N'Egg', 1, CAST(24.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (9, N'Toast', 1, CAST(19.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (10, N'Doll', 3, CAST(41.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (11, N'Bear', 3, CAST(69.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (12, N'Crayons', 3, CAST(14.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategory], [ListPrice]) VALUES (13, N'Ball', 3, CAST(39.90 AS Decimal(12, 2)))
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name]) VALUES (1, N'Food')
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name]) VALUES (2, N'Clothes')
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [Name]) VALUES (3, N'Toys')
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
