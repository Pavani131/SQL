USE [sql assignment1]
GO

/****** Object:  Table [dbo].[orderitem]    Script Date: 13-10-2022 18:05:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[orderitem](
	[id] [int] NOT NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
	[unitprice] [decimal](12, 2) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[orderitem]  WITH CHECK ADD FOREIGN KEY([orderid])
REFERENCES [dbo].[Customer] ([id])
GO

ALTER TABLE [dbo].[orderitem]  WITH CHECK ADD FOREIGN KEY([productid])
REFERENCES [dbo].[Customer] ([id])
GO
insert into orderitem values(11,1,1,157.2,12)
insert into orderitem values(12,2,2,879.5,15)
insert into orderitem values(13,3,3,778.4,16)
select * from orderitem
