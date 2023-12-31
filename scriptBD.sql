USE [PizzaVar10]
GO
/****** Object:  Table [dbo].[Адрес доставки]    Script Date: 14.06.2023 11:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Адрес доставки](
	[Id] [int] NOT NULL,
	[Улица] [nvarchar](50) NULL,
	[Дом] [nchar](10) NULL,
	[Квартира/офис] [int] NULL,
	[Id_клиента] [int] NULL,
 CONSTRAINT [PK_Адрес доставки] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказ]    Script Date: 14.06.2023 11:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказ](
	[Id] [int] NOT NULL,
	[Дата и время] [datetime] NULL,
	[Статус] [nvarchar](50) NULL,
	[Стоимость] [money] NULL,
	[Id_адрес доставки] [int] NULL,
 CONSTRAINT [PK_Заказ] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиент]    Script Date: 14.06.2023 11:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиент](
	[Id] [int] NULL,
	[ФИО] [nvarchar](50) NULL,
	[Контактные данные] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Курьер]    Script Date: 14.06.2023 11:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Курьер](
	[Id] [int] NOT NULL,
	[ФИО] [nvarchar](50) NULL,
	[Статус] [nvarchar](50) NULL,
	[Контактные данные] [int] NULL,
	[Id_заказа] [int] NULL,
 CONSTRAINT [PK_Курьер] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пицца]    Script Date: 14.06.2023 11:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пицца](
	[Id] [int] NOT NULL,
	[Название] [nvarchar](50) NULL,
	[Набор продуктов] [nvarchar](50) NULL,
	[Кол-во продуктов] [int] NULL,
	[Цена] [money] NULL,
 CONSTRAINT [PK_Пицца] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сеть]    Script Date: 14.06.2023 11:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сеть](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](50) NULL,
	[Меню] [nvarchar](50) NULL,
	[Контактные данные] [int] NULL,
	[id_курьера] [int] NULL,
 CONSTRAINT [PK_Сеть] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
