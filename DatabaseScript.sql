USE [EventDB]
GO
/****** Object:  Table [dbo].[BillSettlementmaster]    Script Date: 2018-06-27 9:23:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillSettlementmaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Entrydate] [datetime] NULL,
	[Creditamount] [decimal](18, 2) NULL,
	[Paidamount] [decimal](18, 2) NULL,
	[Paidby] [int] NULL,
	[Creditedfrom] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_BillSettlementmaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditAmountDetail]    Script Date: 2018-06-27 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditAmountDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[evententryid] [bigint] NULL,
	[Creditedfrom] [int] NULL,
	[Creditedto] [int] NULL,
	[Creditamount] [decimal](18, 2) NULL,
	[entrydate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_CreditAmountDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventCustomer]    Script Date: 2018-06-27 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventCustomer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Evententryid] [bigint] NULL,
	[Eventcustomerid] [int] NULL,
	[Paidamount] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_EventCustomer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventEntryMaster]    Script Date: 2018-06-27 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventEntryMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Eventid] [bigint] NULL,
	[Eventdate] [datetime] NULL,
	[Location] [nvarchar](50) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[Createddate] [datetime] NULL,
	[Createdby] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_EventEntryMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventMaster]    Script Date: 2018-06-27 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventMaster](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Eventname] [nvarchar](50) NULL,
	[Createddate] [datetime] NULL,
	[Createdby] [int] NULL,
	[Updatedate] [datetime] NULL,
	[Updatedby] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_EventMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 2018-06-27 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](80) NULL,
	[Createddate] [datetime] NULL,
	[Createdby] [int] NULL,
	[Updateddate] [datetime] NULL,
	[Updatedby] [int] NULL,
	[Usertypeid] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTypeMaster]    Script Date: 2018-06-27 9:23:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTypeMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usertype] [varchar](50) NULL,
 CONSTRAINT [PK_UserTypeMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BillSettlementmaster] ON 

INSERT [dbo].[BillSettlementmaster] ([Id], [Entrydate], [Creditamount], [Paidamount], [Paidby], [Creditedfrom], [IsActive]) VALUES (1, CAST(0x0000A90C00000000 AS DateTime), CAST(600.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), 2, 4, 1)
SET IDENTITY_INSERT [dbo].[BillSettlementmaster] OFF
SET IDENTITY_INSERT [dbo].[CreditAmountDetail] ON 

INSERT [dbo].[CreditAmountDetail] ([Id], [evententryid], [Creditedfrom], [Creditedto], [Creditamount], [entrydate], [IsActive]) VALUES (1, NULL, 4, 2, CAST(200.00 AS Decimal(18, 2)), NULL, 1)
INSERT [dbo].[CreditAmountDetail] ([Id], [evententryid], [Creditedfrom], [Creditedto], [Creditamount], [entrydate], [IsActive]) VALUES (2, 2, 4, 2, CAST(400.00 AS Decimal(18, 2)), NULL, 1)
INSERT [dbo].[CreditAmountDetail] ([Id], [evententryid], [Creditedfrom], [Creditedto], [Creditamount], [entrydate], [IsActive]) VALUES (3, 3, 2, 4, CAST(300.00 AS Decimal(18, 2)), NULL, 1)
SET IDENTITY_INSERT [dbo].[CreditAmountDetail] OFF
SET IDENTITY_INSERT [dbo].[EventCustomer] ON 

INSERT [dbo].[EventCustomer] ([Id], [Evententryid], [Eventcustomerid], [Paidamount], [IsActive]) VALUES (1, 1, 2, CAST(700.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[EventCustomer] ([Id], [Evententryid], [Eventcustomerid], [Paidamount], [IsActive]) VALUES (2, 2, 4, CAST(600.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[EventCustomer] ([Id], [Evententryid], [Eventcustomerid], [Paidamount], [IsActive]) VALUES (3, 2, 5, CAST(700.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[EventCustomer] ([Id], [Evententryid], [Eventcustomerid], [Paidamount], [IsActive]) VALUES (4, 3, 2, CAST(500.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[EventCustomer] ([Id], [Evententryid], [Eventcustomerid], [Paidamount], [IsActive]) VALUES (5, 3, 4, CAST(300.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[EventCustomer] ([Id], [Evententryid], [Eventcustomerid], [Paidamount], [IsActive]) VALUES (6, 4, 2, CAST(100.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[EventCustomer] ([Id], [Evententryid], [Eventcustomerid], [Paidamount], [IsActive]) VALUES (7, 4, 5, CAST(400.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[EventCustomer] OFF
SET IDENTITY_INSERT [dbo].[EventEntryMaster] ON 

INSERT [dbo].[EventEntryMaster] ([Id], [Eventid], [Eventdate], [Location], [TotalAmount], [Createddate], [Createdby], [IsActive]) VALUES (1, 1, CAST(0x0000A90D00000000 AS DateTime), N'gdsgdsg', CAST(700.00 AS Decimal(18, 2)), CAST(0x0000A90C00038FC7 AS DateTime), 2, NULL)
INSERT [dbo].[EventEntryMaster] ([Id], [Eventid], [Eventdate], [Location], [TotalAmount], [Createddate], [Createdby], [IsActive]) VALUES (2, 1, CAST(0x0000A90B00000000 AS DateTime), N'sdgds', CAST(1300.00 AS Decimal(18, 2)), CAST(0x0000A90C00049C7A AS DateTime), 2, 1)
INSERT [dbo].[EventEntryMaster] ([Id], [Eventid], [Eventdate], [Location], [TotalAmount], [Createddate], [Createdby], [IsActive]) VALUES (3, 3, CAST(0x0000A90D00000000 AS DateTime), N'', CAST(800.00 AS Decimal(18, 2)), CAST(0x0000A90C003F8BDD AS DateTime), 2, 0)
INSERT [dbo].[EventEntryMaster] ([Id], [Eventid], [Eventdate], [Location], [TotalAmount], [Createddate], [Createdby], [IsActive]) VALUES (4, 1, CAST(0x0000A90B00000000 AS DateTime), N'', CAST(500.00 AS Decimal(18, 2)), CAST(0x0000A90C0040BF9D AS DateTime), 2, 1)
SET IDENTITY_INSERT [dbo].[EventEntryMaster] OFF
SET IDENTITY_INSERT [dbo].[EventMaster] ON 

INSERT [dbo].[EventMaster] ([Id], [Eventname], [Createddate], [Createdby], [Updatedate], [Updatedby], [IsActive]) VALUES (1, N'dinner', CAST(0x0000A90B00AEF7AF AS DateTime), 2, NULL, NULL, 1)
INSERT [dbo].[EventMaster] ([Id], [Eventname], [Createddate], [Createdby], [Updatedate], [Updatedby], [IsActive]) VALUES (2, N'gdgdsg', CAST(0x0000A90B00B7B854 AS DateTime), 2, NULL, NULL, 0)
INSERT [dbo].[EventMaster] ([Id], [Eventname], [Createddate], [Createdby], [Updatedate], [Updatedby], [IsActive]) VALUES (3, N'lunch', CAST(0x0000A90C00047925 AS DateTime), 2, NULL, NULL, 1)
INSERT [dbo].[EventMaster] ([Id], [Eventname], [Createddate], [Createdby], [Updatedate], [Updatedby], [IsActive]) VALUES (4, NULL, CAST(0x0000A90C000ECCC4 AS DateTime), 2, NULL, NULL, 0)
INSERT [dbo].[EventMaster] ([Id], [Eventname], [Createddate], [Createdby], [Updatedate], [Updatedby], [IsActive]) VALUES (5, NULL, CAST(0x0000A90C000F6C6F AS DateTime), 2, NULL, NULL, 0)
INSERT [dbo].[EventMaster] ([Id], [Eventname], [Createddate], [Createdby], [Updatedate], [Updatedby], [IsActive]) VALUES (6, NULL, CAST(0x0000A90C00416D45 AS DateTime), 2, NULL, NULL, 1)
INSERT [dbo].[EventMaster] ([Id], [Eventname], [Createddate], [Createdby], [Updatedate], [Updatedby], [IsActive]) VALUES (7, NULL, CAST(0x0000A90C0041AEF8 AS DateTime), 2, NULL, NULL, 0)
INSERT [dbo].[EventMaster] ([Id], [Eventname], [Createddate], [Createdby], [Updatedate], [Updatedby], [IsActive]) VALUES (8, N'sdbdfbn', CAST(0x0000A90C0082F5FE AS DateTime), 2, CAST(0x0000A90C0082FF87 AS DateTime), 2, 1)
SET IDENTITY_INSERT [dbo].[EventMaster] OFF
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([Id], [Username], [password], [Fullname], [Createddate], [Createdby], [Updateddate], [Updatedby], [Usertypeid], [IsActive]) VALUES (2, N'test', N'MTIz', N'radhesham', CAST(0x0000A90B00AB11F5 AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[UserMaster] ([Id], [Username], [password], [Fullname], [Createddate], [Createdby], [Updateddate], [Updatedby], [Usertypeid], [IsActive]) VALUES (3, N'amar', N'ODkw', N'afs', CAST(0x0000A90B00B5CB48 AS DateTime), NULL, NULL, NULL, 2, 0)
INSERT [dbo].[UserMaster] ([Id], [Username], [password], [Fullname], [Createddate], [Createdby], [Updateddate], [Updatedby], [Usertypeid], [IsActive]) VALUES (4, N'amar', N'MTIz', N'amar', CAST(0x0000A90C00043BE7 AS DateTime), NULL, CAST(0x0000A90C00A89EED AS DateTime), 2, 2, 1)
INSERT [dbo].[UserMaster] ([Id], [Username], [password], [Fullname], [Createddate], [Createdby], [Updateddate], [Updatedby], [Usertypeid], [IsActive]) VALUES (5, N'anthony', N'MTIz', N'anthony', CAST(0x0000A90C00044EBD AS DateTime), NULL, NULL, NULL, 2, 1)
INSERT [dbo].[UserMaster] ([Id], [Username], [password], [Fullname], [Createddate], [Createdby], [Updateddate], [Updatedby], [Usertypeid], [IsActive]) VALUES (6, N'shhfjfjfj', N'NTY1Ng==', N'shdhdhdrhd', CAST(0x0000A90C008315F9 AS DateTime), NULL, CAST(0x0000A90C0083253E AS DateTime), 2, 2, 1)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
SET IDENTITY_INSERT [dbo].[UserTypeMaster] ON 

INSERT [dbo].[UserTypeMaster] ([Id], [Usertype]) VALUES (1, N'admin')
INSERT [dbo].[UserTypeMaster] ([Id], [Usertype]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[UserTypeMaster] OFF
ALTER TABLE [dbo].[CreditAmountDetail]  WITH CHECK ADD  CONSTRAINT [FK_CreditAmountDetail_CreditAmountDetail] FOREIGN KEY([Creditedfrom])
REFERENCES [dbo].[UserMaster] ([Id])
GO
ALTER TABLE [dbo].[CreditAmountDetail] CHECK CONSTRAINT [FK_CreditAmountDetail_CreditAmountDetail]
GO
ALTER TABLE [dbo].[CreditAmountDetail]  WITH CHECK ADD  CONSTRAINT [FK_CreditAmountDetail_UserMaster] FOREIGN KEY([Creditedto])
REFERENCES [dbo].[UserMaster] ([Id])
GO
ALTER TABLE [dbo].[CreditAmountDetail] CHECK CONSTRAINT [FK_CreditAmountDetail_UserMaster]
GO
ALTER TABLE [dbo].[EventCustomer]  WITH CHECK ADD  CONSTRAINT [FK_EventCustomer_UserMaster] FOREIGN KEY([Eventcustomerid])
REFERENCES [dbo].[UserMaster] ([Id])
GO
ALTER TABLE [dbo].[EventCustomer] CHECK CONSTRAINT [FK_EventCustomer_UserMaster]
GO
ALTER TABLE [dbo].[EventEntryMaster]  WITH CHECK ADD  CONSTRAINT [FK_EventEntryMaster_EventEntryMaster] FOREIGN KEY([Eventid])
REFERENCES [dbo].[EventMaster] ([Id])
GO
ALTER TABLE [dbo].[EventEntryMaster] CHECK CONSTRAINT [FK_EventEntryMaster_EventEntryMaster]
GO
ALTER TABLE [dbo].[UserMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserMaster_UserTypeMaster] FOREIGN KEY([Usertypeid])
REFERENCES [dbo].[UserTypeMaster] ([Id])
GO
ALTER TABLE [dbo].[UserMaster] CHECK CONSTRAINT [FK_UserMaster_UserTypeMaster]
GO
