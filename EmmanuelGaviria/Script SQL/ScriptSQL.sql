USE [ICommerce]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28/03/2016 5:09:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IdCategory] [int] NOT NULL,
	[Name] [nchar](30) NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Check]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Check](
	[IdCheck] [int] NOT NULL,
	[CheckNumber] [int] NULL,
	[CheckBank] [nchar](50) NULL,
 CONSTRAINT [PK_Check] PRIMARY KEY CLUSTERED 
(
	[IdCheck] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityCode] [tinyint] NOT NULL,
	[Name] [nchar](30) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryCode] [tinyint] NOT NULL,
	[Name] [nchar](30) NULL,
	[StateCode] [tinyint] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CountryTax]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryTax](
	[CountryCode] [tinyint] NULL,
	[IdTax] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[IdCreditCard] [int] NOT NULL,
	[CreditCardNumber] [int] NULL,
	[ExpirationDate] [date] NULL,
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[IdCreditCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[IdEvaluation] [tinyint] NOT NULL,
	[Score] [nchar](10) NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[IdEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Event]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[IdEvent] [int] NOT NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[IdEvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factory]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factory](
	[IdFactory] [int] NOT NULL,
	[Name] [nchar](50) NULL,
	[CountryCode] [tinyint] NULL,
	[IdEvaluation] [tinyint] NULL,
 CONSTRAINT [PK_Factory] PRIMARY KEY CLUSTERED 
(
	[IdFactory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FactoryEvaluation]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactoryEvaluation](
	[IdFactory] [int] NULL,
	[IdEvaluation] [tinyint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offer]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offer](
	[IdOffer] [int] NOT NULL,
	[Name] [nchar](100) NULL,
	[Description] [nchar](150) NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
	[PercentageOffer] [float] NULL,
	[IdProduct] [int] NULL,
 CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED 
(
	[IdOffer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[IdOrder] [int] NOT NULL,
	[DateOrder] [date] NULL,
	[IdStatus] [tinyint] NULL,
	[IdPayment] [int] NULL,
	[Total] [float] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[IdOrderDetail] [int] NOT NULL,
	[IdOrder] [int] NULL,
	[IdProduct] [int] NULL,
	[IdTax] [int] NULL,
	[QuantityTotal] [int] NULL,
	[SubTotal] [float] NULL,
	[Observation] [nchar](100) NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[IdOrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[IdPayment] [int] NOT NULL,
	[DatePayment] [date] NULL,
	[IdPaymentType] [int] NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[IdPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[IdPaymentType] [int] NOT NULL,
	[IdCreditcard] [int] NULL,
	[IdPaypal] [int] NULL,
	[IdCheck] [int] NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[IdPaymentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paypal]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paypal](
	[IdPaypal] [int] NOT NULL,
	[IdUser] [int] NULL,
 CONSTRAINT [PK_Paypal] PRIMARY KEY CLUSTERED 
(
	[IdPaypal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] NOT NULL,
	[Name] [nchar](30) NULL,
	[Description] [nchar](200) NULL,
	[IdCategory] [int] NULL,
	[IdSupplier] [int] NULL,
	[IdEvaluation] [tinyint] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductEvaluation]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductEvaluation](
	[IdProduct] [int] NULL,
	[IdEvaluation] [tinyint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductUser]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductUser](
	[IdProduct] [int] NULL,
	[IdUser] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [tinyint] IDENTITY(1,1) NOT NULL,
	[Type] [nchar](20) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[IdShipment] [int] NOT NULL,
	[IdOrder] [int] NULL,
	[IdUser] [int] NULL,
	[IdFactory] [int] NULL,
	[IdStatus] [tinyint] NULL,
	[ShipmentDate] [date] NULL,
	[ArrivalDate] [date] NULL,
 CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED 
(
	[IdShipment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateCode] [tinyint] NOT NULL,
	[Name] [nchar](30) NULL,
	[CityCode] [tinyint] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[IdStatus] [tinyint] NOT NULL,
	[Description] [nchar](20) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tax]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[IdTax] [int] NOT NULL,
	[CountryCode] [tinyint] NULL,
	[TaxPercent] [float] NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[IdTax] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeId]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeId](
	[IdTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Type] [nchar](10) NULL,
 CONSTRAINT [PK_TypeId] PRIMARY KEY CLUSTERED 
(
	[IdTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[DI] [int] NOT NULL,
	[IdTypeId] [tinyint] NOT NULL,
	[UserName] [nchar](20) NULL,
	[Password] [nchar](40) NULL,
	[Email] [nchar](50) NULL,
	[PhoneNumber] [nchar](30) NULL,
	[IdRole] [tinyint] NULL,
	[CountryCode] [tinyint] NULL,
	[FactoryName] [nchar](10) NULL,
	[IdCreditCard] [int] NULL,
	[IdPayPal] [int] NULL,
	[IdStatus] [tinyint] NULL,
	[PostalCode] [tinyint] NULL,
	[Address] [nchar](70) NULL,
	[Photo] [varbinary](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[DI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserEvent]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEvent](
	[IdEventUser] [int] NOT NULL,
	[IdUser] [int] NULL,
	[IdEvent] [int] NULL,
	[DateLogin] [date] NULL,
	[DateLogout] [date] NULL,
	[ProcedureUser] [nchar](100) NULL,
	[Likes] [nchar](100) NULL,
 CONSTRAINT [PK_UserEvent] PRIMARY KEY CLUSTERED 
(
	[IdEventUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[IdRole] [tinyint] NULL,
	[IdUserRole] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[IdUserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[viewusers]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[viewusers]
as
select DI,UserName,PhoneNumber,Email
from [dbo].[User]

GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_State] FOREIGN KEY([StateCode])
REFERENCES [dbo].[State] ([StateCode])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_State]
GO
ALTER TABLE [dbo].[CountryTax]  WITH CHECK ADD  CONSTRAINT [FK_CountryTax_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[CountryTax] CHECK CONSTRAINT [FK_CountryTax_Country]
GO
ALTER TABLE [dbo].[CountryTax]  WITH CHECK ADD  CONSTRAINT [FK_CountryTax_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([IdTax])
GO
ALTER TABLE [dbo].[CountryTax] CHECK CONSTRAINT [FK_CountryTax_Tax]
GO
ALTER TABLE [dbo].[Factory]  WITH CHECK ADD  CONSTRAINT [FK_Factory_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Factory] CHECK CONSTRAINT [FK_Factory_Country]
GO
ALTER TABLE [dbo].[FactoryEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_FactoryEvaluation_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[FactoryEvaluation] CHECK CONSTRAINT [FK_FactoryEvaluation_Evaluation]
GO
ALTER TABLE [dbo].[FactoryEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_FactoryEvaluation_Factory] FOREIGN KEY([IdFactory])
REFERENCES [dbo].[Factory] ([IdFactory])
GO
ALTER TABLE [dbo].[FactoryEvaluation] CHECK CONSTRAINT [FK_FactoryEvaluation_Factory]
GO
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment] FOREIGN KEY([IdPayment])
REFERENCES [dbo].[Payment] ([IdPayment])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Payment]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Order] ([IdOrder])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([IdTax])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Tax]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PaymentType] FOREIGN KEY([IdPaymentType])
REFERENCES [dbo].[PaymentType] ([IdPaymentType])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PaymentType]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_Check] FOREIGN KEY([IdCheck])
REFERENCES [dbo].[Check] ([IdCheck])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_Check]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_CreditCard] FOREIGN KEY([IdCreditcard])
REFERENCES [dbo].[CreditCard] ([IdCreditCard])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_CreditCard]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_Paypal] FOREIGN KEY([IdPaypal])
REFERENCES [dbo].[Paypal] ([IdPaypal])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_Paypal]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Evaluation]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Product]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_Product]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([DI])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_User]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Factory] FOREIGN KEY([IdFactory])
REFERENCES [dbo].[Factory] ([IdFactory])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Factory]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Order] ([IdOrder])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Order]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Status]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([DI])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_User]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_City] FOREIGN KEY([CityCode])
REFERENCES [dbo].[City] ([CityCode])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_City]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Country]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Status]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_TypeId] FOREIGN KEY([IdTypeId])
REFERENCES [dbo].[TypeId] ([IdTypeId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_TypeId]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_Event] FOREIGN KEY([IdEvent])
REFERENCES [dbo].[Event] ([IdEvent])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_Event]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([DI])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_User]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([DI])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAFOTO]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[ACTUALIZAFOTO]  ACTUALIZAR LA FOTO ******/
CREATE PROC [dbo].[ACTUALIZAFOTO]
@DI  VARCHAR(8),
@Photo VARBINARY(MAX)
AS 
BEGIN
UPDATE [dbo].[User] SET Photo=@Photo
WHERE [dbo].[User].DI =@DI 
END

GO
/****** Object:  StoredProcedure [dbo].[DELETECATEGORY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETECATEGORY]
@idcategory int,
@name nchar(30),
@description nchar(100)

AS
BEGIN
DELETE FROM [ICommerce].[dbo].[Category]
      WHERE IdCategory=@idcategory
END

GO
/****** Object:  StoredProcedure [dbo].[DELETECHECK]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETECHECK]
@idcheck int,
@checknumber int,
@checkbank nchar(50)
AS
DELETE FROM [ICommerce].[dbo].[Check]
      WHERE IdCheck=@idcheck

GO
/****** Object:  StoredProcedure [dbo].[DELETECITY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETECITY]
@citycode tinyint,
@name nchar(30)
AS
DELETE FROM [ICommerce].[dbo].[City]
      WHERE CityCode=@citycode

GO
/****** Object:  StoredProcedure [dbo].[DELETECOUNTRY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETECOUNTRY]
@countrycode tinyint,
@name nchar(30),
@statecode tinyint
AS
DELETE FROM [ICommerce].[dbo].[Country]
      WHERE CountryCode=@countrycode

GO
/****** Object:  StoredProcedure [dbo].[DELETECREDITCARD]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETECREDITCARD]
@idcreditcard int,
@creditcardnumber int,
@expirationdate date
AS
DELETE FROM [ICommerce].[dbo].[CreditCard]
      WHERE IdCreditCard=@idcreditcard

GO
/****** Object:  StoredProcedure [dbo].[DELETEEVALUATION]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEEVALUATION]
@idevaluation tinyint,
@score nchar(10)
AS
DELETE FROM [ICommerce].[dbo].[Evaluation]
      WHERE IdEvaluation=@idevaluation

GO
/****** Object:  StoredProcedure [dbo].[DELETEEVENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEEVENT]
@idevent int,
@description nchar(100)
AS
DELETE FROM [ICommerce].[dbo].[Event]
      WHERE IdEvent=@idevent

GO
/****** Object:  StoredProcedure [dbo].[DELETEFACTORY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEFACTORY]
@idfactory int,
@name nchar(50),
@countrycode tinyint,
@idevaluation tinyint
AS
DELETE FROM [ICommerce].[dbo].[Factory]
      WHERE IdFactory=@idfactory

GO
/****** Object:  StoredProcedure [dbo].[DELETEORDER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEORDER]
@idorder int,
@dateorder date,
@idstatus tinyint,
@idpayment int,
@total float
AS
DELETE FROM [ICommerce].[dbo].[Order]
      WHERE IdOrder = @idorder

GO
/****** Object:  StoredProcedure [dbo].[DELETEORDERDETAIL]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEORDERDETAIL]
@idorderdetail int,
@idorder int,
@idproduct int,
@idtax int,
@quantitytotal int,
@subtotal float,
@observation nchar(100),
@discount float
AS
DELETE FROM [ICommerce].[dbo].[OrderDetail]
      WHERE IdOrderDetail = @idorderdetail

GO
/****** Object:  StoredProcedure [dbo].[DELETEPAYMENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEPAYMENT]
@idpayment int,
@datepayment date,
@idpaymenttype int,
@amount float
AS
DELETE FROM [dbo].[Payment]
      WHERE IdPayment = @idpayment

GO
/****** Object:  StoredProcedure [dbo].[DELETEPRODUCT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEPRODUCT]
@idproduct int,
@name nchar(30),
@description nchar(200),
@idcategory int,
@idsupplier int,
@idevaluation tinyint,
@quantity int,
@unitprice float
AS
DELETE FROM [dbo].[Product]
      WHERE IdProduct = @idproduct

GO
/****** Object:  StoredProcedure [dbo].[DELETEROLE]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEROLE]
@idrole tinyint,
@type nchar(20)
AS
DELETE FROM [dbo].[Role]
      WHERE IdRole=@idrole

GO
/****** Object:  StoredProcedure [dbo].[DELETESHIPMENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETESHIPMENT]
@idshipment int,
@idorder int,
@iduser int,
@idfactory int,
@idstatus tinyint,
@shipmentdate date,
@arrivaldate date
AS
DELETE FROM [dbo].[Shipment]
      WHERE IdShipment = @idshipment

GO
/****** Object:  StoredProcedure [dbo].[DELETESTATE]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETESTATE]
@statecode tinyint,
@name nchar(30),
@citycode tinyint
AS
DELETE FROM [dbo].[State]
      WHERE [StateCode] = @statecode

GO
/****** Object:  StoredProcedure [dbo].[DELETESTATUS]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETESTATUS]
@idstatus tinyint,
@description nchar(20)
AS
DELETE FROM [dbo].[Status]
      WHERE [IdStatus] = @idstatus

GO
/****** Object:  StoredProcedure [dbo].[DELETETAX]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETETAX]
@idtax int,
@countrycode tinyint,
@taxpercent float
AS
DELETE FROM [dbo].[Tax]
      WHERE [IdTax] = @idtax

GO
/****** Object:  StoredProcedure [dbo].[DELETETOFFER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETETOFFER]
@idoffer int,
@name nchar(100),
@description nchar(150),
@datestart date,
@dateend date,
@percentageoffer float,
@idproduct int
AS
DELETE FROM [ICommerce].[dbo].[Offer]
      WHERE IdOffer = @idoffer

GO
/****** Object:  StoredProcedure [dbo].[DELETETYPEID]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETETYPEID]
@idtypeid tinyint,
@type nchar(10)
AS
DELETE FROM [dbo].[TypeId]
      WHERE IdTypeId = @idtypeid

GO
/****** Object:  StoredProcedure [dbo].[DELETEUSER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [DELETEUSER]  PROCEDIMIENTO PARA ELIMINAR DOCENTES ******/
CREATE PROC [dbo].[DELETEUSER] 
@DI  int
AS 
BEGIN
DECLARE @RESPUESTA NVARCHAR (40)
IF not EXISTS (SELECT [dbo].[User].DI  FROM [dbo].[User] WHERE DI  =@DI )
BEGIN 
  SET @RESPUESTA ='EL DOCUMENTO DEL USUARIO NO EXISTE,INGRESE UN DOCUMENTO QUE EXISTA'	 
  Select @respuesta  as respuesta  
END 
BEGIN
	DELETE FROM [dbo].[User] 	
	WHERE DI =@DI 
	SET @RESPUESTA= 'USUARIO ELIMINADO CON EXITO'
	select @RESPUESTA as respuesta  
END
END

GO
/****** Object:  StoredProcedure [dbo].[DELETEUSEREVENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DELETEUSEREVENT]
@ideventuser int,
@iduser int,
@idevent int,
@datelogin date,
@datelogout date,
@procedureuser nchar(100),
@likes nchar(100)
AS
DELETE FROM [dbo].[UserEvent]
      WHERE [IdEventUser] = @ideventuser

GO
/****** Object:  StoredProcedure [dbo].[fotoexiste]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure fotoexiste  PARA VERIFICAR SI LA FOTO EXISTE O NO EN LA BD ******/
CREATE proc [dbo].[fotoexiste] 
@codigo nvarchar (10)
as
BEGIN
DECLARE @respuesta nvarchar (10)
if exists (SELECT [dbo].[User].Photo FROM 
[dbo].[User]   
where [dbo].[User].DI = @codigo)
begin 
set @respuesta ='1'
select @respuesta
end 
else begin 
set @respuesta ='0'
select @respuesta
end
END

GO
/****** Object:  StoredProcedure [dbo].[INSERTCATEGORY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTCATEGORY]
@idcategory int,
@name nchar(30),
@description nchar(100)

AS
begin
INSERT INTO [ICommerce].[dbo].[Category]
           ([IdCategory]
           ,[Name]
           ,[Description])
     VALUES
           (@idcategory
           ,@name
           ,@description)
end

GO
/****** Object:  StoredProcedure [dbo].[INSERTCHECK]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTCHECK]
@idcheck int,
@checknumber int,
@checkbank nchar(50)
AS
INSERT INTO [ICommerce].[dbo].[Check]
           ([IdCheck]
           ,[CheckNumber]
           ,[CheckBank])
     VALUES
           (@idcheck
           ,@checknumber
           ,@checkbank)

GO
/****** Object:  StoredProcedure [dbo].[INSERTCITY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTCITY]
@citycode tinyint,
@name nchar(30)
AS
INSERT INTO [ICommerce].[dbo].[City]
           ([CityCode]
           ,[Name])
     VALUES
           (@citycode
           ,@name)

GO
/****** Object:  StoredProcedure [dbo].[INSERTCOUNTRY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTCOUNTRY]
@countrycode tinyint,
@name nchar(30),
@statecode tinyint
AS
INSERT INTO [ICommerce].[dbo].[Country]
           ([CountryCode]
           ,[Name]
           ,[StateCode])
     VALUES
           (@countrycode
           ,@name
           ,@statecode)

GO
/****** Object:  StoredProcedure [dbo].[INSERTCREDITCARD]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTCREDITCARD]
@idcreditcard int,
@creditcardnumber int,
@expirationdate date
AS
INSERT INTO [ICommerce].[dbo].[CreditCard]
           ([IdCreditCard]
           ,[CreditCardNumber]
           ,[ExpirationDate])
     VALUES
           (@idcreditcard
           ,@creditcardnumber
           ,@expirationdate)

GO
/****** Object:  StoredProcedure [dbo].[INSERTEVALUATION]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTEVALUATION]
@idevaluation tinyint,
@score nchar(10)
AS
INSERT INTO [ICommerce].[dbo].[Evaluation]
           ([IdEvaluation]
           ,[Score])
     VALUES
           (@idevaluation
           ,@score)

GO
/****** Object:  StoredProcedure [dbo].[INSERTEVENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTEVENT]
@idevent int,
@description nchar(100)
AS
INSERT INTO [ICommerce].[dbo].[Event]
           ([IdEvent]
           ,[Description])
     VALUES
           (@idevent
           ,@description)

GO
/****** Object:  StoredProcedure [dbo].[INSERTFACTORY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTFACTORY]
@idfactory int,
@name nchar(50),
@countrycode tinyint,
@idevaluation tinyint
AS
INSERT INTO [ICommerce].[dbo].[Factory]
           ([IdFactory]
           ,[Name]
           ,[CountryCode]
           ,[IdEvaluation])
     VALUES
           (@idfactory
           ,@name
           ,@countrycode
           ,@idevaluation)

GO
/****** Object:  StoredProcedure [dbo].[INSERTOFFER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTOFFER]
@idoffer int,
@name nchar(100),
@description nchar(150),
@datestart date,
@dateend date,
@percentageoffer float,
@idproduct int
AS
INSERT INTO [ICommerce].[dbo].[Offer]
           ([IdOffer]
           ,[Name]
           ,[Description]
           ,[DateStart]
           ,[DateEnd]
           ,[PercentageOffer]
           ,[IdProduct])
     VALUES
           (@idoffer
           ,@name
           ,@description
           ,@datestart
           ,@dateend
           ,@percentageoffer
           ,@idproduct)

GO
/****** Object:  StoredProcedure [dbo].[INSERTORDER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTORDER]
@idorder int,
@dateorder date,
@idstatus tinyint,
@idpayment int,
@total float
AS
INSERT INTO [ICommerce].[dbo].[Order]
           ([IdOrder]
           ,[DateOrder]
           ,[IdStatus]
           ,[IdPayment]
           ,[Total])
     VALUES
           (@idorder
           ,@dateorder
           ,@idstatus
           ,@idpayment
           ,@total)

GO
/****** Object:  StoredProcedure [dbo].[INSERTORDERDETAIL]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTORDERDETAIL]
@idorderdetail int,
@idorder int,
@idproduct int,
@idtax int,
@quantitytotal int,
@subtotal float,
@observation nchar(100),
@discount float
AS
INSERT INTO [ICommerce].[dbo].[OrderDetail]
           ([IdOrderDetail]
           ,[IdOrder]
           ,[IdProduct]
           ,[IdTax]
           ,[QuantityTotal]
           ,[SubTotal]
           ,[Observation]
           ,[Discount])
     VALUES
           (@idorderdetail
           ,@idorder
           ,@idproduct
           ,@idtax
           ,@quantitytotal
           ,@subtotal
           ,@observation
           ,@discount)

GO
/****** Object:  StoredProcedure [dbo].[INSERTPAYMENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTPAYMENT]
@idpayment int,
@datepayment date,
@idpaymenttype int,
@amount float
AS
INSERT INTO [dbo].[Payment]
           ([IdPayment]
           ,[DatePayment]
           ,[IdPaymentType]
           ,[Amount])
     VALUES
           (@idpayment 
           ,@datepayment
           ,@idpaymenttype
           ,@amount)

GO
/****** Object:  StoredProcedure [dbo].[INSERTPRODUCT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTPRODUCT]
@idproduct int,
@name nchar(30),
@description nchar(200),
@idcategory int,
@idsupplier int,
@idevaluation tinyint,
@quantity int,
@unitprice float
AS
INSERT INTO [dbo].[Product]
           ([IdProduct]
           ,[Name]
           ,[Description]
           ,[IdCategory]
           ,[IdSupplier]
           ,[IdEvaluation]
           ,[Quantity]
           ,[UnitPrice])
     VALUES
           (@idproduct
           ,@name
           ,@description
           ,@idcategory
           ,@idsupplier
           ,@idevaluation
           ,@quantity
           ,@unitprice)

GO
/****** Object:  StoredProcedure [dbo].[INSERTROLE]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTROLE]
@idrole tinyint,
@type nchar(20)
AS
INSERT INTO [dbo].[Role]
           ([Type])
     VALUES
           (@type)

GO
/****** Object:  StoredProcedure [dbo].[INSERTSHIPMENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTSHIPMENT]
@idshipment int,
@idorder int,
@iduser int,
@idfactory int,
@idstatus tinyint,
@shipmentdate date,
@arrivaldate date
AS
INSERT INTO [dbo].[Shipment]
           ([IdShipment]
           ,[IdOrder]
           ,[IdUser]
           ,[IdFactory]
           ,[IdStatus]
           ,[ShipmentDate]
           ,[ArrivalDate])
     VALUES
           (@idshipment
           ,@idorder
           ,@iduser
           ,@idfactory
           ,@idstatus
           ,@shipmentdate
           ,@arrivaldate)

GO
/****** Object:  StoredProcedure [dbo].[INSERTSTATE]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTSTATE]
@statecode tinyint,
@name nchar(30),
@citycode tinyint
AS
INSERT INTO [dbo].[State]
           ([StateCode]
           ,[Name]
           ,[CityCode])
     VALUES
           (@statecode
           ,@name
           ,@citycode)

GO
/****** Object:  StoredProcedure [dbo].[INSERTSTATUS]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTSTATUS]
@idstatus tinyint,
@description nchar(20)
AS
INSERT INTO [dbo].[Status]
           ([IdStatus]
           ,[Description])
     VALUES
           (@idstatus
           ,@description)

GO
/****** Object:  StoredProcedure [dbo].[INSERTTAX]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTTAX]
@idtax int,
@countrycode tinyint,
@taxpercent float
AS
INSERT INTO [dbo].[Tax]
           ([IdTax]
           ,[CountryCode]
           ,[TaxPercent])
     VALUES
           (@idtax
           ,@countrycode
           ,@taxpercent)

GO
/****** Object:  StoredProcedure [dbo].[INSERTTYPEID]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTTYPEID]
@idtypeid tinyint,
@type nchar(10)
AS
INSERT INTO [dbo].[TypeId]
           ([Type])
     VALUES
           (@type)

GO
/****** Object:  StoredProcedure [dbo].[INSERTUSER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[INSERTUSER]
@DI int,
@IdTypeId tinyint,
@UserName nchar(20),
@Password nchar(40),
@Email nchar(50),
@PhoneNumbre nchar(30),
@IdRole tinyint,
@CountryCode tinyint,
@FactoryName nchar(10),
@IdCreditCard int,
@IdPayPal int,
@IdStatus tinyint,
@PostalCode tinyint,
@Address nchar(70),
@Photo varbinary(max)
AS
BEGIN
DECLARE @RESPUESTA nchar (50)
IF exists (select DI from [dbo].[User] where DI=@DI)
begin
set @RESPUESTA= 'El DNI ya existe.'
SELECT @RESPUESTA as respuesta
end
else if exists (SELECT Email from [dbo].[User] where Email=@Email)
begin
set @RESPUESTA= 'El Email ya existe.'
select @RESPUESTA as respuesta
end
else if exists (SELECT PhoneNumber from [dbo].[User] where PhoneNumber=@PhoneNumbre)
begin
set @RESPUESTA= 'El Telefono ya existe.'
select @RESPUESTA as respuesta
end
else 
begin
begin tran INSERTERUSER
INSERT INTO [dbo].[User] VALUES (@DI,@IdTypeId,@UserName,@Password,@Email,@PhoneNumbre,@IdRole,@CountryCode,@FactoryName,@IdCreditCard,@IdPayPal,@IdStatus,@PostalCode,@Address,@Photo)
set @RESPUESTA='Usuario registrado exitosamente'
select @RESPUESTA as respuesta
commit tran INSERTERUSER
END
END

GO
/****** Object:  StoredProcedure [dbo].[INSERTUSEREVENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[INSERTUSEREVENT]
@ideventuser int,
@iduser int,
@idevent int,
@datelogin date,
@datelogout date,
@procedureuser nchar(100),
@likes nchar(100)
AS
INSERT INTO [dbo].[UserEvent]
           ([IdEventUser]
           ,[IdUser]
           ,[IdEvent]
           ,[DateLogin]
           ,[DateLogout]
           ,[ProcedureUser]
           ,[Likes])
     VALUES
           (@ideventuser
           ,@iduser
           ,@idevent
           ,@datelogin
           ,@datelogout
           ,@procedureuser
           ,@likes)

GO
/****** Object:  StoredProcedure [dbo].[SELECTCATEGORY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTCATEGORY]
AS
BEGIN
SELECT [IdCategory]
      ,[Name]
      ,[Description]
  FROM [ICommerce].[dbo].[Category]
END

GO
/****** Object:  StoredProcedure [dbo].[SELECTCHECK]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTCHECK]
AS
SELECT [IdCheck]
      ,[CheckNumber]
      ,[CheckBank]
  FROM [ICommerce].[dbo].[Check]

GO
/****** Object:  StoredProcedure [dbo].[SELECTCITIY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTCITIY]
@citycode tinyint,
@name nchar(30)
AS
SELECT [CityCode]
      ,[Name]
  FROM [ICommerce].[dbo].[City]

GO
/****** Object:  StoredProcedure [dbo].[SELECTCOUNTRY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTCOUNTRY]
@countrycode tinyint,
@name nchar(30),
@statecode tinyint
as
SELECT [CountryCode]
      ,[Name]
      ,[StateCode]
  FROM [ICommerce].[dbo].[Country]

GO
/****** Object:  StoredProcedure [dbo].[SELECTCREDITCARD]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTCREDITCARD]
@idcreditcard int,
@creditcardnumber int,
@expirationdate date
AS
SELECT [IdCreditCard]
      ,[CreditCardNumber]
      ,[ExpirationDate]
  FROM [ICommerce].[dbo].[CreditCard]

GO
/****** Object:  StoredProcedure [dbo].[SELECTEVALUATION]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTEVALUATION]
@idevaluation tinyint,
@score nchar(10)
AS
SELECT [IdEvaluation]
      ,[Score]
  FROM [ICommerce].[dbo].[Evaluation]

GO
/****** Object:  StoredProcedure [dbo].[SELECTEVENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTEVENT]
@idevent int,
@description nchar(100)
AS
SELECT [IdEvent]
      ,[Description]
  FROM [ICommerce].[dbo].[Event]

GO
/****** Object:  StoredProcedure [dbo].[SELECTFACTORY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTFACTORY]
@idfactory int,
@name nchar(50),
@countrycode tinyint,
@idevaluation tinyint
AS
SELECT [IdFactory]
      ,[Name]
      ,[CountryCode]
      ,[IdEvaluation]
  FROM [ICommerce].[dbo].[Factory]

GO
/****** Object:  StoredProcedure [dbo].[SELECTOFFER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTOFFER]
@idoffer int,
@name nchar(100),
@description nchar(150),
@datestart date,
@dateend date,
@percentageoffer float,
@idproduct int
AS
SELECT [IdOffer]
      ,[Name]
      ,[Description]
      ,[DateStart]
      ,[DateEnd]
      ,[PercentageOffer]
      ,[IdProduct]
  FROM [ICommerce].[dbo].[Offer]

GO
/****** Object:  StoredProcedure [dbo].[SELECTORDER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTORDER]
@idorder int,
@dateorder date,
@idstatus tinyint,
@idpayment int,
@total float
AS
SELECT [IdOrder]
      ,[DateOrder]
      ,[IdStatus]
      ,[IdPayment]
      ,[Total]
  FROM [ICommerce].[dbo].[Order]

GO
/****** Object:  StoredProcedure [dbo].[SELECTORDERDETAIL]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTORDERDETAIL]
@idorderdetail int,
@idorder int,
@idproduct int,
@idtax int,
@quantitytotal int,
@subtotal float,
@observation nchar(100),
@discount float
AS
SELECT [IdOrderDetail]
      ,[IdOrder]
      ,[IdProduct]
      ,[IdTax]
      ,[QuantityTotal]
      ,[SubTotal]
      ,[Observation]
      ,[Discount]
  FROM [ICommerce].[dbo].[OrderDetail]

GO
/****** Object:  StoredProcedure [dbo].[SELECTPAYMENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTPAYMENT]
@idpayment int,
@datepayment date,
@idpaymenttype int,
@amount float
AS
BEGIN
SELECT [IdPayment]
      ,[DatePayment]
      ,[IdPaymentType]
      ,[Amount]
  FROM [dbo].[Payment]
END
GO
/****** Object:  StoredProcedure [dbo].[SELECTPAYMENTTYPE]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTPAYMENTTYPE]
AS
SELECT [IdPaymentType]
      ,[IdCreditcard]
      ,[IdPaypal]
      ,[IdCheck]
  FROM [dbo].[PaymentType]

GO
/****** Object:  StoredProcedure [dbo].[SELECTPRODUCT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTPRODUCT]
AS
SELECT [IdProduct]
      ,[Name]
      ,[Description]
      ,[IdCategory]
      ,[IdSupplier]
      ,[IdEvaluation]
      ,[Quantity]
      ,[UnitPrice]
  FROM [dbo].[Product]

GO
/****** Object:  StoredProcedure [dbo].[SELECTPRODUCTEVALUATION]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTPRODUCTEVALUATION]
AS
SELECT [IdProduct]
      ,[IdEvaluation]
  FROM [dbo].[ProductEvaluation]

GO
/****** Object:  StoredProcedure [dbo].[SELECTPRODUCTUSER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTPRODUCTUSER]
AS
SELECT [IdProduct]
      ,[IdUser]
  FROM [dbo].[ProductUser]

GO
/****** Object:  StoredProcedure [dbo].[SELECTROLE]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTROLE]
@idrole tinyint,
@type nchar(20)
AS
SELECT [IdRole]
      ,[Type]
  FROM [dbo].[Role]

GO
/****** Object:  StoredProcedure [dbo].[SELECTSHIPMENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTSHIPMENT]
AS
SELECT [IdShipment]
      ,[IdOrder]
      ,[IdUser]
      ,[IdFactory]
      ,[IdStatus]
      ,[ShipmentDate]
      ,[ArrivalDate]
  FROM [dbo].[Shipment]

GO
/****** Object:  StoredProcedure [dbo].[SELECTSTATE]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTSTATE]
@statecode tinyint,
@name nchar(30),
@citycode tinyint
AS
SELECT [StateCode]
      ,[Name]
      ,[CityCode]
  FROM [dbo].[State]

GO
/****** Object:  StoredProcedure [dbo].[SELECTSTATUS]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTSTATUS]
@idstatus tinyint,
@description nchar(20)
AS
SELECT [IdStatus]
      ,[Description]
  FROM [dbo].[Status]

GO
/****** Object:  StoredProcedure [dbo].[SELECTTAX]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTTAX]
@idtax int,
@countrycode tinyint,
@taxpercent float
AS
SELECT [IdTax]
      ,[CountryCode]
      ,[TaxPercent]
  FROM [dbo].[Tax]

GO
/****** Object:  StoredProcedure [dbo].[SELECTTYPEID]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTTYPEID]
@idtypeid tinyint,
@type nchar(10)
AS
SELECT [IdTypeId]
      ,[Type]
  FROM [dbo].[TypeId]

GO
/****** Object:  StoredProcedure [dbo].[SELECTUSEREVENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTUSEREVENT]
@ideventuser int,
@iduser int,
@idevent int,
@datelogin date,
@datelogout date,
@procedureuser nchar(100),
@likes nchar(100)
AS
SELECT [IdEventUser]
      ,[IdUser]
      ,[IdEvent]
      ,[DateLogin]
      ,[DateLogout]
      ,[ProcedureUser]
      ,[Likes]
  FROM [dbo].[UserEvent]

GO
/****** Object:  StoredProcedure [dbo].[SELECTUSERROLE]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SELECTUSERROLE]
AS
SELECT [IdRole]
      ,[IdUserRole]
      ,[IdUser]
  FROM [dbo].[UserRole]

GO
/****** Object:  StoredProcedure [dbo].[UPDATECATEGORY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATECATEGORY]
@idcategory int,
@name nchar(30),
@description nchar(100)

AS
UPDATE [ICommerce].[dbo].[Category]
   SET [Name] = @name
      ,[Description] = @description
 WHERE IdCategory=@idcategory

GO
/****** Object:  StoredProcedure [dbo].[UPDATECHECK]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATECHECK]
@idcheck int,
@checknumber int,
@checkbank nchar(50)
AS
UPDATE [ICommerce].[dbo].[Check]
   SET [CheckNumber] = @checknumber
      ,[CheckBank] = @checkbank
 WHERE IdCheck=@idcheck

GO
/****** Object:  StoredProcedure [dbo].[UPDATECITY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATECITY]
@citycode tinyint,
@name nchar(30)
AS
UPDATE [ICommerce].[dbo].[City]
   SET [Name] = @name
 WHERE CityCode = @citycode

GO
/****** Object:  StoredProcedure [dbo].[UPDATECOUNTRY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATECOUNTRY]
@countrycode tinyint,
@name nchar(30),
@statecode tinyint
AS
UPDATE [ICommerce].[dbo].[Country]
   SET [CountryCode] = @countrycode
      ,[Name] = @name
      ,[StateCode] = @statecode
 WHERE CountryCode=@countrycode

GO
/****** Object:  StoredProcedure [dbo].[UPDATECREDITCARD]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATECREDITCARD]
@idcreditcard int,
@creditcardnumber int,
@expirationdate date
AS
UPDATE [ICommerce].[dbo].[CreditCard]
   SET [CreditCardNumber] = @creditcardnumber
      ,[ExpirationDate] = @expirationdate
 WHERE [IdCreditCard] = @idcreditcard

GO
/****** Object:  StoredProcedure [dbo].[UPDATEEVALUATION]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEEVALUATION]
@idevaluation tinyint,
@score nchar(10)
AS
UPDATE [ICommerce].[dbo].[Evaluation]
   SET [Score] = @score
 WHERE [IdEvaluation] = @idevaluation

GO
/****** Object:  StoredProcedure [dbo].[UPDATEEVENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEEVENT]
@idevent int,
@description nchar(100)
AS
UPDATE [ICommerce].[dbo].[Event]
   SET [Description] = @description
 WHERE [IdEvent] = @idevent

GO
/****** Object:  StoredProcedure [dbo].[UPDATEFACTORY]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEFACTORY]
@idfactory int,
@name nchar(50),
@countrycode tinyint,
@idevaluation tinyint
AS
UPDATE [ICommerce].[dbo].[Factory]
   SET [Name] = @name
      ,[CountryCode] = @countrycode
      ,[IdEvaluation] = @idevaluation
 WHERE [IdFactory] = @idfactory

GO
/****** Object:  StoredProcedure [dbo].[UPDATEOFFER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEOFFER]
@idoffer int,
@name nchar(100),
@description nchar(150),
@datestart date,
@dateend date,
@percentageoffer float,
@idproduct int
AS
UPDATE [ICommerce].[dbo].[Offer]
   SET [Name] = @name
      ,[Description] = @description
      ,[DateStart] = @datestart
      ,[DateEnd] = @dateend
      ,[PercentageOffer] = @percentageoffer
      ,[IdProduct] = @idproduct
 WHERE [IdOffer] = @idoffer

GO
/****** Object:  StoredProcedure [dbo].[UPDATEORDER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEORDER]
@idorder int,
@dateorder date,
@idstatus tinyint,
@idpayment int,
@total float
AS
UPDATE [ICommerce].[dbo].[Order]
   SET [DateOrder] = @dateorder
      ,[IdStatus] = @idstatus
      ,[IdPayment] = @idpayment
      ,[Total] = @total
 WHERE [IdOrder] = @idorder

GO
/****** Object:  StoredProcedure [dbo].[UPDATEORDERDETAIL]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEORDERDETAIL]
@idorderdetail int,
@idorder int,
@idproduct int,
@idtax int,
@quantitytotal int,
@subtotal float,
@observation nchar(100),
@discount float
AS
UPDATE [ICommerce].[dbo].[OrderDetail]
   SET [IdOrder] = @idorder
      ,[IdProduct] = @idproduct
      ,[IdTax] = @idtax
      ,[QuantityTotal] = @quantitytotal
      ,[SubTotal] = @subtotal
      ,[Observation] = @observation
      ,[Discount] = @discount
 WHERE [IdOrderDetail] = @idorderdetail

GO
/****** Object:  StoredProcedure [dbo].[UPDATEPAYMENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEPAYMENT]
@idpayment int,
@datepayment date,
@idpaymenttype int,
@amount float
AS
UPDATE [dbo].[Payment]
   SET [IdPayment] = @idpayment
      ,[DatePayment] = @datepayment
      ,[IdPaymentType] = @idpaymenttype
      ,[Amount] = @amount
 WHERE IdPayment=@idpayment

GO
/****** Object:  StoredProcedure [dbo].[UPDATEPRODUCT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEPRODUCT]
@idproduct int,
@name nchar(30),
@description nchar(200),
@idcategory int,
@idsupplier int,
@idevaluation tinyint,
@quantity int,
@unitprice float
AS
UPDATE [dbo].[Product]
   SET [IdProduct] = @idproduct
      ,[Name] = @name
      ,[Description] = @description
      ,[IdCategory] = @idcategory
      ,[IdSupplier] = @idsupplier
      ,[IdEvaluation] = @idevaluation
      ,[Quantity] = @quantity
      ,[UnitPrice] = @unitprice
 WHERE IdProduct=@idproduct

GO
/****** Object:  StoredProcedure [dbo].[UPDATEROLE]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEROLE]
@idrole tinyint,
@type nchar(20)
AS
UPDATE [dbo].[Role]
   SET [Type] = @type
 WHERE IdRole=@idrole

GO
/****** Object:  StoredProcedure [dbo].[UPDATESHIPMENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATESHIPMENT]
@idshipment int,
@idorder int,
@iduser int,
@idfactory int,
@idstatus tinyint,
@shipmentdate date,
@arrivaldate date
AS
UPDATE [dbo].[Shipment]
   SET [IdOrder] = @idorder
      ,[IdUser] = @iduser
      ,[IdFactory] = @idfactory
      ,[IdStatus] = @idstatus
      ,[ShipmentDate] = @shipmentdate
      ,[ArrivalDate] = @arrivaldate
 WHERE [IdShipment] = @idshipment

GO
/****** Object:  StoredProcedure [dbo].[UPDATESTATE]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATESTATE]
@statecode tinyint,
@name nchar(30),
@citycode tinyint
AS
UPDATE [dbo].[State]
   SET [Name] = @name
      ,[CityCode] = @citycode
 WHERE [StateCode] = @statecode

GO
/****** Object:  StoredProcedure [dbo].[UPDATESTATUS]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATESTATUS]
@idstatus tinyint,
@description nchar(20)
AS
UPDATE [dbo].[Status]
   SET [Description] = @description
 WHERE [IdStatus] = @idstatus

GO
/****** Object:  StoredProcedure [dbo].[UPDATETAX]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATETAX]
@idtax int,
@countrycode tinyint,
@taxpercent float
AS
UPDATE [dbo].[Tax]
   SET [CountryCode] = @countrycode
      ,[TaxPercent] = @taxpercent
 WHERE [IdTax] = @idtax

GO
/****** Object:  StoredProcedure [dbo].[UPDATETYPEID]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATETYPEID]
@idtypeid tinyint,
@type nchar(10)
AS
UPDATE [dbo].[TypeId]
   SET [Type] = @type
 WHERE IdTypeId = @idtypeid

GO
/****** Object:  StoredProcedure [dbo].[UPDATEUSER]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UPDATEUSER]
@DI int,
@IdTypeId tinyint,
@UserName nchar(20),
@Password nchar(40),
@Email nchar(50),
@PhoneNumbre nchar(30),
@IdRole tinyint,
@CountryCode tinyint,
@FactoryName nchar(10),
@IdCreditCard int,
@IdPayPal int,
@IdStatus tinyint,
@PostalCode tinyint,
@Address nchar(70),
@Photo varbinary(max)
AS 
DECLARE @RESPUESTA NVARCHAR (80),@COR nvarchar(45)
SET @COR = (SELECT Email FROM [dbo].[User] WHERE Email=@Email)
BEGIN TRY
UPDATE [dbo].[User]
SET UserName =@UserName, Address =@Address, FactoryName =@FactoryName, PhoneNumber =@PhoneNumbre, Email =@Email
FROM [dbo].[User] 
WHERE DI =@DI  
SET @RESPUESTA= 'USUARIO ACTUALIZADO CON EXITO'	
select @RESPUESTA as respuesta
END TRY
BEGIN CATCH
SET @RESPUESTA= 'YA EXISTE UN USUARIO CON EL MISMO EMAIL'
select @RESPUESTA as respuesta
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[UPDATEUSEREVENT]    Script Date: 28/03/2016 5:09:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UPDATEUSEREVENT]
@ideventuser int,
@iduser int,
@idevent int,
@datelogin date,
@datelogout date,
@procedureuser nchar(100),
@likes nchar(100)
AS
UPDATE [dbo].[UserEvent]
   SET [IdUser] = @iduser
      ,[IdEvent] = @idevent
      ,[DateLogin] = @datelogin
      ,[DateLogout] = @datelogout
      ,[ProcedureUser] = @procedureuser
      ,[Likes] = @likes
 WHERE [IdEventUser] = @ideventuser

GO
