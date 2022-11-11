USE [sql assignment1]
GO

/****** Object:  Table [dbo].[product]    Script Date: 13-10-2022 18:21:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[product](
	[id] [int] NOT NULL,
	[productname] [nvarchar](50) NULL,
	[unitprice] [decimal](12, 2) NULL,
	[package] [nvarchar](30) NULL,
	[isdiscontinued] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


insert into product values(1,'cooler',2000,'hfj',1)
insert into product values(2,'ac',30000,'ycf',2)
insert into product values(3,'tv',25000,'jlk',3)
select * from product
