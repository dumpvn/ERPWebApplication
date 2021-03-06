USE [dbERPSolution]
GO
/****** Object:  Table [dbo].[AccVoucherSubLedger]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccVoucherSubLedger](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[VoucherNo] [varchar](18) NOT NULL,
	[AccountCode] [int] NOT NULL,
	[TranactionLineNo] [int] NOT NULL,
	[SubLineNo] [int] NOT NULL,
	[TransactionTypeID] [int] NOT NULL,
	[SubLedgerNarration] [varchar](max) NULL,
	[Amount] [money] NULL,
	[SubLedgerTypeID1] [varchar](5) NULL,
	[SubLedgerTypeID2] [varchar](5) NULL,
	[SubLedgerTypeID3] [varchar](5) NULL,
	[SubLedgerTypeID4] [varchar](5) NULL,
	[SubLedgerTypeID5] [varchar](5) NULL,
	[SubLedgerID1] [varchar](10) NULL,
	[SubLedgerID2] [varchar](10) NULL,
	[SubLedgerID3] [varchar](10) NULL,
	[SubLedgerID4] [varchar](10) NULL,
	[SubLedgerID5] [varchar](10) NULL,
	[TransactionWith] [varchar](50) NULL,
	[DataUsed] [varchar](1) NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AccVoucherSubLedger] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[VoucherNo] ASC,
	[AccountCode] ASC,
	[TranactionLineNo] ASC,
	[SubLineNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[accVoucherJournalDetails]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accVoucherJournalDetails](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[VoucherNo] [varchar](18) NOT NULL,
	[TransactionNo] [int] NOT NULL,
	[TranactionLineNo] [int] NULL,
	[TransactionTypeID] [int] NOT NULL,
	[VoucherTypeID] [varchar](50) NOT NULL,
	[TransactionMediaID] [int] NULL,
	[AccountCode] [int] NOT NULL,
	[BaseCurrencyAmount] [money] NOT NULL,
	[CurrencyExchangeRate] [money] NULL,
	[TransactionCurrencyAmount] [money] NULL,
	[AutoJournalParticulars] [varchar](max) NOT NULL,
	[Status] [varchar](1) NULL,
	[CalcStatus] [varchar](1) NULL,
	[ShowInRpt] [int] NULL,
	[RPCashAmount] [money] NULL,
	[RpChequeAmount] [money] NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_accVoucherJournalDetails] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[VoucherNo] ASC,
	[TransactionNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[accVoucherHeader]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accVoucherHeader](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ProjectID] [varchar](7) NOT NULL,
	[VoucherNo] [varchar](18) NOT NULL,
	[UserVoucherNo] [varchar](19) NULL,
	[PointNumber] [int] NULL,
	[ComputerName] [varchar](100) NULL,
	[TransactionWith] [varchar](8) NOT NULL,
	[VoucherDate] [datetime] NOT NULL,
	[AnyRefVoucherNo] [int] NULL,
	[AnyReferenceNo] [varchar](20) NULL,
	[ValueDate] [datetime] NULL,
	[JournalTypeID] [tinyint] NOT NULL,
	[AutoParticulars] [varchar](max) NULL,
	[ReceivedBy] [varchar](35) NULL,
	[PaymentBy] [varchar](35) NULL,
	[Remark] [varchar](300) NULL,
	[DataStatusID] [varchar](1) NOT NULL,
	[IsBackedup] [bit] NULL,
	[IsSetToFS] [bit] NULL,
	[LastBackupDate] [datetime] NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_accVoucherHeader] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ProjectID] ASC,
	[VoucherNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[accsBankListSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accsBankListSetup](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[BankID] [int] NOT NULL,
	[BankName] [varchar](50) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_accsBankListSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[BankID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[accsBankAccTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accsBankAccTypeSetup](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[BankAccountTypeID] [int] NOT NULL,
	[BankAccountType] [varchar](30) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_accsBankAccTypeSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[BankAccountTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[accsBankAccOfCompanySetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accsBankAccOfCompanySetup](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[BankAccountID] [int] NOT NULL,
	[BankAccountTypeID] [int] NOT NULL,
	[BankAccountNo] [varchar](30) NOT NULL,
	[BankID] [int] NOT NULL,
	[BankAccountName] [varchar](150) NULL,
	[BranchName] [varchar](50) NOT NULL,
	[DisplayBankAccountName] [varchar](150) NULL,
	[ContactPersonName] [varchar](50) NULL,
	[ContactPersonDesignation] [varchar](50) NULL,
	[ContactNumber] [varchar](50) NULL,
	[Address] [varchar](150) NULL,
	[Phone] [varchar](50) NULL,
	[RelatedCOANumber] [int] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_accsBankAccountSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[BankAccountID] ASC,
	[BankAccountTypeID] ASC,
	[BankAccountNo] ASC,
	[BankID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[accJournalTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accJournalTypeSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[JournalTypeID] [int] NOT NULL,
	[JournalTypePrefix] [varchar](3) NULL,
	[JournalTypeName] [varchar](50) NULL,
	[VoucharNoFormat] [varchar](50) NULL,
	[VoucharNoResetParameter] [tinyint] NULL,
	[VoucherType] [varchar](3) NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_accJournalType] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[JournalTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccCOASubLedgerTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccCOASubLedgerTypeSetup](
	[SubledgerTypePrefix] [varchar](3) NOT NULL,
	[SubledgerTypeID] [varchar](6) NOT NULL,
	[SubLedgerTypeName] [varchar](50) NULL,
	[KnownValueId] [int] NULL,
	[IsConvertable] [varchar](1) NULL,
	[DataUsed] [varchar](1) NULL,
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [int] NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AccCOASubLedgerTypeSetup] PRIMARY KEY CLUSTERED 
(
	[SubledgerTypeID] ASC,
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'B', N'B006', N'Branch', 1, N'Y', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A700C30069 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'C', N'C013', N'Client', 7, N'Y', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7AB00E135EB AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'D', N'D010', N'Division', 3, N'Y', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A70116FAEB AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'Dep', N'Dep007', N'Department', 4, N'Y', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A700C7CDBD AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'Emp', N'Emp005', N'Employee', 9, N'Y', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A6010C42D0 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'P', N'P012', N'Project', 11, N'Y', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7AB00DC410C AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'Sec', N'Sec008', N'Section', 5, N'Y', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A7010379D3 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'Sup', N'Sup011', N'Supplier', 8, N'Y', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A800C495F0 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'T', N'T001', N'Test', 1, N'N', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A79800F2BB71 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'T', N'T003', N'Test02', 1, N'N', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A4010DECF3 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubLedgerTypeSetup] ([SubledgerTypePrefix], [SubledgerTypeID], [SubLedgerTypeName], [KnownValueId], [IsConvertable], [DataUsed], [CompanyID], [BranchID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'T', N'T009', N'Team', 6, N'Y', N'A', 1, 0, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A701066B4E AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[AccCoaSubLedgerKnownValue]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccCoaSubLedgerKnownValue](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[KnownValueID] [int] NOT NULL,
	[KnownValuePrefix] [varchar](3) NULL,
	[KnownValueName] [varchar](50) NULL,
	[DataUsed] [varchar](1) NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AccCoaSubLedgerKnownValue] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[KnownValueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 1, N'B', N'Branch', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 2, N'S', N'Store', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 3, N'D', N'Division', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 4, N'Dep', N'Department', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 5, N'Sec', N'Section', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 6, N'T', N'Team', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 7, N'C', N'Client', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 8, N'Sup', N'Supplier', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 9, N'E', N'Employee', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 10, N'A', N'Asset', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCoaSubLedgerKnownValue] ([CompanyID], [BranchID], [KnownValueID], [KnownValuePrefix], [KnownValueName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 11, N'P', N'Project', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7AB00000000 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[AccCOASubHeadSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccCOASubHeadSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[SubLedgerTypeID] [varchar](6) NOT NULL,
	[SubLedgerID] [varchar](10) NOT NULL,
	[ReferenceID] [varchar](15) NULL,
	[SubledgerHeadName] [varchar](200) NOT NULL,
	[SubledgerDescription] [varchar](max) NULL,
	[DataUsed] [varchar](1) NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AccCoaSubCode] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[SubLedgerTypeID] ASC,
	[SubLedgerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[AccCOASubHeadSetup] ([CompanyID], [BranchID], [SubLedgerTypeID], [SubLedgerID], [ReferenceID], [SubledgerHeadName], [SubledgerDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'C013', N'1007', N'ABC10023', N'Sabur Hossain Khan', N'ABC10023-Sabur Hossain Khan', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7AB00EB8540 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubHeadSetup] ([CompanyID], [BranchID], [SubLedgerTypeID], [SubLedgerID], [ReferenceID], [SubledgerHeadName], [SubledgerDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'C013', N'1008', N'ABC10024', N'Alif International', N'ABC10024-Alif International', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7AB00EB8541 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubHeadSetup] ([CompanyID], [BranchID], [SubLedgerTypeID], [SubLedgerID], [ReferenceID], [SubledgerHeadName], [SubledgerDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'Emp005', N'1001', N'1', N'L3T101', N'1-L3T101', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80123E68C AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubHeadSetup] ([CompanyID], [BranchID], [SubLedgerTypeID], [SubLedgerID], [ReferenceID], [SubledgerHeadName], [SubledgerDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'Emp005', N'1002', N'2', N'EMP102', N'2-EMP102', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80123E68C AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubHeadSetup] ([CompanyID], [BranchID], [SubLedgerTypeID], [SubLedgerID], [ReferenceID], [SubledgerHeadName], [SubledgerDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'Emp005', N'1003', N'3', N'EMP103', N'3-EMP103', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80123E68D AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubHeadSetup] ([CompanyID], [BranchID], [SubLedgerTypeID], [SubLedgerID], [ReferenceID], [SubledgerHeadName], [SubledgerDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'Emp005', N'1004', N'4', N'EMP104', N'4-EMP104', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80123E68D AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubHeadSetup] ([CompanyID], [BranchID], [SubLedgerTypeID], [SubLedgerID], [ReferenceID], [SubledgerHeadName], [SubledgerDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'Emp005', N'1005', N'5', N'emp002', N'5-emp002', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80124C6E1 AS DateTime), NULL, NULL)
INSERT [dbo].[AccCOASubHeadSetup] ([CompanyID], [BranchID], [SubLedgerTypeID], [SubLedgerID], [ReferenceID], [SubledgerHeadName], [SubledgerDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'Sec008', N'1006', N'701', N'Software Development', N'701-Software Development', N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7AB00E149F5 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[accCOAHeadSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accCOAHeadSetup](
	[CompanyID] [int] NULL,
	[BranchID] [int] NULL,
	[AccountNo] [int] NULL,
	[ParentAccNo] [int] NULL,
	[GroupID] [int] NULL,
	[AccountTypeID] [int] NULL,
	[AccountName] [varchar](40) NULL,
	[SeqNo] [int] NULL,
	[TierNo] [int] NULL,
	[UserAccountCode] [varchar](10) NULL,
	[UseCOANo] [int] NULL,
	[AccountDescription] [varchar](500) NULL,
	[OpeningBalance] [money] NULL,
	[CurrentBalance] [money] NULL,
	[MinimumBalance] [money] NULL,
	[IsBudgetRelated] [bit] NULL,
	[AnalysisRequired] [varchar](1) NULL,
	[AccountStatus] [bit] NULL,
	[DataUsed] [varchar](1) NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
	[SerialNo] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 11111, NULL, NULL, 0, N'Chart of Accounts', 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'N', NULL, NULL, NULL, CAST(0x0000A662010BAB16 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1101111, 11111, NULL, 0, N'Asset', 1, 1, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'N', NULL, NULL, NULL, CAST(0x0000A6620114F7D1 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1112222, 11111, NULL, 1, N'Liability', 14, 2, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'N', NULL, NULL, NULL, CAST(0x0000A662011506F6 AS DateTime), NULL, NULL, 2)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1134444, 11111, NULL, 3, N'Expense', 25, 4, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'N', NULL, NULL, NULL, CAST(0x0000A662011514B4 AS DateTime), NULL, NULL, 4)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1102155, 1101111, NULL, 0, N'Computer', 2, 1, NULL, NULL, N'Desktop Computer....', NULL, NULL, NULL, NULL, N'N', NULL, NULL, NULL, CAST(0x0000A6620115C459 AS DateTime), NULL, NULL, 5)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1103166, 1102155, NULL, 0, N'Computer 01', 6, 1, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'N', NULL, NULL, NULL, CAST(0x0000A66400F89A8E AS DateTime), NULL, NULL, 6)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1104177, 1103166, NULL, 0, N'Router', 9, 1, NULL, NULL, N'', NULL, NULL, NULL, 0, N'N', NULL, NULL, NULL, CAST(0x0000A66400F90042 AS DateTime), CAST(0x0000A6D40105FA49 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', 7)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1111021212, 1112222, NULL, 1, N'LiabilityTest01', 15, 2, NULL, NULL, N'test...', NULL, NULL, NULL, NULL, N'Y', NULL, NULL, NULL, CAST(0x0000A66500F9048D AS DateTime), NULL, NULL, 12)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1121231313, 1123333, NULL, 2, N'RevenueTest01', 18, 3, NULL, NULL, N'test...', NULL, NULL, NULL, NULL, N'Y', NULL, NULL, NULL, CAST(0x0000A66500F9CF2F AS DateTime), NULL, NULL, 13)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1121331414, 1121231313, NULL, 2, N'RevenueTest0101', 20, 3, NULL, NULL, N'test', NULL, NULL, NULL, NULL, N'Y', NULL, NULL, NULL, CAST(0x0000A66600AE2D84 AS DateTime), NULL, NULL, 14)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1121431515, 1121231313, NULL, 2, N'RevenueTest0102', 21, 3, NULL, NULL, N'test..', NULL, NULL, NULL, NULL, N'Y', NULL, NULL, NULL, CAST(0x0000A66600AF797B AS DateTime), NULL, NULL, 15)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1121531616, 1121231313, NULL, 2, N'RevenueTest0103', 22, 3, NULL, NULL, N'test...', NULL, NULL, NULL, NULL, N'N', NULL, NULL, NULL, CAST(0x0000A66600B00BBC AS DateTime), NULL, NULL, 16)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1121631717, 1121231313, NULL, 2, N'RevenueTest0104', 23, 3, NULL, NULL, N'test...', NULL, NULL, NULL, NULL, N'N', NULL, NULL, NULL, CAST(0x0000A66600B045B4 AS DateTime), NULL, NULL, 17)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1121731919, 1121231313, NULL, 2, N'RevenueTest0106', 24, 3, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'Y', NULL, NULL, NULL, CAST(0x0000A66600B0F5B8 AS DateTime), NULL, NULL, 19)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1123333, 11111, NULL, 2, N'Revenue', 17, 3, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'N', NULL, NULL, NULL, CAST(0x0000A66201150E30 AS DateTime), NULL, NULL, 3)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1105188, 1104177, NULL, 0, N'Computer 01101', 11, 1, NULL, NULL, N'test', NULL, NULL, NULL, NULL, N'Y', NULL, NULL, NULL, CAST(0x0000A664011FA581 AS DateTime), NULL, NULL, 8)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1105199, 1103166, NULL, 0, N'Computer 02', 10, 1, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'Y', NULL, NULL, NULL, CAST(0x0000A6640120992B AS DateTime), NULL, NULL, 9)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 110411010, 1102155, NULL, 0, N'Computer03031', 7, 1, NULL, NULL, N'', NULL, NULL, NULL, 0, N'N', NULL, NULL, NULL, CAST(0x0000A6640120CC0F AS DateTime), CAST(0x0000A6D401244CBC AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', 10)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 110511111, 1102155, NULL, 0, N'Computer 04', 8, 1, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'Y', NULL, NULL, NULL, CAST(0x0000A66401213D3C AS DateTime), NULL, NULL, 11)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1121851818, 11111, NULL, 2, N'RevenueTest0105', 27, 5, NULL, NULL, N'test..', NULL, NULL, NULL, NULL, N'N', NULL, NULL, NULL, CAST(0x0000A66600B09286 AS DateTime), NULL, NULL, 18)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1122052020, 1121851818, NULL, 2, N'Test04122016', 29, 5, NULL, NULL, N'', NULL, NULL, NULL, 0, N'N', NULL, NULL, NULL, CAST(0x0000A6D200D5B8C4 AS DateTime), NULL, NULL, 20)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 110312121, 1101111, NULL, 0, N'TestAsset4122016', 3, 1, NULL, NULL, N'', NULL, NULL, NULL, 1, N'N', NULL, NULL, NULL, CAST(0x0000A6D20117A0F8 AS DateTime), NULL, NULL, 21)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1111222222, 1112222, NULL, 1, N'TestLiability4122016', 16, 2, NULL, NULL, N'', NULL, NULL, NULL, 0, N'N', NULL, NULL, NULL, CAST(0x0000A6D20117E555 AS DateTime), NULL, NULL, 22)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1132142323, 1134444, NULL, 3, N'TestExpens4122016', 26, 4, NULL, NULL, N'', NULL, NULL, NULL, 0, N'N', NULL, NULL, NULL, CAST(0x0000A6D201180116 AS DateTime), NULL, NULL, 23)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 110512525, 1101111, NULL, 0, N'TestAsset6122016', 5, 1, NULL, NULL, N'test6122016', NULL, NULL, NULL, 1, N'Y', NULL, NULL, NULL, CAST(0x0000A6D400B380B8 AS DateTime), NULL, NULL, 25)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1121732626, 1123333, NULL, 2, N'revenuetest612', 19, 3, NULL, NULL, N'testupdate', NULL, NULL, NULL, 1, N'Y', NULL, NULL, N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6D400DC3823 AS DateTime), CAST(0x0000A6D400DCA858 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', 26)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1101212727, 1104177, NULL, 0, N'Computer 01102', 12, 1, NULL, NULL, N'', NULL, NULL, NULL, 0, N'N', NULL, NULL, N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6D40102D697 AS DateTime), NULL, NULL, 27)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1101312828, 1104177, NULL, 0, N'Router 01', 13, 1, NULL, NULL, N'', NULL, NULL, NULL, 0, N'N', NULL, NULL, N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6DD00EF427F AS DateTime), NULL, NULL, 28)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 1102862929, 11111, NULL, 0, N'', 28, 6, NULL, NULL, N'', NULL, NULL, NULL, 0, N'N', NULL, NULL, N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00CF1C81 AS DateTime), NULL, NULL, 29)
INSERT [dbo].[accCOAHeadSetup] ([CompanyID], [BranchID], [AccountNo], [ParentAccNo], [GroupID], [AccountTypeID], [AccountName], [SeqNo], [TierNo], [UserAccountCode], [UseCOANo], [AccountDescription], [OpeningBalance], [CurrentBalance], [MinimumBalance], [IsBudgetRelated], [AnalysisRequired], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [SerialNo]) VALUES (1, 1, 110412424, 1101111, NULL, 0, N'TestAsset241220163', 4, 1, NULL, NULL, N'TESTUPDATE', NULL, NULL, NULL, 1, N'Y', NULL, NULL, NULL, CAST(0x0000A6D201234BA1 AS DateTime), CAST(0x0000A6D400D3BBBE AS DateTime), NULL, 24)
/****** Object:  Table [dbo].[accCOAGroupSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accCOAGroupSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[AccountNo] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[GroupName] [varchar](20) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_accCOAGroupSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[AccountNo] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[accCOAAccountTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accCOAAccountTypeSetup](
	[CompanyID] [int] NOT NULL,
	[KnownValueID] [tinyint] NULL,
	[BranchID] [int] NOT NULL,
	[AccountTypeID] [int] NOT NULL,
	[AccountTypeName] [varchar](500) NOT NULL,
	[AccountStatus] [bit] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_accCOAAccountTypeSetup_1] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[AccountTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[accCOAAccountTypeSetup] ([CompanyID], [KnownValueID], [BranchID], [AccountTypeID], [AccountTypeName], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 3, 1, 0, N'Sale', NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6C400000000 AS DateTime), NULL, NULL)
INSERT [dbo].[accCOAAccountTypeSetup] ([CompanyID], [KnownValueID], [BranchID], [AccountTypeID], [AccountTypeName], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 28, 1, 1, N'COGS', NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6C400000000 AS DateTime), NULL, NULL)
INSERT [dbo].[accCOAAccountTypeSetup] ([CompanyID], [KnownValueID], [BranchID], [AccountTypeID], [AccountTypeName], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 14, 1, 2, N'Sales Return', NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6C400000000 AS DateTime), NULL, NULL)
INSERT [dbo].[accCOAAccountTypeSetup] ([CompanyID], [KnownValueID], [BranchID], [AccountTypeID], [AccountTypeName], [AccountStatus], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 29, 1, 3, N'Stock', NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6C400000000 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[accAccNoWiseSubHeadSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accAccNoWiseSubHeadSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [int] NOT NULL,
	[AccountCode] [int] NOT NULL,
	[SubledgerTypeID] [varchar](5) NOT NULL,
	[SubLedgerID] [varchar](10) NOT NULL,
	[SubLineNo] [int] NOT NULL,
	[BalanceCheck] [varchar](1) NULL,
	[DataUsed] [varchar](1) NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_accAccNoWiseSubHeadSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[AccountCode] ASC,
	[SubledgerTypeID] ASC,
	[SubLedgerID] ASC,
	[SubLineNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 110412424, N'1', N'1', 7, N'N', N'N', NULL, NULL, CAST(0x0000A6D400D31E36 AS DateTime), N'e30436e6-e60a-4f6c-b39b-e7e95e200062')
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 110412424, N'1', N'1', 8, N'N', N'Y', NULL, NULL, CAST(0x0000A6D400D3BBC1 AS DateTime), N'c53fcc8f-bdd1-4aa3-8501-584fd5cb7727')
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 110412424, N'2', N'2', 9, N'N', N'Y', NULL, NULL, CAST(0x0000A6D400D3BBC2 AS DateTime), N'916cd371-3379-4080-a56d-c976aeeef6ca')
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 110412424, N'3', N'3', 1, N'N', N'N', N'a07cf326-c91d-45f1-8092-291c6989844d', CAST(0x0000A6D201234BBC AS DateTime), NULL, NULL)
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 110412424, N'3', N'3', 10, N'N', N'Y', NULL, NULL, CAST(0x0000A6D400D3BBCE AS DateTime), N'b5b9f21e-407c-4006-8189-9ea838887742')
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 110512525, N'1', N'1', 2, N'N', N'Y', N'5a66d7bb-da24-4174-bb20-c612787e62e2', CAST(0x0000A6D400B380BA AS DateTime), NULL, NULL)
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 110512525, N'2', N'2', 3, N'N', N'Y', N'6eddda78-cb54-47f9-9f09-e437384d1504', CAST(0x0000A6D400B380BB AS DateTime), NULL, NULL)
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 110512525, N'3', N'3', 4, N'N', N'Y', N'ebc3b1b7-83a1-456a-8c65-a751fdef8739', CAST(0x0000A6D400B380BC AS DateTime), NULL, NULL)
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 110512525, N'4', N'4', 5, N'N', N'Y', N'49ae90a1-222f-4fbb-9bd2-0fa862c9e176', CAST(0x0000A6D400B380BC AS DateTime), NULL, NULL)
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 110512525, N'5', N'5', 6, N'N', N'Y', N'5916a29e-af14-48a3-9fd9-c4c2946327a6', CAST(0x0000A6D400B380BD AS DateTime), NULL, NULL)
INSERT [dbo].[accAccNoWiseSubHeadSetup] ([CompanyID], [BranchID], [AccountCode], [SubledgerTypeID], [SubLedgerID], [SubLineNo], [BalanceCheck], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1121732626, N'2', N'2', 11, N'N', N'Y', NULL, NULL, CAST(0x0000A6D400DCA862 AS DateTime), N'0360c707-1f70-428f-a6ea-5082c7f04808')
/****** Object:  Table [dbo].[Applications]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applications](
	[ApplicationID] [uniqueidentifier] NOT NULL,
	[ApplicationName] [nvarchar](235) NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__Applicat__C93A4C99753864A1] PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Applications] ([ApplicationID], [ApplicationName], [Description]) VALUES (N'd392c5cd-5048-4be3-9ba8-16fb100c2613', N'/', NULL)
/****** Object:  Table [dbo].[comOwnershipTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comOwnershipTypeSetup](
	[OwnershipTypeID] [int] NOT NULL,
	[OwnershipType] [varchar](200) NOT NULL,
	[Description] [varchar](5000) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_comOwnershipTypeSetup] PRIMARY KEY CLUSTERED 
(
	[OwnershipTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comCompanySetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comCompanySetup](
	[CompanyID] [int] NOT NULL,
	[CountryID] [smallint] NOT NULL,
	[CompanyName] [varchar](100) NOT NULL,
	[CompanyShortName] [varchar](50) NULL,
	[BusinessTypeID] [int] NULL,
	[OwnershipTypeID] [int] NULL,
	[CompanySlogun] [varchar](50) NULL,
	[House] [varchar](50) NULL,
	[Road] [varchar](50) NULL,
	[Sector] [varchar](50) NULL,
	[Landmark] [varchar](50) NULL,
	[DistrictID] [int] NULL,
	[AreaGroupID] [smallint] NULL,
	[AreaID] [smallint] NULL,
	[ContactPersonName] [varchar](50) NULL,
	[ContactPersonDesignation] [varchar](50) NULL,
	[ContactPersonContactNumber] [varchar](50) NULL,
	[AlternateContactPersonName] [varchar](50) NULL,
	[AlternateContactPersonDesignation] [varchar](50) NULL,
	[AlternateContactPersonContactNumber] [varchar](50) NULL,
	[CompanyPhones] [varchar](150) NULL,
	[CompanyMobile] [varchar](50) NULL,
	[CompanyFax] [varchar](50) NULL,
	[CompanyEmail] [varchar](50) NULL,
	[CompanyURL] [varchar](50) NULL,
	[LicenceID] [int] NULL,
	[FaceBookID] [varchar](150) NULL,
	[LinkedInID] [varchar](150) NULL,
	[TwitterID] [varchar](150) NULL,
	[YouTubeID] [varchar](150) NULL,
	[ALPHABETSoftwareProduct] [varchar](50) NULL,
	[CompanyLogo] [varbinary](max) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_LCompanySetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[comCompanySetup] ([CompanyID], [CountryID], [CompanyName], [CompanyShortName], [BusinessTypeID], [OwnershipTypeID], [CompanySlogun], [House], [Road], [Sector], [Landmark], [DistrictID], [AreaGroupID], [AreaID], [ContactPersonName], [ContactPersonDesignation], [ContactPersonContactNumber], [AlternateContactPersonName], [AlternateContactPersonDesignation], [AlternateContactPersonContactNumber], [CompanyPhones], [CompanyMobile], [CompanyFax], [CompanyEmail], [CompanyURL], [LicenceID], [FaceBookID], [LinkedInID], [TwitterID], [YouTubeID], [ALPHABETSoftwareProduct], [CompanyLogo], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 3, N'Link3 Technologies Ltd', N'Link3', 100103, 100204, N's..............', N'h', N'r', N's', N'h', 100231, NULL, NULL, N't...........', N'1122002', N'15', N'l..........', N'', N'96', N'56', N'01755555555', N'df', N'software@link3.net', N'http:www.link3.net', 6467, N'gdf', N'ssf', N'sdfds', N'sdfy', NULL, 0xFFD8FFE000104A46494600010100000100010000FFDB00840009060714130614141314161414171820171918181920201E1C221D1F1E211D201A1D211C30201D1F27201A18243622252A2B2F2E32171F36383F2C37282E2E2C010A0A0A0E0D0E1B1010192C241F25372C2E2C2E2C2C2C2C2B2C2C2C2C2C2C2C2C2C2D2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2B2B2C2C2C2CFFC00011080059006003012200021101031101FFC4001C0000030101010101010000000000000000050607040301020800FFC4003E10000102040404030309060700000000000102110003042105123141062251617181A113329114234272B1C1D1E1F00733345273B21524364462C2F1FFC4001A010100030101010000000000000000000004020305060100FFC4001F1100020300020301010000000000000000000102031112210422314161FFDA000C03010002110311003F008F48418D390B43551F0DCCCCD94BED0071AC47254A91246509252567DE531B916E50E2C35EF0D7EBD065ECC3FC17809994D3E6900148099656425897CCA0E468960FB1576821378752797E534EFB7CEA1FFBA11309A513AB3E70A95A3B5D45F4B931DB19C2D2946744B5CB4B9042882C435B473143B9AE8B953AB4E78DE17325572AC549D7327993F10E207A476782783E1A44C4AE62972C11CA25FBEAE8CDA07EBD2084BC63D9A5614994A0A604E5E7DEE93A0D0391ABC56E64D440F4C39A08489433C729158976524B13EF0D7C03966FCA085011367E54248506E5F1B5A0D3932C501B785F10A89156529652523990BF740DDFA788F58A0E15C472AA66E497304B26C12DBFD666D076DE26D412B261F373A5C95E5208D32BBB81DC8F8419C1704CEB1973A541960A54CDE9EB19D646127D8B8C659D150938325B9AE608C8A000465A2AACB472DB9C11AC149531D313A3C6A37FA1ECB26FEB223C07C49FE5FD94FE6BF2ABE95F67DC5A35633FB3A975356A9B4EAF7D4EA42AD73AE5F52DDE2678357659CE4EF173E069D9E94CD27940711D049E2D33D47B14EA7857FC365ABD82553D5325A5041160A49CC26153F2E562CDADE14ABF059A30E12D6D7226972ED98817739BBB768A7E3CBF9C1997F3B348558FBA80437A157C61131FC7908980A6F98B074929504E6481B300E7BF34167F44C1BCC12311AB3F2F5290BCD6C8E3A681BB30D2332F0E5FC9D330E8A594798EBF18EF229D53AAB2A50012EE13D776F8E9140A13295860A4994F3B3939B300C012490C5B5FC20D659C44D55EFD26F3A8D72E714281047EAD1AB059C51894B50BB2AE3A81A8FD7483FC43251F2852015CC520E52B23429B32BE07A401972149985362A1A5B73A37E115AB39226EBE3F07FE339A8A3AAA609566243AD0DB28BB9EECCCFD21B308A696BA594948CC4A83A83391A005EECD1F18C70B53AF1444C992B34C98905454B572D806400400DDC1D20AF0EE0EAA7AB0844C2132D4E738BAD252C2E3F94FC77DA0524BAC2C5664462A75044A5A764AD87830223B4BAF1998408C596A97ED14EE14139478595FDC984CC5F1E54AAF5CB25B2EB1537352F5210AA325AD91196A21568FD07FB319C15C10490D765125980DFD62074F2BE70435E0DC43572657B1A75FB344C4E42F72FD46E0B5ADA3C74D2ED1989F639E3AA52B1398545232850CCFB0B6BF54923C627F31A756A5DC845C8D45CEDD236D054C94AC249CD3487CC5880C6E0FE706B1CA7914D8A22631099D253314917E63981CBE24023CE0F6FA88AD6F467A2C2D5238DA51F752B39D2925F50FE8445527A909CB3141BA909259C8E81EF124C0E6AE6E24859B6550503FC8949BB0DDDCBF8C566495AA510262A5AC2744E463DDD492E2DEB18BE4DCB9E69A108E409D89A9FF0014ACB898854C2A16BDC931F382E0BED388814A02B2842883A3901891BFD231A710A3988AF595AB395310D92C19B54A40E902913E6CBAC1350A28982E083D36EE34B455C9B6F8B11C7625727233FB398401C86C3CC8BC74AD94AF96C958500C4A543470BE87A8234EF18386B1D9555448E642668042A5BB79A46E93E9187F69351970108DD6B4A6DA87207DE63E8B7B80B1EE619F16C79078965CA1365D42143294254925399C2806FF00922596EE6259C558BCC9D5AB5E5003B16D2DDCC68E33C324CB9C55214B2412C6E0829DEE0684F93C2C4E9C66C972144BDCF7D21F4C6334A48F66B87470A2C4809C3325043EFF0095E094FC565AEAD201F66849B65CDCA6D772E76EFAC2D88D54D3C255EE05063AEB71B1EC6F1AFACCFE287CC3E9DE44EB212328CCB504996B39810CB4B116BB17711E574844EAB4A6492A952D225A49CD76D4F35C025D81BB42BF0FAE62A626585909492B6B948367397C85FC22858699267A552C8E72465963717601D98EC74DB62D99E6592CE8778B18EEB3A7095204E2C9491653A2FDC7E314CA5A64A68F9C660080753F607848914A53391300218BDF50C6E0FAE90F98A4CFF240800856DA0F8ED1CFCE5B66B1772CC51FD07D5E1689D4054941497208620DBB1008F02210F14A01F2B6EF0D388D529128B296851D124DCF7CC2CA81099B99216A6D59CEBFA78F39E4B62269AE4A3ADE9FD87F0CA449CEB05AC52D67F3DB4DAF18B89AB84F93ECD5998F2B3B333E40927B9049261E31B0934C250FA003B785DBF5BC4DB1EA89496E42B0438798C469B01BB0D6134B6E78D87DE4B960ABC5D8F2E7CA4E73CE80A4A806604E5CDB397CAEEF0ACB984123404FFEC18C7A9E589E8523304AD2F95572FBDC6BE902AA25854C74BB6EEC2FF846ED51518E00BE4DB31917D63D482F1EE6BE91DA4214A2C3D0430285B8624A8D411984B70C54A20003C4E8F0E7FB3FA742AB1CCC43A5F773761617D6EC7F389DCA94E482EA2DF0F1868C0AA132648992D6AF6DCC728D0656CA5F420B9707A40FC8AB92693134CFF30AC4A7562392E11EE9275EC49EBAEBD61CA54A6A3093B06312EC371F59C1E62906619AE94AD4AC86F95C91BB8E66B306ECD0731AE2E992B8791901335605C004A53BAAF6D2C3E3180FC59A9F632E7CF144DB8C4842A7325492E4200D6ECF6E968093E941194061BF5BF7D2320C6252A9A62D24A8CB9A25E62A625C0651B02E0E60E91B47D5762055563295069995248742AE1CA88B5AC5D41B51115E2C93C155DFC638C3B31465CB5AE772A5B4BB93B0BF95E27FC5CA42E72548175241574CDF48107C3D474864C7314F915453954D54C0A5158292EE80520A4E6D925DBAE610978BD6A6A6A894A3211F447E9AF67685F8F438F6CA1CF4F6BA584E132F2CD3302D0CB9640250A1BA7EE22F6BEB091588CB34A7F56FB61B933549A401989276B9B37901EAFDA17F17A3620B81DB773B4695327FA12D4B3A04E66368EB2262876F28F84691DE7FEF3CA341204CD34556A12A66561ED119096160EFD234D44F484A0211916C55D5C166077045FB110329743FAE91ECEFDE23C07DF15C9124F03F85562D2A09493D487BE603A6BE5A1F211E51E240562D376374BB920EF7DF4F58EB23FD547FAA3EC85EA2FE3E57D61F6C1DC13D10E6D60FB864F427129A0314A921C368A048F32E1DFBC08A8C7668013294C949F6846C7297482370EFE31C11FC5ABC07F72A307FB997F53EF8A556B9365EA4DAC1AF8D316A4A9C325AE54CF9E46AE149CC1572C32B121577DA17B082D4EB60339CB91445D37B904D9B41E703AAFF0075F18D582FF1E8FAAAFF00B45CA0A31E8A9B7A13AAA9483943A9675045CF9F480D8829CF3116DC580EC3AF946CA6FE257FD1FBA0257E88F088C22933DB25D1FFD9, N'A', CAST(0x0000A6F800D33622 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75F00EAAFA8 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[comCompanySetup] ([CompanyID], [CountryID], [CompanyName], [CompanyShortName], [BusinessTypeID], [OwnershipTypeID], [CompanySlogun], [House], [Road], [Sector], [Landmark], [DistrictID], [AreaGroupID], [AreaID], [ContactPersonName], [ContactPersonDesignation], [ContactPersonContactNumber], [AlternateContactPersonName], [AlternateContactPersonDesignation], [AlternateContactPersonContactNumber], [CompanyPhones], [CompanyMobile], [CompanyFax], [CompanyEmail], [CompanyURL], [LicenceID], [FaceBookID], [LinkedInID], [TwitterID], [YouTubeID], [ALPHABETSoftwareProduct], [CompanyLogo], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, 3, N'Link3 Technologies Ltd23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'I', CAST(0x0000A6FC00FE438A AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00FE4B30 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[comCompanySetup] ([CompanyID], [CountryID], [CompanyName], [CompanyShortName], [BusinessTypeID], [OwnershipTypeID], [CompanySlogun], [House], [Road], [Sector], [Landmark], [DistrictID], [AreaGroupID], [AreaID], [ContactPersonName], [ContactPersonDesignation], [ContactPersonContactNumber], [AlternateContactPersonName], [AlternateContactPersonDesignation], [AlternateContactPersonContactNumber], [CompanyPhones], [CompanyMobile], [CompanyFax], [CompanyEmail], [CompanyURL], [LicenceID], [FaceBookID], [LinkedInID], [TwitterID], [YouTubeID], [ALPHABETSoftwareProduct], [CompanyLogo], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, 3, N'Link4 Technologies Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'I', CAST(0x0000A72000C8BDB5 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[comCompanySetup] ([CompanyID], [CountryID], [CompanyName], [CompanyShortName], [BusinessTypeID], [OwnershipTypeID], [CompanySlogun], [House], [Road], [Sector], [Landmark], [DistrictID], [AreaGroupID], [AreaID], [ContactPersonName], [ContactPersonDesignation], [ContactPersonContactNumber], [AlternateContactPersonName], [AlternateContactPersonDesignation], [AlternateContactPersonContactNumber], [CompanyPhones], [CompanyMobile], [CompanyFax], [CompanyEmail], [CompanyURL], [LicenceID], [FaceBookID], [LinkedInID], [TwitterID], [YouTubeID], [ALPHABETSoftwareProduct], [CompanyLogo], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, 3, N'Link4 Technologies Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'01755555444', NULL, N'software@link4.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'A', CAST(0x0000A72A00CCCE29 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00B96BD1 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[comCompanySetup] ([CompanyID], [CountryID], [CompanyName], [CompanyShortName], [BusinessTypeID], [OwnershipTypeID], [CompanySlogun], [House], [Road], [Sector], [Landmark], [DistrictID], [AreaGroupID], [AreaID], [ContactPersonName], [ContactPersonDesignation], [ContactPersonContactNumber], [AlternateContactPersonName], [AlternateContactPersonDesignation], [AlternateContactPersonContactNumber], [CompanyPhones], [CompanyMobile], [CompanyFax], [CompanyEmail], [CompanyURL], [LicenceID], [FaceBookID], [LinkedInID], [TwitterID], [YouTubeID], [ALPHABETSoftwareProduct], [CompanyLogo], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 3, N'Link5 Technologies Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'01722111111', NULL, N'software@link5.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'A', CAST(0x0000A7AF00BB20FD AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
/****** Object:  Table [dbo].[comCompanyDocumentTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comCompanyDocumentTypeSetup](
	[CompanyDocumentTypeID] [tinyint] NOT NULL,
	[CompanyDocumentType] [varchar](100) NOT NULL,
	[DocumentTypeDescription] [varchar](5000) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_comDocumentTypeSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyDocumentTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comCompanyDocumentsDefault]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comCompanyDocumentsDefault](
	[CompanyDoxID] [smallint] NOT NULL,
	[CompanyDocumentCategoryID] [tinyint] NOT NULL,
	[CompanyDocumentTypeID] [tinyint] NULL,
	[CompanyDocName] [varchar](100) NOT NULL,
	[NeedToRenew] [bit] NOT NULL,
	[DocumentDescription] [varchar](5000) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_comCompanyDocumentsDefault] PRIMARY KEY CLUSTERED 
(
	[CompanyDoxID] ASC,
	[CompanyDocumentCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comCompanyDocumentLists]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comCompanyDocumentLists](
	[CompanyID] [tinyint] NOT NULL,
	[CompanyDoxID] [smallint] NOT NULL,
	[CompanyDocumentReferenceValue] [varchar](5000) NOT NULL,
	[DocumentStartDate] [date] NULL,
	[LastRenewalDate] [date] NULL,
	[DocumentEndDate] [date] NULL,
	[RenewalPeriod] [tinyint] NULL,
	[RenewalPeriodType] [varchar](15) NULL,
	[LastDocumentExpense] [money] NULL,
	[IsAddedToreminderSystem] [tinyint] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_comCompanyDocumentLists] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[CompanyDoxID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comCompanyDocumentCatSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comCompanyDocumentCatSetup](
	[CompanyDocumentCategoryID] [tinyint] NOT NULL,
	[CompanyDocumentCategor] [varchar](50) NULL,
	[DocumentDescription] [varchar](5000) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_comCompanyDocumentCatSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyDocumentCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comBusinessNatureSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comBusinessNatureSetup](
	[BusinessTypeID] [int] NOT NULL,
	[BusinessType] [varchar](200) NOT NULL,
	[Description] [varchar](5000) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_comBusinessNatureSetup] PRIMARY KEY CLUSTERED 
(
	[BusinessTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataStatusSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DataStatusSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[DataStatusID] [varchar](1) NOT NULL,
	[DataStatus] [varchar](35) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedUserID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_LDataStatusSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[DataStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[conSetupContactAddressType]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[conSetupContactAddressType](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ContactAddressTypeID] [tinyint] NOT NULL,
	[ContactAddressType] [varchar](20) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_conSetupContactAddressType] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ContactAddressTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[conSetupContactAddressType] ([CompanyID], [BranchID], [ContactAddressTypeID], [ContactAddressType], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [Description]) VALUES (1, 0, 1, N'Corporate Office', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL)
INSERT [dbo].[conSetupContactAddressType] ([CompanyID], [BranchID], [ContactAddressTypeID], [ContactAddressType], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [Description]) VALUES (1, 0, 2, N'Head Office', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL)
/****** Object:  Table [dbo].[conContactTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[conContactTypeSetup](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[ContactTypeID] [int] NOT NULL,
	[ContactType] [varchar](50) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ClientTypeSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ContactTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[conContactProfessionalNatureID]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[conContactProfessionalNatureID](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[ContactProfessionalNatureID] [int] NOT NULL,
	[ContactProfessionalNature] [varchar](50) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ClientNatureSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ContactProfessionalNatureID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[conContactDetailsType]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[conContactDetailsType](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ContactID] [varchar](12) NOT NULL,
	[ContactTypeID] [tinyint] NOT NULL,
	[CurrentStatusID] [tinyint] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_conContactDetailsType] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ContactID] ASC,
	[ContactTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[conContactDetailsType] ([CompanyID], [BranchID], [ContactID], [ContactTypeID], [CurrentStatusID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'ABC10023', 1, 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[conContactDetailsType] ([CompanyID], [BranchID], [ContactID], [ContactTypeID], [CurrentStatusID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'ABC10024', 1, 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[conContactDetailsName]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[conContactDetailsName](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ContactID] [varchar](12) NOT NULL,
	[ParentContactEntityID] [varchar](12) NOT NULL,
	[ContactEntityID] [varchar](12) NOT NULL,
	[ContactAdreessID] [varchar](12) NOT NULL,
	[ContactProfessionalNatureID] [int] NULL,
	[Title] [varchar](6) NULL,
	[FirstName] [varchar](35) NULL,
	[MiddleName] [varchar](35) NULL,
	[LastName] [varchar](35) NULL,
	[FullName] [varchar](111) NULL,
	[DisplayName] [varchar](35) NULL,
	[ShortName] [nchar](10) NULL,
	[Email] [varchar](256) NULL,
	[PrimaryContactNo] [varchar](15) NULL,
	[SecondaryContactNo] [varchar](50) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_conContactDetailsName] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ContactID] ASC,
	[ParentContactEntityID] ASC,
	[ContactEntityID] ASC,
	[ContactAdreessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is Head Office or Branch or Home' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'conContactDetailsName', @level2type=N'COLUMN',@level2name=N'ContactProfessionalNatureID'
GO
INSERT [dbo].[conContactDetailsName] ([CompanyID], [BranchID], [ContactID], [ParentContactEntityID], [ContactEntityID], [ContactAdreessID], [ContactProfessionalNatureID], [Title], [FirstName], [MiddleName], [LastName], [FullName], [DisplayName], [ShortName], [Email], [PrimaryContactNo], [SecondaryContactNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'ABC10023', N'1', N'ABC10023', N'10001', NULL, N'Mr. ', N'Sabur ', N'Hossain', N'Khan', N'Sabur Hossain Khan', N'Mr. Khan', N'SH Khan   ', NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[conContactDetailsName] ([CompanyID], [BranchID], [ContactID], [ParentContactEntityID], [ContactEntityID], [ContactAdreessID], [ContactProfessionalNatureID], [Title], [FirstName], [MiddleName], [LastName], [FullName], [DisplayName], [ShortName], [Email], [PrimaryContactNo], [SecondaryContactNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, N'ABC10024', N'ABC10023', N'ABC10023', N'10002', NULL, N'', N'Alif', N'International', N'', N'Alif International', N'Alif', N'Alif Int  ', NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[conContactAddressDetails]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[conContactAddressDetails](
	[ContactAdreessID] [varchar](12) NOT NULL,
	[ContactAdreessNumber] [tinyint] NOT NULL,
	[ContactAddressTypeID] [tinyint] NOT NULL,
	[ContactAddressUsedID] [tinyint] NOT NULL,
	[HouseName] [varchar](50) NULL,
	[HouseNo] [varchar](10) NULL,
	[RoadNo] [varchar](10) NULL,
	[RoadName] [varchar](50) NULL,
	[DisplayAddress] [varchar](200) NULL,
	[DistrictID] [tinyint] NULL,
	[AreaGroupID] [smallint] NULL,
	[AreaID] [smallint] NULL,
	[PostalCode] [varchar](4) NULL,
	[ContactPhoneNo] [varchar](50) NULL,
	[Fax] [varchar](15) NULL,
	[AddressAsOn] [date] NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_conContactAddressDetails] PRIMARY KEY CLUSTERED 
(
	[ContactAdreessID] ASC,
	[ContactAdreessNumber] ASC,
	[ContactAddressTypeID] ASC,
	[ContactAddressUsedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[conContactAddressDetails] ([ContactAdreessID], [ContactAdreessNumber], [ContactAddressTypeID], [ContactAddressUsedID], [HouseName], [HouseNo], [RoadNo], [RoadName], [DisplayAddress], [DistrictID], [AreaGroupID], [AreaID], [PostalCode], [ContactPhoneNo], [Fax], [AddressAsOn], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'10001', 1, 1, 0, N'ABC', N'10', N'20', N'Bashir Uddin Road', N'Bashir Uddin Road', 1, 11, 5, N'1213', NULL, NULL, CAST(0xDF3A0B00 AS Date), N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[conContactAddressDetails] ([ContactAdreessID], [ContactAdreessNumber], [ContactAddressTypeID], [ContactAddressUsedID], [HouseName], [HouseNo], [RoadNo], [RoadName], [DisplayAddress], [DistrictID], [AreaGroupID], [AreaID], [PostalCode], [ContactPhoneNo], [Fax], [AddressAsOn], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'10001', 2, 2, 0, N'XYZ', N'20', N'10', N'KC Hossain Road', N'KC Hossain Road', 1, 11, 5, N'1201', NULL, NULL, CAST(0xDF3A0B00 AS Date), N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[conContactAddressDetails] ([ContactAdreessID], [ContactAdreessNumber], [ContactAddressTypeID], [ContactAddressUsedID], [HouseName], [HouseNo], [RoadNo], [RoadName], [DisplayAddress], [DistrictID], [AreaGroupID], [AreaID], [PostalCode], [ContactPhoneNo], [Fax], [AddressAsOn], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'10002', 1, 2, 0, N'Nobita', N'16', N'116', N'Boishakhi Amar Road', N'Nobita, Boishakhi Amar Road', 1, 15, 7, N'1217', NULL, NULL, CAST(0xDF3A0B00 AS Date), N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[matUnitTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[matUnitTypeSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[UnitTypeID] [tinyint] NOT NULL,
	[UnitType] [varchar](50) NOT NULL,
	[Description] [varchar](5000) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_matUnitTypeSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[UnitTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[matUnitSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[matUnitSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[UnitTypeID] [tinyint] NOT NULL,
	[UnitID] [tinyint] NOT NULL,
	[Unit] [varchar](50) NOT NULL,
	[Description] [varchar](5000) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_matUnitSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[UnitTypeID] ASC,
	[UnitID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[matUnitSetup] ([CompanyID], [BranchID], [UnitTypeID], [UnitID], [Unit], [Description], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 1, 1, N'Box', NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[matUnitSetup] ([CompanyID], [BranchID], [UnitTypeID], [UnitID], [Unit], [Description], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 1, 2, N'Carton', NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[matUnitSetup] ([CompanyID], [BranchID], [UnitTypeID], [UnitID], [Unit], [Description], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, 1, N'Box', NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[matUnitSetup] ([CompanyID], [BranchID], [UnitTypeID], [UnitID], [Unit], [Description], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, 2, N'Carton', NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[matMatUsagePurposeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[matMatUsagePurposeSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ItemUsageID] [tinyint] NOT NULL,
	[ItemUsage] [varchar](30) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_matMatUsagePurposeSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ItemUsageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[matMatUsagePurposeSetup] ([CompanyID], [BranchID], [ItemUsageID], [ItemUsage], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, N'Direct Sale', N'a', N'9840608e-a561-4744-badf-8f8307e77080', CAST(0x0000A69200000000 AS DateTime), CAST(0x0000A69200000000 AS DateTime), N'9840608e-a561-4744-badf-8f8307e77080')
INSERT [dbo].[matMatUsagePurposeSetup] ([CompanyID], [BranchID], [ItemUsageID], [ItemUsage], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 2, N'Raw Material', N'a', N'9840608e-a561-4744-badf-8f8307e77080', CAST(0x0000A69200000000 AS DateTime), CAST(0x0000A69200000000 AS DateTime), N'9840608e-a561-4744-badf-8f8307e77080')
INSERT [dbo].[matMatUsagePurposeSetup] ([CompanyID], [BranchID], [ItemUsageID], [ItemUsage], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 3, N'Office Supplies', N'a', N'9840608e-a561-4744-badf-8f8307e77080', CAST(0x0000A69200000000 AS DateTime), CAST(0x0000A69200000000 AS DateTime), N'9840608e-a561-4744-badf-8f8307e77080')
INSERT [dbo].[matMatUsagePurposeSetup] ([CompanyID], [BranchID], [ItemUsageID], [ItemUsage], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Fixed Assets', N'a', N'9840608e-a561-4744-badf-8f8307e77080', CAST(0x0000A69200000000 AS DateTime), CAST(0x0000A69200000000 AS DateTime), N'9840608e-a561-4744-badf-8f8307e77080')
/****** Object:  Table [dbo].[matMaterialSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[matMaterialSetup](
	[ItemID] [int] NOT NULL,
	[ItemCategoryID] [int] NOT NULL,
	[ItemTypeID] [tinyint] NOT NULL,
	[CategoryTypeID] [int] NULL,
	[ItemPropertySetID] [int] NULL,
	[ItemUsageID] [tinyint] NOT NULL,
	[ModelNo] [varchar](150) NOT NULL,
	[UnitID] [tinyint] NOT NULL,
	[HSCode] [varchar](10) NULL,
	[BreakUpQuantity] [smallint] NULL,
	[BreakUpUnitID] [tinyint] NULL,
	[ItemCode] [varchar](25) NULL,
	[DealerPrice] [money] NULL,
	[RetailPrice] [money] NULL,
	[ExportPrice] [money] NULL,
	[EPCurrency] [varchar](10) NULL,
	[AvgRate] [money] NULL,
	[Barcode] [varchar](50) NULL,
	[BarcodeType] [tinyint] NULL,
	[ReadyForSale] [float] NULL,
	[TotalPurchaseQnty] [float] NULL,
	[TotalSoldQnty] [float] NULL,
	[TotalSRetQnty] [float] NULL,
	[TotalPRetQnty] [float] NULL,
	[Specification] [varchar](250) NULL,
	[OpenningBalance] [int] NULL,
	[MinimumBal] [int] NULL,
	[SupplierID] [varchar](8) NULL,
	[SupplierMRP] [money] NULL,
	[DiscountPercent] [float] NULL,
	[SalesDiscountPercent] [float] NULL,
	[LastPurchaseDate] [datetime] NULL,
	[LastPurchaseCost] [money] NULL,
	[PicureFilePath] [varchar](300) NULL,
	[IsVATableItem] [bit] NULL,
	[COASalesAccNo] [int] NULL,
	[COAStockAccNo] [int] NULL,
	[COACGSAccNo] [int] NULL,
	[COASalesRetAccNo] [int] NULL,
	[DiscountValidUpto] [datetime] NULL,
	[PreviousStock] [float] NULL,
	[StockInHand] [float] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[ReOrderLevel] [varchar](50) NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[matMaterialSetup] ([ItemID], [ItemCategoryID], [ItemTypeID], [CategoryTypeID], [ItemPropertySetID], [ItemUsageID], [ModelNo], [UnitID], [HSCode], [BreakUpQuantity], [BreakUpUnitID], [ItemCode], [DealerPrice], [RetailPrice], [ExportPrice], [EPCurrency], [AvgRate], [Barcode], [BarcodeType], [ReadyForSale], [TotalPurchaseQnty], [TotalSoldQnty], [TotalSRetQnty], [TotalPRetQnty], [Specification], [OpenningBalance], [MinimumBal], [SupplierID], [SupplierMRP], [DiscountPercent], [SalesDiscountPercent], [LastPurchaseDate], [LastPurchaseCost], [PicureFilePath], [IsVATableItem], [COASalesAccNo], [COAStockAccNo], [COACGSAccNo], [COASalesRetAccNo], [DiscountValidUpto], [PreviousStock], [StockInHand], [DataUsed], [ReOrderLevel], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (11000001, 111002002, 1, NULL, 1, 4, N'Fish', 1, N'Fish', 0, 1, N'Fish', NULL, NULL, NULL, NULL, NULL, N'11000001', NULL, NULL, NULL, NULL, NULL, NULL, N'Fish', 0, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1103166, 1134444, 1111021212, 1121851818, NULL, NULL, NULL, N'A', N'', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6CE0117C849 AS DateTime), CAST(0x0000A6CE0117FDAD AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[matMatCatagorySetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[matMatCatagorySetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[CategoryTypeID] [int] NOT NULL,
	[CategoryTypeName] [varchar](30) NOT NULL,
	[IsDefaultCategory] [bit] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_matMatCatagorySetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[CategoryTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[matMatCatagorySetup] ([CompanyID], [BranchID], [CategoryTypeID], [CategoryTypeName], [IsDefaultCategory], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 1, N'Service', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[matMatCatagorySetup] ([CompanyID], [BranchID], [CategoryTypeID], [CategoryTypeName], [IsDefaultCategory], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 2, N'Product', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[matItemTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[matItemTypeSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ItemTypeID] [tinyint] NOT NULL,
	[ItemType] [varchar](30) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_matItemTypeSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ItemTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[matItemTypeSetup] ([CompanyID], [BranchID], [ItemTypeID], [ItemType], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 1, N'Serial Item', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[matItemTypeSetup] ([CompanyID], [BranchID], [ItemTypeID], [ItemType], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 2, N'Non Serial Item', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[matItemTypeSetup] ([CompanyID], [BranchID], [ItemTypeID], [ItemType], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, N'Serial Item', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[matItemTypeSetup] ([CompanyID], [BranchID], [ItemTypeID], [ItemType], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 2, N'Non Serial Item', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[matItemPropertySetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[matItemPropertySetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ItemPropertyID] [tinyint] NOT NULL,
	[ItemPropertyName] [varchar](30) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_matItemPropertySetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ItemPropertyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[matItemPropertySetup] ([CompanyID], [BranchID], [ItemPropertyID], [ItemPropertyName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 1, N'Has warranty', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[matItemPropertySetup] ([CompanyID], [BranchID], [ItemPropertyID], [ItemPropertyName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 2, N'Uses barcode', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A58400000000 AS DateTime), CAST(0x0000A58400000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[matItemProperties]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[matItemProperties](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ItemPropertySetID] [tinyint] NOT NULL,
	[ItemPropertyID] [varchar](30) NOT NULL,
	[Description] [varchar](5000) NULL,
	[RelatedQuantity] [tinyint] NULL,
	[DescriptionUnit] [varchar](15) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_matItemLongibility] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ItemID] ASC,
	[ItemPropertySetID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[matCategoryList]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[matCategoryList](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[CategoryTypeID] [tinyint] NOT NULL,
	[ItemCategoryID] [int] NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[ParentCategoryID] [int] NOT NULL,
	[StartingItemCode] [float] NULL,
	[EndingItemCode] [float] NULL,
	[SeqNo] [int] NULL,
	[SerialNo] [int] NULL,
	[TierNo] [tinyint] NULL,
	[CurrentBalance] [int] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_matCategoryList] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ItemCategoryID] ASC,
	[CategoryName] ASC,
	[CategoryTypeID] ASC,
	[ParentCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[matCategoryList] ([CompanyID], [BranchID], [CategoryTypeID], [ItemCategoryID], [CategoryName], [ParentCategoryID], [StartingItemCode], [EndingItemCode], [SeqNo], [SerialNo], [TierNo], [CurrentBalance], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, 111001001, N'Item Category', 111, 0, 0, 1, 1, 1, 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6CE01160FBD AS DateTime), NULL, NULL)
INSERT [dbo].[matCategoryList] ([CompanyID], [BranchID], [CategoryTypeID], [ItemCategoryID], [CategoryName], [ParentCategoryID], [StartingItemCode], [EndingItemCode], [SeqNo], [SerialNo], [TierNo], [CurrentBalance], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, 111002002, N'Frozen Food', 111001001, 0, 0, 2, 2, 1, 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6CE011657A2 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[ItemRequisitionHeader]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemRequisitionHeader](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ItemRequisitionNo] [varchar](15) NOT NULL,
	[RequisitionBy] [varchar](10) NULL,
	[RequisitionDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[RequestedDepartmentID] [varchar](50) NULL,
	[UserType] [tinyint] NULL,
	[UserID] [varchar](15) NULL,
	[LocationOfUse] [tinyint] NULL,
	[LocationAddress] [varchar](1000) NULL,
	[PriorityID] [tinyint] NULL,
	[PurposeID] [tinyint] NULL,
	[ReferenceTypeID] [tinyint] NULL,
	[ReferenceNumber] [varchar](15) NULL,
	[ProjectID] [varchar](15) NULL,
	[RequisitionCurrentStatus] [tinyint] NULL,
	[RequisitionComments] [varchar](5000) NULL,
	[CompletionStatus] [tinyint] NULL,
	[EntryDate] [datetime] NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedUserID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tbl_item_req_hdr] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ItemRequisitionNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemRequisitionDetail]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemRequisitionDetail](
	[ItemRequisitionNo] [varchar](15) NOT NULL,
	[InventoryItemID] [int] NOT NULL,
	[RequiredItemName] [varchar](200) NULL,
	[RequestedQuantity] [decimal](18, 4) NULL,
	[FinalQuantity] [decimal](18, 4) NULL,
	[UnitID] [tinyint] NULL,
	[PossibleRate] [money] NULL,
	[FinalRate] [money] NULL,
	[CountryOfOrigin] [varchar](50) NULL,
	[Specification] [varchar](5000) NULL,
	[Brand] [varchar](50) NULL,
 CONSTRAINT [PK_ItemRequisitionDetail_1] PRIMARY KEY CLUSTERED 
(
	[ItemRequisitionNo] ASC,
	[InventoryItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'12345', 1782, N'Vegetables Roll Standard Pack', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 100.0000, 0.0000, N'&nbsp;', N'&nbsp;', N'&nbsp;')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'1234567', 3217, N'Mola Fish OWN', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 300.0000, 0.0000, N'or', N'sp', N'br')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'1234567', 3234, N'Mutton Fresh', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 300.0000, 0.0000, N'Origin', N'specification', N'Brand')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'12345678', 1775, N'Beef Roll Unique Pack', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 300.0000, 0.0000, N'or', N'sp', N'br')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'12345678', 3219, N'Bailla Fish Big OWN', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 300.0000, 0.0000, N'or', N'sp', N'br')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'12345678', 3221, N'Kachki Fish', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 100.0000, 0.0000, N'or', N'sp', N'br')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'12345678', 3234, N'Mutton Fresh', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 300.0000, 0.0000, N'or', N'sp', N'br')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'123456789', 3216, N'Shol Fish OWN', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 500.0000, 0.0000, N'or', N'sp', N'br')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'123456789', 3233, N'Beef With Bone Primium', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 600.0000, 0.0000, N'or', N'sp', N'br')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'12548', 1779, N'Pitha Coconut Unique Pack', CAST(10.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 5.0000, 0.0000, N'c', N's', N'g')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'13456', 1775, N'Beef Roll Unique Pack', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 100.0000, 0.0000, N'&amp;amp;nbsp;', N'&amp;amp;nbsp;', N'&amp;amp;nbsp;')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'13456', 3214, N'Rui Fish Big', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 260.0000, 0.0000, N'&nbsp;', N'&nbsp;', N'&nbsp;')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'13456', 3235, N'Chicken Local', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 100.0000, 0.0000, N'&amp;nbsp;', N'&amp;nbsp;', N'&amp;nbsp;')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'2222', 3214, N'Rui Fish Big', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 100.0000, 0.0000, N'&nbsp;', N'&nbsp;', N'&nbsp;')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'23456', 3214, N'Rui Fish Big', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 100.0000, 0.0000, N'&nbsp;', N'&nbsp;', N'&nbsp;')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'333', 3214, N'Rui Fish Big', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 100.0000, 0.0000, N'&nbsp;', N'&nbsp;', N'&nbsp;')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'4444', 3214, N'Rui Fish Big', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 100.0000, 0.0000, N'&nbsp;', N'&nbsp;', N'&nbsp;')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'45678', 3214, N'Rui Fish Big', CAST(10.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 300.0000, 0.0000, N'&nbsp;', N'&nbsp;', N'&nbsp;')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'555', 3214, N'Rui Fish Big', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 260.0000, 0.0000, N'&nbsp;', N'&nbsp;', N'&nbsp;')
INSERT [dbo].[ItemRequisitionDetail] ([ItemRequisitionNo], [InventoryItemID], [RequiredItemName], [RequestedQuantity], [FinalQuantity], [UnitID], [PossibleRate], [FinalRate], [CountryOfOrigin], [Specification], [Brand]) VALUES (N'777', 3214, N'Rui Fish Big', CAST(1.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 600.0000, 0.0000, N'', N'', N'')
/****** Object:  Table [dbo].[hrEmployeeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hrEmployeeSetup](
	[ReferenceID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[EmployeeID] [varchar](8) NOT NULL,
	[EmployeeTypeID] [int] NULL,
	[EmployeeCategoryID] [int] NULL,
	[Title] [varchar](15) NULL,
	[FirstName] [varchar](20) NULL,
	[MiddleName] [varchar](20) NULL,
	[LastName] [varchar](20) NULL,
	[FullName] [varchar](70) NULL,
	[DisplayName] [varchar](35) NULL,
	[ShortName] [varchar](20) NULL,
	[Email] [varchar](256) NULL,
	[PrimaryContactNo] [varchar](15) NULL,
	[SecondaryContactNo] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[MotherName] [varchar](50) NULL,
	[GenderID] [int] NULL,
	[MaritalStatusID] [int] NULL,
	[SpouseName] [varchar](50) NULL,
	[ReligionID] [int] NULL,
	[Nationality] [varchar](25) NULL,
	[DateOfBirth] [datetime] NULL,
	[PlaceOfBirth] [varchar](50) NULL,
	[BloodGroupID] [int] NULL,
	[IdentificationMark] [varchar](100) NULL,
	[ContactHeight] [varchar](50) NULL,
	[ContactWeight] [varchar](50) NULL,
	[ContactColor] [varchar](50) NULL,
	[NationalIDCardNumber] [varchar](30) NULL,
	[PassportNo] [varchar](30) NULL,
	[PassportIssuedFrom] [varchar](50) NULL,
	[PassportIssueDate] [datetime] NULL,
	[PassportExpireDate] [datetime] NULL,
	[DuelPassportNo] [varchar](30) NULL,
	[DuelPassportIssuedFrom] [varchar](50) NULL,
	[DualPassportIssueDate] [datetime] NULL,
	[DualPassportExpireDate] [datetime] NULL,
	[DrivingLicenseNo] [varchar](50) NULL,
	[DrivingLicenseIssuedFrom] [varchar](50) NULL,
	[DrivingLicenseExpireDate] [datetime] NULL,
	[ContactTIN] [varchar](30) NULL,
	[EmployeeRemarks] [varchar](100) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
	[UserPermission] [bit] NULL,
 CONSTRAINT [PK_hrEmployeeSetup] PRIMARY KEY CLUSTERED 
(
	[ReferenceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[hrEmployeeSetup] ([ReferenceID], [CompanyID], [EmployeeID], [EmployeeTypeID], [EmployeeCategoryID], [Title], [FirstName], [MiddleName], [LastName], [FullName], [DisplayName], [ShortName], [Email], [PrimaryContactNo], [SecondaryContactNo], [FatherName], [MotherName], [GenderID], [MaritalStatusID], [SpouseName], [ReligionID], [Nationality], [DateOfBirth], [PlaceOfBirth], [BloodGroupID], [IdentificationMark], [ContactHeight], [ContactWeight], [ContactColor], [NationalIDCardNumber], [PassportNo], [PassportIssuedFrom], [PassportIssueDate], [PassportExpireDate], [DuelPassportNo], [DuelPassportIssuedFrom], [DualPassportIssueDate], [DualPassportExpireDate], [DrivingLicenseNo], [DrivingLicenseIssuedFrom], [DrivingLicenseExpireDate], [ContactTIN], [EmployeeRemarks], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserPermission]) VALUES (1, 1, N'L3T101', 1, 1, N'1', N'Employee 101', N'', N'', N'Md. Asaduzaman chodury', NULL, NULL, N'abdul.hai@link3.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75900E4CA50 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[hrEmployeeSetup] ([ReferenceID], [CompanyID], [EmployeeID], [EmployeeTypeID], [EmployeeCategoryID], [Title], [FirstName], [MiddleName], [LastName], [FullName], [DisplayName], [ShortName], [Email], [PrimaryContactNo], [SecondaryContactNo], [FatherName], [MotherName], [GenderID], [MaritalStatusID], [SpouseName], [ReligionID], [Nationality], [DateOfBirth], [PlaceOfBirth], [BloodGroupID], [IdentificationMark], [ContactHeight], [ContactWeight], [ContactColor], [NationalIDCardNumber], [PassportNo], [PassportIssuedFrom], [PassportIssueDate], [PassportExpireDate], [DuelPassportNo], [DuelPassportIssuedFrom], [DualPassportIssueDate], [DualPassportExpireDate], [DrivingLicenseNo], [DrivingLicenseIssuedFrom], [DrivingLicenseExpireDate], [ContactTIN], [EmployeeRemarks], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserPermission]) VALUES (2, 1, N'EMP102', 1134001, 1135001, N'1136002', N'Employee 102', N'TEST102', N'TEST102', NULL, NULL, NULL, N'asd@g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77C01028DD0 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[hrEmployeeSetup] ([ReferenceID], [CompanyID], [EmployeeID], [EmployeeTypeID], [EmployeeCategoryID], [Title], [FirstName], [MiddleName], [LastName], [FullName], [DisplayName], [ShortName], [Email], [PrimaryContactNo], [SecondaryContactNo], [FatherName], [MotherName], [GenderID], [MaritalStatusID], [SpouseName], [ReligionID], [Nationality], [DateOfBirth], [PlaceOfBirth], [BloodGroupID], [IdentificationMark], [ContactHeight], [ContactWeight], [ContactColor], [NationalIDCardNumber], [PassportNo], [PassportIssuedFrom], [PassportIssueDate], [PassportExpireDate], [DuelPassportNo], [DuelPassportIssuedFrom], [DualPassportIssueDate], [DualPassportExpireDate], [DrivingLicenseNo], [DrivingLicenseIssuedFrom], [DrivingLicenseExpireDate], [ContactTIN], [EmployeeRemarks], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserPermission]) VALUES (3, 1, N'EMP103', 1134001, 1135001, N'1136002', N'Employee 103', N'Employee 103', N'Employee 103', NULL, NULL, NULL, N'df@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77C01137AA7 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[hrEmployeeSetup] ([ReferenceID], [CompanyID], [EmployeeID], [EmployeeTypeID], [EmployeeCategoryID], [Title], [FirstName], [MiddleName], [LastName], [FullName], [DisplayName], [ShortName], [Email], [PrimaryContactNo], [SecondaryContactNo], [FatherName], [MotherName], [GenderID], [MaritalStatusID], [SpouseName], [ReligionID], [Nationality], [DateOfBirth], [PlaceOfBirth], [BloodGroupID], [IdentificationMark], [ContactHeight], [ContactWeight], [ContactColor], [NationalIDCardNumber], [PassportNo], [PassportIssuedFrom], [PassportIssueDate], [PassportExpireDate], [DuelPassportNo], [DuelPassportIssuedFrom], [DualPassportIssueDate], [DualPassportExpireDate], [DrivingLicenseNo], [DrivingLicenseIssuedFrom], [DrivingLicenseExpireDate], [ContactTIN], [EmployeeRemarks], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserPermission]) VALUES (4, 1, N'EMP104', 1134001, 1135002, N'1136002', N'Employee 104', N'Employee 104', N'Employee 104', NULL, NULL, NULL, N'df@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77C01151301 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[hrEmployeeSetup] ([ReferenceID], [CompanyID], [EmployeeID], [EmployeeTypeID], [EmployeeCategoryID], [Title], [FirstName], [MiddleName], [LastName], [FullName], [DisplayName], [ShortName], [Email], [PrimaryContactNo], [SecondaryContactNo], [FatherName], [MotherName], [GenderID], [MaritalStatusID], [SpouseName], [ReligionID], [Nationality], [DateOfBirth], [PlaceOfBirth], [BloodGroupID], [IdentificationMark], [ContactHeight], [ContactWeight], [ContactColor], [NationalIDCardNumber], [PassportNo], [PassportIssuedFrom], [PassportIssueDate], [PassportExpireDate], [DuelPassportNo], [DuelPassportIssuedFrom], [DualPassportIssueDate], [DualPassportExpireDate], [DrivingLicenseNo], [DrivingLicenseIssuedFrom], [DrivingLicenseExpireDate], [ContactTIN], [EmployeeRemarks], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserPermission]) VALUES (5, 1, N'emp002', 1134001, 1135001, N'1136001', N'sfsd', N'sd', N'sd', N'sfsd', NULL, NULL, N'sd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80124AEC5 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[hrEmployeeSetup] ([ReferenceID], [CompanyID], [EmployeeID], [EmployeeTypeID], [EmployeeCategoryID], [Title], [FirstName], [MiddleName], [LastName], [FullName], [DisplayName], [ShortName], [Email], [PrimaryContactNo], [SecondaryContactNo], [FatherName], [MotherName], [GenderID], [MaritalStatusID], [SpouseName], [ReligionID], [Nationality], [DateOfBirth], [PlaceOfBirth], [BloodGroupID], [IdentificationMark], [ContactHeight], [ContactWeight], [ContactColor], [NationalIDCardNumber], [PassportNo], [PassportIssuedFrom], [PassportIssueDate], [PassportExpireDate], [DuelPassportNo], [DuelPassportIssuedFrom], [DualPassportIssueDate], [DualPassportExpireDate], [DrivingLicenseNo], [DrivingLicenseIssuedFrom], [DrivingLicenseExpireDate], [ContactTIN], [EmployeeRemarks], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserPermission]) VALUES (6, 5, N'L3T101', -1, -1, N'-1', N'', N'', N'', NULL, NULL, NULL, N'abdul.hai@link3.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D30AC2 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[hrEmployeeSetup] ([ReferenceID], [CompanyID], [EmployeeID], [EmployeeTypeID], [EmployeeCategoryID], [Title], [FirstName], [MiddleName], [LastName], [FullName], [DisplayName], [ShortName], [Email], [PrimaryContactNo], [SecondaryContactNo], [FatherName], [MotherName], [GenderID], [MaritalStatusID], [SpouseName], [ReligionID], [Nationality], [DateOfBirth], [PlaceOfBirth], [BloodGroupID], [IdentificationMark], [ContactHeight], [ContactWeight], [ContactColor], [NationalIDCardNumber], [PassportNo], [PassportIssuedFrom], [PassportIssueDate], [PassportExpireDate], [DuelPassportNo], [DuelPassportIssuedFrom], [DualPassportIssueDate], [DualPassportExpireDate], [DrivingLicenseNo], [DrivingLicenseIssuedFrom], [DrivingLicenseExpireDate], [ContactTIN], [EmployeeRemarks], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserPermission]) VALUES (7, 5, N'EMP102', -1, -1, N'-1', N'', N'', N'', NULL, NULL, NULL, N'abdul.hai@link3.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'A', N'698a7bfc-ac9c-4371-af75-968c8a8ffdaf', CAST(0x0000A7AF010F5007 AS DateTime), NULL, NULL, 1)
/****** Object:  Table [dbo].[dsVoucherTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dsVoucherTypeSetup](
	[VoucherTypeID] [int] NOT NULL,
	[VoucherType] [varchar](50) NOT NULL,
	[Description] [varchar](100) NULL,
	[EntryDate] [datetime] NULL,
	[EntryUserID] [int] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUser] [varchar](25) NULL,
 CONSTRAINT [PK_dsVoucherTypeSetup] PRIMARY KEY CLUSTERED 
(
	[VoucherTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dsTransactionType]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dsTransactionType](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[TransectionTypeID] [int] NOT NULL,
	[KnownValue] [varchar](1) NOT NULL,
	[TransectionType] [varchar](50) NOT NULL,
	[RelatedTo] [varchar](1) NULL,
	[SortingSRNo] [int] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NULL,
	[EntryUserID] [int] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUser] [varchar](25) NULL,
 CONSTRAINT [PK_LTransactionType_1] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[TransectionTypeID] ASC,
	[KnownValue] ASC,
	[TransectionType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gCountryList]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gCountryList](
	[CountryID] [smallint] NOT NULL,
	[CountryName] [varchar](30) NOT NULL,
	[CountryCode] [varchar](5) NULL,
	[InternetCode] [varchar](4) NULL,
	[DialingCode] [smallint] NULL,
	[CapitalName] [varchar](35) NULL,
	[CurrencyCode] [varchar](3) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_gCountryList] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[gCountryList] ([CountryID], [CountryName], [CountryCode], [InternetCode], [DialingCode], [CapitalName], [CurrencyCode], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'Afghanistan', NULL, NULL, NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[gCountryList] ([CountryID], [CountryName], [CountryCode], [InternetCode], [DialingCode], [CapitalName], [CurrencyCode], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'Armenia', NULL, NULL, NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[gCountryList] ([CountryID], [CountryName], [CountryCode], [InternetCode], [DialingCode], [CapitalName], [CurrencyCode], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'Bangladesh', NULL, NULL, NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[gCountryList] ([CountryID], [CountryName], [CountryCode], [InternetCode], [DialingCode], [CapitalName], [CurrencyCode], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'Bhutan', NULL, NULL, NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F600000000 AS DateTime), NULL, NULL)
INSERT [dbo].[gCountryList] ([CountryID], [CountryName], [CountryCode], [InternetCode], [DialingCode], [CapitalName], [CurrencyCode], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'China', NULL, NULL, NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F600000000 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[FileUploadHeader]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileUploadHeader](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ReferenceNo] [varchar](15) NOT NULL,
	[FileCategoryID] [tinyint] NOT NULL,
	[UploadedScreenName] [varchar](200) NULL,
 CONSTRAINT [PK_FileUploadHeader] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ReferenceNo] ASC,
	[FileCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[FileUploadHeader] ([CompanyID], [BranchID], [ReferenceNo], [FileCategoryID], [UploadedScreenName]) VALUES (1, 1, N'1234567', 1, N'aspnetForm')
INSERT [dbo].[FileUploadHeader] ([CompanyID], [BranchID], [ReferenceNo], [FileCategoryID], [UploadedScreenName]) VALUES (1, 1, N'12345678', 1, N'aspnetForm')
INSERT [dbo].[FileUploadHeader] ([CompanyID], [BranchID], [ReferenceNo], [FileCategoryID], [UploadedScreenName]) VALUES (1, 1, N'123456789', 1, N'aspnetForm')
/****** Object:  Table [dbo].[FileUploadDetail]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FileUploadDetail](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[FileID] [uniqueidentifier] NOT NULL,
	[ReferenceNo] [varchar](15) NOT NULL,
	[FileType] [varchar](50) NULL,
	[UserDefinedFileName] [varchar](500) NULL,
	[OriginalFileName] [varchar](200) NULL,
	[UploadedFilename] [varchar](200) NULL,
	[FileLength] [int] NULL,
	[UploadBy] [uniqueidentifier] NULL,
	[UploadDatetime] [datetime] NULL,
	[RelativePath] [varchar](200) NULL,
	[AbsolutePath] [varchar](200) NULL,
	[DownloadLink] [varchar](200) NULL,
	[ShowingStatusInDashBoard] [tinyint] NULL,
	[ShowingStatusInNoticeBoard] [tinyint] NULL,
 CONSTRAINT [PK_FileUploadDetails] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[FileID] ASC,
	[ReferenceNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[oDepartmentSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[oDepartmentSetup](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[DepartmentID] [tinyint] NOT NULL,
	[DepartmentCategoryID] [tinyint] NOT NULL,
	[DeparmentTypeID] [int] NOT NULL,
	[DepartmentName] [varchar](30) NOT NULL,
	[Shortname] [varchar](5) NULL,
	[DepartmentOpeningDate] [datetime] NULL,
	[DepartmentHierarchy] [tinyint] NULL,
	[CurrentDepartmentHeadID] [varchar](7) NULL,
	[HeadEmailAddress] [varchar](25) NULL,
	[DeptEmailAddress] [varchar](25) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[oDepartmentSetup] ([CompanyID], [BranchID], [DepartmentID], [DepartmentCategoryID], [DeparmentTypeID], [DepartmentName], [Shortname], [DepartmentOpeningDate], [DepartmentHierarchy], [CurrentDepartmentHeadID], [HeadEmailAddress], [DeptEmailAddress], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 1, 1, 1, N'Software', N'Soft', CAST(0x0000A67500000000 AS DateTime), 1, N'L3T454', N'1', N'Dhaka', N'a', N'dc288240-f3ca-4ba4-bcdf-bd9f0f2f7fa3', CAST(0x0000A67500000000 AS DateTime), CAST(0x0000A67500000000 AS DateTime), N'dc288240-f3ca-4ba4-bcdf-bd9f0f2f7fa3')
INSERT [dbo].[oDepartmentSetup] ([CompanyID], [BranchID], [DepartmentID], [DepartmentCategoryID], [DeparmentTypeID], [DepartmentName], [Shortname], [DepartmentOpeningDate], [DepartmentHierarchy], [CurrentDepartmentHeadID], [HeadEmailAddress], [DeptEmailAddress], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 2, 1, 1, N'HRMS', N'HRM', CAST(0x0000A67500000000 AS DateTime), 1, N'L3T454', N'1', N'Dhaka', N'a', N'dc288240-f3ca-4ba4-bcdf-bd9f0f2f7fa3', CAST(0x0000A67500000000 AS DateTime), CAST(0x0000A67500000000 AS DateTime), N'dc288240-f3ca-4ba4-bcdf-bd9f0f2f7fa3')
INSERT [dbo].[oDepartmentSetup] ([CompanyID], [BranchID], [DepartmentID], [DepartmentCategoryID], [DeparmentTypeID], [DepartmentName], [Shortname], [DepartmentOpeningDate], [DepartmentHierarchy], [CurrentDepartmentHeadID], [HeadEmailAddress], [DeptEmailAddress], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 0, 3, 1, 1, N'Admin', N'ADM', CAST(0x0000A67500000000 AS DateTime), 1, N'L3T454', N'1', N'Dhaka', N'a', N'dc288240-f3ca-4ba4-bcdf-bd9f0f2f7fa3', CAST(0x0000A67500000000 AS DateTime), CAST(0x0000A67500000000 AS DateTime), N'dc288240-f3ca-4ba4-bcdf-bd9f0f2f7fa3')
/****** Object:  Table [dbo].[orgDesignation]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orgDesignation](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[FieldOfID] [varchar](35) NOT NULL,
	[FieldOfName] [varchar](50) NULL,
	[FieldDescription] [varchar](35) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_orgDesignation] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[FieldOfID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[orgDesignation] ([CompanyID], [BranchID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, N'1122001', N'Assistant Service Engineer', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00F0E010 AS DateTime), NULL, NULL)
INSERT [dbo].[orgDesignation] ([CompanyID], [BranchID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, N'1122002', N'Director', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00F12660 AS DateTime), NULL, NULL)
INSERT [dbo].[orgDesignation] ([CompanyID], [BranchID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, N'1122003', N'General Manager', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00F12660 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[orgOrganizationalChartSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orgOrganizationalChartSetup](
	[CompanyID] [tinyint] NOT NULL,
	[ParentEntityID] [int] NOT NULL,
	[EntityID] [int] NOT NULL,
	[EntityTypeID] [int] NULL,
	[AddressTag] [varchar](1) NULL,
	[AddressID] [int] NULL,
	[EntityName] [varchar](50) NULL,
	[ShortName] [varchar](10) NULL,
	[DisplayName] [varchar](20) NULL,
	[GroupEmailAddress] [varchar](50) NULL,
	[HeadID] [varchar](50) NULL,
	[EntityCategoryID] [varchar](50) NULL,
	[EntityOpeningDate] [date] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_orgOrganizationalChartSetup_1] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[ParentEntityID] ASC,
	[EntityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 501, 5, N'N', 501, N'Banani', N'b', N'', N'b@gmail.com', N'', N'', CAST(0x7A3C0B00 AS Date), N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71F00AC596C AS DateTime), CAST(0x0000A71F010D1300 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 111, 1, 1, N'N', 1, N'Link3 Technologies Ltd', NULL, NULL, NULL, NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71900000000 AS DateTime), CAST(0x0000A75F00EAAFA8 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 501, 601, 6, N'Y', 601, N'Software Department', N'b', N'', N'b@gmail.com', N'', N'116002', CAST(0x5B950A00 AS Date), N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71F00B0A497 AS DateTime), CAST(0x0000A71F010DCB7E AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 601, 602, 6, N'N', 602, N'Software Testing', N'b', N'', N'b@gmail.com', N'', N'116002', CAST(0x5B950A00 AS Date), N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71F00BC5500 AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 601, 603, 6, N'Y', 603, N'Software Implement', N'b', N'', N'b@gmail.com', N'', N'116002', CAST(0x5B950A00 AS Date), N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71F00BC868F AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 601, 701, 7, N'N', 701, N'Software Development', N'b', N'', N'b@gmail.com', N'', N'', CAST(0x5B950A00 AS Date), N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71F00B909CF AS DateTime), CAST(0x0000A71F010E2108 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 701, 801, 8, N'N', 801, N'Team1', N'b', N'', N'b@gmail.com', N'', N'', CAST(0x5B950A00 AS Date), N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7A7010504AB AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, 111, 3, 1, N'N', 3, N'Link4 Technologies Ltd', NULL, NULL, NULL, NULL, NULL, NULL, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A72000C8BDC3 AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, 111, 4, 1, N'N', 4, N'Link4 Technologies Ltd', NULL, NULL, NULL, NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A72A00CCCE59 AS DateTime), CAST(0x0000A7AF00B96BD4 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 5, 502, 5, N'N', 502, N'Banani', N'', N'', N'', N'', N'1150001', CAST(0x5B950A00 AS Date), N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D29E3A AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationalChartSetup] ([CompanyID], [ParentEntityID], [EntityID], [EntityTypeID], [AddressTag], [AddressID], [EntityName], [ShortName], [DisplayName], [GroupEmailAddress], [HeadID], [EntityCategoryID], [EntityOpeningDate], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 111, 5, 1, N'N', 5, N'Link5 Technologies Ltd', NULL, NULL, NULL, NULL, NULL, NULL, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00BB2107 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[orgOrganizationAddress]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orgOrganizationAddress](
	[EntityAdreessID] [varchar](12) NOT NULL,
	[ContactAdreessNumber] [int] NOT NULL,
	[ContactAddressUsedID] [tinyint] NOT NULL,
	[AddressAsOn] [date] NOT NULL,
	[DisplayAddress] [varchar](500) NULL,
	[DivisionID] [int] NULL,
	[DistrictID] [int] NULL,
	[PostalCode] [varchar](4) NULL,
	[ContactPhoneNo] [varchar](50) NULL,
	[Fax] [varchar](15) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_orgOrganizationAddress_1] PRIMARY KEY CLUSTERED 
(
	[EntityAdreessID] ASC,
	[ContactAddressUsedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[orgOrganizationAddress] ([EntityAdreessID], [ContactAdreessNumber], [ContactAddressUsedID], [AddressAsOn], [DisplayAddress], [DivisionID], [DistrictID], [PostalCode], [ContactPhoneNo], [Fax], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'603', 565, 1, CAST(0x7A3C0B00 AS Date), N'', 100241, 100231, N'', N'', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71F00BC868F AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationAddress] ([EntityAdreessID], [ContactAdreessNumber], [ContactAddressUsedID], [AddressAsOn], [DisplayAddress], [DivisionID], [DistrictID], [PostalCode], [ContactPhoneNo], [Fax], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (N'701', 5655, 1, CAST(0x7A3C0B00 AS Date), N'', 100241, 100231, N'', N'', N'', N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71F00B909CF AS DateTime), CAST(0x0000A71F00C8A21C AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[ProcessPermissionDefinition]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessPermissionDefinition](
	[ProcessId] [varchar](50) NULL,
	[ProcessFlowId] [int] NULL,
	[DepartmentId] [int] NULL,
	[ProcessLevelid] [int] NULL,
	[Empid] [varchar](50) NULL,
	[ActionTypeID] [int] NULL,
	[ActionId] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcessLevelDescription]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessLevelDescription](
	[ProcessId] [varchar](50) NULL,
	[ProcessLevelId] [int] NULL,
	[LevelDescription] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ProcessLevelDescription] ([ProcessId], [ProcessLevelId], [LevelDescription]) VALUES (N'P001', 1, N'Level 1')
/****** Object:  Table [dbo].[ProcessHeaderConfigurationbyDepartment]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessHeaderConfigurationbyDepartment](
	[ReferenceNo] [varchar](255) NULL,
	[ProcessId] [varchar](50) NULL,
	[ProcessFlowId] [int] NULL,
	[DepartmentId] [varchar](50) NULL,
	[ProcessName] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcessFlowTrnMovementDet]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessFlowTrnMovementDet](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[TransactionNo] [varchar](50) NOT NULL,
	[MovementNo] [int] NOT NULL,
	[ProcessID] [varchar](4) NOT NULL,
	[LineNo] [int] NULL,
	[Trndate] [datetime] NULL,
	[sysTrnIndate] [datetime] NULL,
	[sysTrnOutdate] [datetime] NULL,
	[sysInTime] [varchar](8) NULL,
	[sysOutTime] [varchar](8) NULL,
	[sysTotalhours] [varchar](8) NULL,
	[actTrnIndate] [datetime] NULL,
	[actTrnOutdate] [datetime] NULL,
	[actInTime] [varchar](8) NULL,
	[actOutTime] [varchar](8) NULL,
	[actTotalhours] [varchar](8) NULL,
	[noofdays] [float] NULL,
	[Type] [varchar](3) NULL,
	[Remarks] [varchar](max) NULL,
	[OnbehalfofApplicant] [varchar](50) NULL,
	[ResponsiblePersonID] [varchar](50) NULL,
	[ActionTypeId] [int] NULL,
	[ActingPersonID] [varchar](20) NULL,
	[EntryDate] [datetime] NULL,
	[IsLineLocked] [varchar](1) NULL,
 CONSTRAINT [PK_ProcessFlowTrnMovementDet] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[TransactionNo] ASC,
	[MovementNo] ASC,
	[ProcessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcessFlowDetAttendance]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessFlowDetAttendance](
	[TransactionNo] [varchar](50) NULL,
	[TransactionNoLineNo] [int] NULL,
	[ApplicantID] [varchar](20) NULL,
	[Trndate] [datetime] NULL,
	[sysTrnIndate] [datetime] NULL,
	[sysTrnOutdate] [datetime] NULL,
	[sysInTime] [varchar](8) NULL,
	[sysOutTime] [varchar](8) NULL,
	[sysTotalhours] [varchar](8) NULL,
	[actTrnIndate] [datetime] NULL,
	[actTrnOutdate] [datetime] NULL,
	[actInTime] [varchar](8) NULL,
	[actOutTime] [varchar](8) NULL,
	[actTotalhours] [varchar](8) NULL,
	[noofdays] [float] NULL,
	[Type] [varchar](3) NULL,
	[AutoSl] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcessFlowdet]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessFlowdet](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ProcessID] [varchar](4) NOT NULL,
	[FlowID] [varchar](4) NOT NULL,
	[ProcessLevelID] [int] NULL,
	[NextProcesLevelID] [int] NULL,
	[ApplicantID] [varchar](50) NULL,
	[TransactionNo] [varchar](50) NULL,
	[TransactionNoLineNo] [int] NULL,
	[ReceiveDate] [datetime] NULL,
	[ReceivePriority] [int] NULL,
	[ActingPersonId] [varchar](50) NULL,
	[Remarks] [varchar](max) NULL,
	[OnbehalfofApplicant] [varchar](50) NULL,
	[ResponsiblePerson] [varchar](50) NULL,
	[ActionTypeId] [int] NULL,
	[IsLineLocked] [varchar](1) NULL,
	[IsProcessLocked] [varchar](1) NULL,
	[LoginUserid] [varchar](50) NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_ProcessFlowdet] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ProcessID] ASC,
	[FlowID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcessFlowDefinition]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessFlowDefinition](
	[ProcessId] [varchar](50) NULL,
	[CategoryId] [int] NULL,
	[ProcessFlowId] [int] NULL,
	[FlowDescription] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ProcessFlowDefinition] ([ProcessId], [CategoryId], [ProcessFlowId], [FlowDescription]) VALUES (N'P001', 2, 1, N'Requisition Flow')
/****** Object:  Table [dbo].[ProcessFlowConfigurationbyEmployee]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessFlowConfigurationbyEmployee](
	[ReferenceNo] [varchar](255) NULL,
	[ApplicantID] [varchar](50) NULL,
	[ProcessLevelid] [int] NULL,
	[AccessId] [varchar](250) NULL,
	[SubAccessId] [varchar](250) NULL,
	[AccessPermissionTypeID] [varchar](255) NULL,
	[SubAccessPermissionTypeID] [varchar](255) NULL,
	[SuperUserID] [varchar](50) NULL,
	[MonitoringId] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcessDetailsConfigurationbyDepartment]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessDetailsConfigurationbyDepartment](
	[ReferenceNo] [varchar](255) NULL,
	[ProcessLevelid] [int] NULL,
	[AccessId] [varchar](250) NULL,
	[SubAccessId] [varchar](250) NULL,
	[AccessPermissionTypeID] [varchar](255) NULL,
	[SubAccessPermissionTypeID] [varchar](255) NULL,
	[SuperUserID] [varchar](50) NULL,
	[MonitoringId] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcessDescription]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessDescription](
	[ProcessId] [varchar](50) NULL,
	[ProcessDescription] [varchar](250) NULL,
	[Status] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ProcessDescription] ([ProcessId], [ProcessDescription], [Status]) VALUES (N'P001', N'Requisition Process', N'Active')
/****** Object:  Table [dbo].[ProcessActionType]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessActionType](
	[ProcessId] [varchar](50) NULL,
	[ActionTypeId] [int] NULL,
	[Action] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ProcessActionType] ([ProcessId], [ActionTypeId], [Action]) VALUES (N'P001', 1, N'INITIATE')
INSERT [dbo].[ProcessActionType] ([ProcessId], [ActionTypeId], [Action]) VALUES (N'P001', 2, N'FORWORD')
INSERT [dbo].[ProcessActionType] ([ProcessId], [ActionTypeId], [Action]) VALUES (N'P001', 3, N'RETURN')
INSERT [dbo].[ProcessActionType] ([ProcessId], [ActionTypeId], [Action]) VALUES (N'P001', 4, N'REJECT')
INSERT [dbo].[ProcessActionType] ([ProcessId], [ActionTypeId], [Action]) VALUES (N'P001', 5, N'APPROVE')
/****** Object:  Table [dbo].[PrioritySetupActivityWise]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrioritySetupActivityWise](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ActivityID] [tinyint] NOT NULL,
	[PriorityID] [tinyint] NOT NULL,
	[PriorityName] [varchar](50) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PrioritySetupActivityWise] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ActivityID] ASC,
	[PriorityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PrioritySetupActivityWise] ([CompanyID], [BranchID], [ActivityID], [PriorityID], [PriorityName], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 1, 1, N'High', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A68C00000000 AS DateTime), NULL)
INSERT [dbo].[PrioritySetupActivityWise] ([CompanyID], [BranchID], [ActivityID], [PriorityID], [PriorityName], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 1, 2, N'Medium', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A68C00000000 AS DateTime), NULL)
INSERT [dbo].[PrioritySetupActivityWise] ([CompanyID], [BranchID], [ActivityID], [PriorityID], [PriorityName], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 1, 3, N'High', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A68C00000000 AS DateTime), NULL)
INSERT [dbo].[PrioritySetupActivityWise] ([CompanyID], [BranchID], [ActivityID], [PriorityID], [PriorityName], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 2, 4, N'Immediate', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A68C00000000 AS DateTime), NULL)
INSERT [dbo].[PrioritySetupActivityWise] ([CompanyID], [BranchID], [ActivityID], [PriorityID], [PriorityName], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 2, 5, N'Installation awaiting', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A68C00000000 AS DateTime), NULL)
/****** Object:  Table [dbo].[pmProjectSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pmProjectSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ProjectID] [varchar](7) NOT NULL,
	[ProjectTypeID] [int] NOT NULL,
	[ContactID] [varchar](7) NOT NULL,
	[ProjectCategoryID] [int] NOT NULL,
	[ProjectPriorityID] [int] NOT NULL,
	[ProjectStatusID] [varchar](1) NULL,
	[ProjectName] [varchar](60) NOT NULL,
	[Descriptions] [varchar](100) NULL,
	[AreaID] [int] NULL,
	[Address] [varchar](100) NULL,
	[Phone] [varchar](100) NULL,
	[Fax] [varchar](50) NULL,
	[Email] [varchar](60) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ProjectArchitect] [varchar](30) NULL,
	[ProjectConsultant] [varchar](30) NULL,
	[ProjectEngineer] [varchar](30) NULL,
	[BrochureBy] [varchar](30) NULL,
	[InitialPrjValue] [money] NULL,
	[ActualPrjValue] [money] NULL,
	[LandOwnerName] [varchar](35) NULL,
	[ApartmentRatio] [varchar](35) NULL,
	[InitialPayment] [money] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_LProjectSetupRE] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ProjectID] ASC,
	[ProjectTypeID] ASC,
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paDistrictsOfCountries]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paDistrictsOfCountries](
	[CountryID] [smallint] NOT NULL,
	[DistrictID] [smallint] NOT NULL,
	[DistrictCode] [varchar](50) NULL,
	[DistrictName] [varchar](25) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DistrictsOfBD] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC,
	[DistrictID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paAreaSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paAreaSetup](
	[CountryID] [smallint] NOT NULL,
	[AreaGroupID] [smallint] NOT NULL,
	[AreaID] [smallint] NOT NULL,
	[AreaName] [varchar](25) NULL,
	[AreaCode] [varchar](4) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC,
	[AreaGroupID] ASC,
	[AreaID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paAreaGroupSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paAreaGroupSetup](
	[CountryID] [smallint] NOT NULL,
	[DistrictID] [smallint] NOT NULL,
	[AreaGroupID] [smallint] NOT NULL,
	[AreaGroupName] [varchar](25) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_pAreaGroups] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC,
	[DistrictID] ASC,
	[AreaGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sysTwoColumnTables]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sysTwoColumnTables](
	[TableID] [int] NOT NULL,
	[TableName] [varchar](50) NULL,
	[EntryMode] [varchar](35) NULL,
	[RelatedTo] [varchar](35) NULL,
	[EntrySystem] [varchar](1) NULL,
	[RelatedUserRoleID] [int] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_sysTwoColumnTables] PRIMARY KEY CLUSTERED 
(
	[TableID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'TEST011', N'TESET11', N'TEST111', NULL, 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6DC011CD46B AS DateTime), CAST(0x0000A6DD00EE19BC AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'tEST02', N'TESET12', N'TEST112', NULL, 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6DC01238AF0 AS DateTime), CAST(0x0000A6E000AEC2BE AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'tEST03', N'TESET13', N'TEST113', NULL, 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6DD00BFAFBF AS DateTime), CAST(0x0000A6DD00C8C2FA AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'tEST03', N'TESET13', N'TEST113', NULL, 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6DD00F3CB21 AS DateTime), CAST(0x0000A6DD00F40FCE AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'Office Location Type Setup', N'Office Location Type Setup', N'Office Location Type Setup', N'M', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E000D04F39 AS DateTime), CAST(0x0000A6E100CFB6DF AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, N'Department Type', N'Department Type', N'Department Type', N'M', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E000D06E04 AS DateTime), CAST(0x0000A6E201259F12 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'Section Type', N'Section Type', N'Section Type', N'M', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E000D0996E AS DateTime), CAST(0x0000A6E100CFAA16 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'Gender Setup', N'org', N'org', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E400BDA8DB AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (9, N'Marital Status Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E400BDD08C AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (10, N'Religion Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E400BDE584 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (11, N'Blood Group Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E800F7F083 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (12, N'Bank Account Type Setup', N'all', N'all', N'A', 7, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E800FAFBDC AS DateTime), CAST(0x0000A768011371C3 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (13, N'Data Status Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E800FD0637 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (14, N'Data Used Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E801003AAB AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (15, N'Contact Category Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E80101F2B0 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'Bank List Setup', N'all', N'all', N'A', 7, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E80115B6C8 AS DateTime), CAST(0x0000A76800E2D914 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (17, N'Card Type Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E8011763D8 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (18, N'Transaction Media Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E80118B005 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (19, N'Material Transaction Status Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E801193891 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'Business Nature Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E801255AC8 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'Ownership Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E80125B888 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (22, N'Designation Setup', N'all', N'all', N'M', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00EFB08C AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (23, N'District Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC010DA6AB AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (24, N'Division Setup', N'all', N'all', N'A', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71A00D6DDCA AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (25, N'Role Type Setup', N'all', N'all', N'M', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A73E00DB602E AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (26, N'Vehicle Type', N'Vehicle', N'Vehicle', N'M', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7570106868E AS DateTime), CAST(0x0000A76800E2AA6B AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (27, N'Vehicle Category', N'Vehicle', N'Vehicle', N'M', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7570106D0C3 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (28, N'Vehicle Transmission', N'Vehicle', N'Vehicle', N'M', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75701073D23 AS DateTime), CAST(0x0000A768011362D9 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (29, N'Vehicle Body Type', N'Vehicle', N'Vehicle', N'M', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A757010789A5 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (30, N'Vehicle Documents', N'Vehicle', N'Vehicle', N'M', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00EAEA69 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (31, N'Vehicle Used As', N'Vehicle', N'Vehicle', N'M', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00F441F7 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (32, N'Vehicle Driver Type', N'Vehicle', N'Vehicle', N'M', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00F4ED4E AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (33, N'Vehicle Driver Photo ID Type', N'Vehicle', N'Vehicle', N'M', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00F5A736 AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (34, N'Employee Type', N'all', N'all', N'M', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00F9E3BB AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (35, N'Employee Category', N'all', N'all', N'M', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FA0A0D AS DateTime), NULL, NULL)
INSERT [dbo].[sysTwoColumnTables] ([TableID], [TableName], [EntryMode], [RelatedTo], [EntrySystem], [RelatedUserRoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (36, N'Employee Title', N'all', N'all', N'M', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FAB2AF AS DateTime), CAST(0x0000A77C00D54970 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[sysRelatedUserRole]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sysRelatedUserRole](
	[CompanyID] [int] NULL,
	[ModuleID] [int] NULL,
	[RelatedToID] [int] NULL,
	[RelatedToText] [varchar](150) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sysRelatedUserRole] ([CompanyID], [ModuleID], [RelatedToID], [RelatedToText]) VALUES (1, 1, 1, N'Organization')
INSERT [dbo].[sysRelatedUserRole] ([CompanyID], [ModuleID], [RelatedToID], [RelatedToText]) VALUES (1, 1, 2, N'Documents')
INSERT [dbo].[sysRelatedUserRole] ([CompanyID], [ModuleID], [RelatedToID], [RelatedToText]) VALUES (1, 1, 3, N'Employee')
INSERT [dbo].[sysRelatedUserRole] ([CompanyID], [ModuleID], [RelatedToID], [RelatedToText]) VALUES (1, 1, 4, N'User')
INSERT [dbo].[sysRelatedUserRole] ([CompanyID], [ModuleID], [RelatedToID], [RelatedToText]) VALUES (1, 2, 5, N'Cheque')
INSERT [dbo].[sysRelatedUserRole] ([CompanyID], [ModuleID], [RelatedToID], [RelatedToText]) VALUES (1, 1, 6, N'Project')
INSERT [dbo].[sysRelatedUserRole] ([CompanyID], [ModuleID], [RelatedToID], [RelatedToText]) VALUES (1, 2, 7, N'Bank')
INSERT [dbo].[sysRelatedUserRole] ([CompanyID], [ModuleID], [RelatedToID], [RelatedToText]) VALUES (1, 2, 8, N'Voucher')
INSERT [dbo].[sysRelatedUserRole] ([CompanyID], [ModuleID], [RelatedToID], [RelatedToText]) VALUES (1, 2, 9, N'Accounting')
INSERT [dbo].[sysRelatedUserRole] ([CompanyID], [ModuleID], [RelatedToID], [RelatedToText]) VALUES (1, 3, 10, N'Material Transaction')
/****** Object:  Table [dbo].[sysActivitySetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sysActivitySetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[ActivityID] [tinyint] NOT NULL,
	[KnownByID] [tinyint] NOT NULL,
	[ActivityName] [varchar](50) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_sysActivitySetup_1] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[ActivityID] ASC,
	[KnownByID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sysActivitySetup] ([CompanyID], [BranchID], [ActivityID], [KnownByID], [ActivityName], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 1, 10, N'Item requisition', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysActivitySetup] ([CompanyID], [BranchID], [ActivityID], [KnownByID], [ActivityName], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 2, 11, N'PO', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[sysActivitySetup] ([CompanyID], [BranchID], [ActivityID], [KnownByID], [ActivityName], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 3, 12, N'Work Order', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[suDefaultNodeList]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suDefaultNodeList](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[ActivityID] [int] NOT NULL,
	[ActivityName] [varchar](200) NOT NULL,
	[SeqNo] [int] NOT NULL,
	[NodeTypeID] [int] NULL,
	[PNodeTypeID] [int] NOT NULL,
	[FormDescription] [varchar](800) NULL,
	[FormName] [varchar](500) NULL,
	[ShowPosition] [int] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, N'Transaction Page', 20, 11020, 11002, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71B00B1F924 AS DateTime), CAST(0x0000A71B00B24ED4 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Organizational Chart', 21, 110021, 11003, N'', N'~/ModuleName/HRMS/MasterPage/OrganizationalChartForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A73C01006A4A AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'User Permission', 22, 110022, 11014, N'', N'~/ModuleName/Organization/MasterPage/UserPermissionForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A73D00D32AA2 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Employee Setup', 23, 110023, 11003, N'', N'~/ModuleName/HRMS/MasterPage/EmployeeSetupForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A73E00DECDD0 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'User Security Code', 24, 110024, 11014, N'', N'~/ModuleName/Organization/MasterPage/UserSecurityCodeForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A74900D0C1DB AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Subledger Setup', 25, 110025, 11011, N'', N'~/ModuleName/Accounts/MasterPage/SubledgerSetupForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00BD2351 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Journal Voucher', 26, 110026, 11011, N'', N'~/ModuleName/Accounts/MasterPage/JournalVoucherForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00BD739E AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Year Setup', 27, 110027, 11011, N'', N'~/ModuleName/Accounts/MasterPage/YearSetupForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00BDA2D1 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, N'Module Name', 1, 11001, 111, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EC281B AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, N'HRMS', 2, 11002, 11001, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EC5978 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 2, N'Master Page', 3, 11003, 11002, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EC9CF3 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Company Setup', 4, 110004, 11003, N'', N'~//ModuleName/HRMS/MasterPage/CompanySetupForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500ECCB01 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, N'Inventory', 5, 11005, 11001, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500ED068D AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 2, N'Master Page', 6, 11006, 11005, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500ED1A57 AS DateTime), CAST(0x0000A6F500ED34C2 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 3, N'Transaction Page', 7, 11007, 11005, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500ED6296 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Item Category Setup', 8, 110008, 11006, N'', N'~//ModuleName/Inventory/MasterPage/ItemCategorySetupForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500ED9876 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Item Requisition', 9, 110009, 11007, N'', N'~//ModuleName/Inventory/TransactionPage/frmItemRequisition.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EDEB71 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, N'Accounts', 10, 11010, 11001, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EE0ED0 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 2, N'Master Page', 11, 11011, 11010, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EE23FB AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'COAHeadSetup', 12, 110012, 11011, N'', N'~/ModuleName/Accounts/CoaHeadSetup.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EE3CD6 AS DateTime), CAST(0x0000A77D00C4AC66 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 1, N'Organization', 13, 11013, 11001, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EE6B53 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 2, N'Master Page', 14, 11014, 11013, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EE80B0 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Two Column Tables', 15, 110015, 11014, N'', N'~//ModuleName/Organization/MasterPage/TwoColumnTablesForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EEF05F AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Two Column Tables Data', 16, 110016, 11014, N'', N'~//ModuleName/Organization/MasterPage/TwoColumnsTableDataForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EF1B0D AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Two Column Tables Data (Auto)', 17, 110017, 11014, N'', N'~//ModuleName/Organization/MasterPage/TwoColumnsTableDataAutoForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500EF3E8D AS DateTime), CAST(0x0000A70001014BB0 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Default Node List', 18, 110018, 11014, N'', N'~//ModuleName/Organization/MasterPage/NodeListForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F500F060B0 AS DateTime), NULL, NULL)
INSERT [dbo].[suDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 4, N'Create New Company...', 19, 110019, 11014, N'', N'~//ModuleName/Organization/MasterPage/NewCompany.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F50104E489 AS DateTime), CAST(0x0000A7000101A016 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[uEmailTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uEmailTypeSetup](
	[MailtypeID] [varchar](20) NULL,
	[MailTypeTitle] [varchar](100) NULL,
	[MailSubject] [varchar](500) NULL,
	[MailBody] [varchar](max) NULL,
	[IsUserNameWillSend] [varchar](1) NULL,
	[IspAsswordWillSend] [varchar](1) NULL,
	[Status] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[uEmailTypeSetup] ([MailtypeID], [MailTypeTitle], [MailSubject], [MailBody], [IsUserNameWillSend], [IspAsswordWillSend], [Status]) VALUES (N'1', N'SecurityCode', N'Security Code', N'Security Code Value', NULL, NULL, NULL)
/****** Object:  Table [dbo].[uEmailConfigurationSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uEmailConfigurationSetup](
	[ReferenceNo] [int] NOT NULL,
	[MailFrom] [varchar](100) NULL,
	[Passkey] [varchar](250) NULL,
	[SmtpServer] [varchar](150) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[MailtypeID] [varchar](100) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_uEmailConfigurationSetup] PRIMARY KEY CLUSTERED 
(
	[MailtypeID] ASC,
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[uEmailConfigurationSetup] ([ReferenceNo], [MailFrom], [Passkey], [SmtpServer], [DataUsed], [MailtypeID], [CompanyID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1001, N'abdul.hai@link3.net', NULL, N'mailx.link3.net', N'A', N'1', 1, N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A74D00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[uEmailConfigurationSetup] ([ReferenceNo], [MailFrom], [Passkey], [SmtpServer], [DataUsed], [MailtypeID], [CompanyID], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1002, N'abdul.hai@link3.net', NULL, N'mailx.link3.net', N'A', N'1', 5, N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A74D00000000 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[uDefaultNodeList]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uDefaultNodeList](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[ActivityID] [int] NOT NULL,
	[ActivityName] [varchar](200) NOT NULL,
	[SeqNo] [int] NOT NULL,
	[NodeTypeID] [int] NULL,
	[PNodeTypeID] [int] NOT NULL,
	[FormDescription] [varchar](800) NULL,
	[FormName] [varchar](500) NULL,
	[ShowPosition] [int] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
	[UserID] [varchar](8) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 1, N'Transaction Page', 20, 11020, 11002, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, N'160ea939-7633-46a8-ae49-f661d12abfd5', N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 1, N'Module Name', 1, 11001, 111, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 1, N'HRMS', 2, 11002, 11001, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 2, N'Master Page', 3, 11003, 11002, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Company Setup', 4, 110004, 11003, N'', N'~//ModuleName/HRMS/MasterPage/CompanySetupForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 1, N'Inventory', 5, 11005, 11001, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 2, N'Master Page', 6, 11006, 11005, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, N'160ea939-7633-46a8-ae49-f661d12abfd5', N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 3, N'Transaction Page', 7, 11007, 11005, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Item Category Setup', 8, 110008, 11006, N'', N'~//ModuleName/Inventory/MasterPage/ItemCategorySetupForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Item Requisition', 9, 110009, 11007, N'', N'~//ModuleName/Inventory/TransactionPage/frmItemRequisition.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 1, N'Accounts', 10, 11010, 11001, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 2, N'Master Page', 11, 11011, 11010, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'COAHeadSetup', 12, 110012, 11011, N'', N'~//ModuleName/Accounts/CoaHeadSetup.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 1, N'Organization', 13, 11013, 11001, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 2, N'Master Page', 14, 11014, 11013, N'', N'', 0, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Two Column Tables', 15, 110015, 11014, N'', N'~//ModuleName/Organization/MasterPage/TwoColumnTablesForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Two Column Tables Data', 16, 110016, 11014, N'', N'~//ModuleName/Organization/MasterPage/TwoColumnsTableDataForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Two Column Tables Data (Auto)', 17, 110017, 11014, N'', N'~//ModuleName/Organization/MasterPage/TwoColumnsTableDataAutoForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, N'160ea939-7633-46a8-ae49-f661d12abfd5', N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Default Node List', 18, 110018, 11014, N'', N'~//ModuleName/Organization/MasterPage/NodeListForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Create New Company...', 19, 110019, 11014, N'', N'~//ModuleName/Organization/MasterPage/NewCompany.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, N'160ea939-7633-46a8-ae49-f661d12abfd5', N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Organizational Chart', 21, 110021, 11003, N'', N'~/ModuleName/HRMS/MasterPage/OrganizationalChartForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A73C01006A4A AS DateTime), NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'User Permission', 22, 110022, 11014, N'', N'~/ModuleName/Organization/MasterPage/UserPermissionForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A73D00D32AA2 AS DateTime), NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Employee Setup', 23, 110023, 11003, N'', N'~/ModuleName/HRMS/MasterPage/EmployeeSetupForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'User Security Code', 24, 110024, 11014, N'', N'~/ModuleName/Organization/MasterPage/UserSecurityCodeForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Subledger Setup', 25, 110025, 11011, N'', N'~/ModuleName/Accounts/MasterPage/SubledgerSetupForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Journal Voucher', 26, 110026, 11011, N'', N'~/ModuleName/Accounts/MasterPage/JournalVoucherForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
INSERT [dbo].[uDefaultNodeList] ([CompanyID], [BranchID], [ActivityID], [ActivityName], [SeqNo], [NodeTypeID], [PNodeTypeID], [FormDescription], [FormName], [ShowPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [UserID]) VALUES (1, 1, 4, N'Year Setup', 27, 110027, 11011, N'', N'~/ModuleName/Accounts/MasterPage/YearSetupForm.aspx', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL, NULL, N'ADM')
/****** Object:  Table [dbo].[uCompanyWiseUserList]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uCompanyWiseUserList](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[UserNumber] [int] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[uCompanyWiseUserList] ([CompanyID], [BranchID], [UserNumber], [UserID]) VALUES (1, 0, 1, N'ece56edf-c6cc-489a-8333-1315155aa265')
INSERT [dbo].[uCompanyWiseUserList] ([CompanyID], [BranchID], [UserNumber], [UserID]) VALUES (2, 0, 2, N'ece56edf-c6cc-489a-8333-1315155aa265')
INSERT [dbo].[uCompanyWiseUserList] ([CompanyID], [BranchID], [UserNumber], [UserID]) VALUES (1, 0, 1, N'04026126-5f4c-4565-a488-67d9f606050e')
/****** Object:  Table [dbo].[uApplications]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uApplications](
	[ApplicationName] [nvarchar](235) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfPersonSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypeOfPersonSetup](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[PersonTypeID] [tinyint] NOT NULL,
	[PersonType] [varchar](30) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TypeOfPersonSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[PersonTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TypeOfPersonSetup] ([CompanyID], [BranchID], [PersonTypeID], [PersonType], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 1, N'Client', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[TypeOfPersonSetup] ([CompanyID], [BranchID], [PersonTypeID], [PersonType], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 2, N'Supplier', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[TypeOfPersonSetup] ([CompanyID], [BranchID], [PersonTypeID], [PersonType], [DataUsed], [EntryDate], [EntryUserID], [ModifiedDate], [ModifiedUserID]) VALUES (1, 0, 3, N'Employee', N'A', CAST(0x0000A68C00000000 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
/****** Object:  Table [dbo].[TwoColumnsTableAuto]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TwoColumnsTableAuto](
	[TableID] [int] NOT NULL,
	[FieldOfID] [varchar](35) NOT NULL,
	[FieldOfName] [varchar](50) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TwoColumnsTableAuto] PRIMARY KEY CLUSTERED 
(
	[TableID] ASC,
	[FieldOfID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'100301', N'Male', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75700FE395F AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'100302', N'Female', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75700FE3967 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (12, N'100701', N'Savings Account', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E901295A1D AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (12, N'100702', N'Current Account ', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E901295A1D AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (12, N'100703', N'Short Term Deposit Account', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E901295A1E AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (12, N'100704', N'Fixed Depsit Receipt Account', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E901295A1E AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (12, N'100705', N'Loans & Advance Account', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E901295A1E AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (14, N'101001', N'Active', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00EE7D19 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (14, N'101002', N'Inactive', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00EE7D19 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100801', N'Agrani Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D22 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100802', N'BASIC Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D22 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100803', N'Janata Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D22 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100804', N'Rupali Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100805', N'Sonali Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100806', N'Bangladesh Development Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100807', N'Bangladesh Krishi Bank', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100808', N'Rajshahi Krishi Unnayan Bank (RAKUB)', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100809', N'Shimanto bank', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100810', N'Palli Sanchay Bank', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100811', N'Private Commercial Banks[edit]', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100812', N'Conventional Commercial Banks', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100813', N'AB Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100814', N'Bangladesh Commerce Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100815', N'Bank Asia Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100816', N'BRAC Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100817', N'City Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100818', N'Dhaka Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100819', N'Dutch-Bangla Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100820', N'Eastern Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100821', N'IFIC Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100822', N'Jamuna Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100823', N'Meghna Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100824', N'Mercantile Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100825', N'Midland Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100826', N'Modhumoti Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100827', N'Mutual Trust Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100828', N'National Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D23 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100829', N'National Credit & Commerce Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100830', N'NRB Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100831', N'NRB Commercial Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100832', N'NRB Global Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100833', N'One Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100834', N'Premier Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100835', N'Prime Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100836', N'Pubali Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100837', N'South Bangla Agriculture & Commerce Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100838', N'Southeast Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100839', N'Standard Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D24 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100840', N'The Farmers Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100841', N'Trust Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100842', N'United Commercial Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100843', N'Uttara Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100844', N'Islamic Shariah based Commercial Banks', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100845', N'Al-Arafah Islami Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100846', N'EXIM Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100847', N'First Security Islami Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100848', N'ICB Islamic Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100849', N'Islami Bank Bangladesh Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100850', N'Shahjalal Islami Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100851', N'Social Islami Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100852', N'Union Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100853', N'Foreign Commercial Banks[edit]', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100854', N'Bank Al-Falah Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100855', N'Citibank N.A', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100856', N'Commercial Bank of Ceylon PLC', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100857', N'Habib Bank Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100858', N'National Bank of Pakistan', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D29 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100859', N'Standard Chartered Bank', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D2A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100860', N'State Bank of India', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D2A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100861', N'Hong Kong and Shanghai Banking Corporation Limited', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D2A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (16, N'100862', N'Woori Bank', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B67D2A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (18, N'101301', N'Cash', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75700FD6FFE AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (18, N'101302', N'Cheque', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75700FD7005 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (18, N'101303', N'Credit Card', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75700FD7005 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (18, N'101304', N'Bank Deposit', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75700FD7005 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (18, N'101305', N'Bank transfer', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75700FD7005 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (18, N'101306', N'bKash', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75700FD7005 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (18, N'101307', N'Q- cash', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75700FD7005 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (18, N'101308', N'Rocket', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75700FD7005 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (19, N'101401', N'Sold', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B63642 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (19, N'101402', N'Rented', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B63644 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (19, N'101403', N'Un deliverd', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6364F AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (19, N'101404', N'Full Delivered', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6364F AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (19, N'101405', N'Partial Delivered', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6364F AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (19, N'101406', N'Order Cancelled', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6364F AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100101', N'Aerospace', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3224 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100102', N'Automotive', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100103', N'Banking', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100104', N'Buying House', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100105', N'Cement', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100106', N'Ceramics Sector', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100107', N'Chemical and petroleum', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100108', N'Construction', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100109', N'Consumer products', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100110', N'Cyber Cafe', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100111', N'Data Entry', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100112', N'Defense', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100113', N'Donor Agency', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100114', N'Education', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100115', N'Electronics', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100116', N'Energy and utilities', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3229 AS DateTime), NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100117', N'Engineering', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE322A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100118', N'Financial Institutions', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE322A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100119', N'Food & Allied', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3230 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100120', N'Garments Industry', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3230 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100121', N'Government', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3230 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100122', N'Healthcare', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3230 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100123', N'Hotel', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3230 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100124', N'Insurance', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3230 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100125', N'ISP', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3230 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100126', N'IT Enabled Service', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100127', N'IT Sector', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100128', N'Jute', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100129', N'Leasing', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100130', N'Life Sciences', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100131', N'Media and Entertainment', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100132', N'Mineral Resources', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100133', N'Miscellaneous', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100134', N'Newspaper', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100135', N'NGO', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100136', N'Online Seller', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100137', N'Paper & Printing', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100138', N'Pharmaceuticals & Chemicals', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100139', N'Radio Station', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100140', N'Real Estate & Housing', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3231 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100141', N'Retail', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3232 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100142', N'Software Development', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3232 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100143', N'Tannery Industries', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3232 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100144', N'Telecommunication', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3232 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100145', N'Television Channel', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3232 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100146', N'Textile', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3232 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (20, N'100147', N'Travel & Leisure', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6F900BE3232 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100201', N'Sole Proprietorship', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B68159 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100202', N'General Partnership', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B68159 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100203', N'Limited Partnership', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100204', N'Private Limited Company', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100205', N'Public Limited Company', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100206', N'Corporation', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100207', N'Nonprofit Corporation', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100208', N'Trust', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100209', N'Joint Venture', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100210', N'Association', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100211', N'Society', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100212', N'Limited Liability Company (LLC)', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100213', N'Limited Liability Partnership (LLP)', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (21, N'100214', N'Limited Liability Limited Partnership (LLLP)', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6EA00B6815A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (23, N'100231', N'DHAKA', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC010EE4F5 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (23, N'100232', N'FARIDPUR', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC010EE4F5 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (24, N'100241', N'DHAKA', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71A00D6EADD AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (24, N'100242', N'RAJSHAHI', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71A00D6EADD AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (36, N'100361', N'Mr.', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FE9C60 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (36, N'100362', N'Ms.', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FE9C61 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (36, N'100363', N'Mrs.', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FE9C61 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (36, N'100364', N'Dr.', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FE9C61 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTableAuto] ([TableID], [FieldOfID], [FieldOfName], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (36, N'100365', N'Prof.', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FE9C61 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[TwoColumnsTable]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TwoColumnsTable](
	[CompanyID] [tinyint] NOT NULL,
	[BranchID] [tinyint] NOT NULL,
	[TableID] [int] NOT NULL,
	[FieldOfID] [varchar](35) NOT NULL,
	[FieldOfName] [varchar](50) NULL,
	[FieldDescription] [varchar](35) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TwoColumnsTable] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[TableID] ASC,
	[FieldOfID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 5, N'1150001', N'testOfficelocationType01', N'testOfficelocationType01', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E300BB4D4C AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 5, N'1150002', N'testOfficelocationType02', N'testOfficelocationType02U', N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E300BB813A AS DateTime), CAST(0x0000A6E300BBB2CD AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 6, N'1160001', N'testDepartment9', N'testDepartment', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6E300BB33CF AS DateTime), CAST(0x0000A7000100E4F6 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 6, N'116002', N'testDepartment2', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00BA6578 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 22, N'1122001', N'Assistant Service Engineer', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00F11C8A AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 22, N'1122002', N'Director', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00F12E59 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 22, N'1122003', N'General Manager', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A6FC00F13BD9 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 25, N'1125001', N'Role Type 1', N'Role Type 1 description', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A73E00DC2D03 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 25, N'1125002', N'Role Type 2', N'Role Type 2 description', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A73E00DC5291 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 26, N'1126001', N'Vehicle Type1', N'Vehicle Type1 Description', N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A757010A6843 AS DateTime), CAST(0x0000A757011B25B9 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 26, N'1126002', N'Vehicle Type2', N'Vehicle Type2 Description', N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A757011BF65B AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 27, N'1127001', N'Vehicle Category1', N'Vehicle Category1 Description', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75800B8406E AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 28, N'1128001', N'Vehicle Transmission1', N'Vehicle Transmission1 Description', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75800B851E0 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 29, N'1129001', N'Vehicle Body Type1', N'Vehicle Body Type Description', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75800B7D411 AS DateTime), CAST(0x0000A75800B82076 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 30, N'1130001', N'Registration Card', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00EB039B AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 30, N'1130002', N'Tax Token', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00EB0BA9 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 30, N'1130003', N'Fitness', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00EB14C6 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 31, N'1131001', N'Pool', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00F474F0 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 31, N'1131002', N'Private etc', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00F4A893 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 32, N'1132001', N'Permanent', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00F51E43 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 32, N'1132002', N'Casual', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00F52F1F AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 33, N'1133001', N'Driver Photo ID Type1', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00F5E76F AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 33, N'1133002', N'Driver Photo ID Type2', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00F5F23E AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 34, N'1134001', N'Casual', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FB081D AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 34, N'1134002', N'Permanent', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FB1615 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 35, N'1135001', N'Officer', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FB40C6 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 35, N'1135002', N'Staff', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FB4FAB AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 35, N'1135003', N'Worker', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77B00FB66E7 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 36, N'1136001', N'Eng.', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77C00D78A46 AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 36, N'1136002', N'Mr.', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77C00D7F90F AS DateTime), NULL, NULL)
INSERT [dbo].[TwoColumnsTable] ([CompanyID], [BranchID], [TableID], [FieldOfID], [FieldOfName], [FieldDescription], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, 36, N'1136003', N'Mrs.', N'', N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77C00D807E3 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[uUserProfile]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uUserProfile](
	[UserProfileID] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NULL,
	[PasswordSalt] [nvarchar](128) NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [varchar](256) NULL,
	[LoweredEmail] [varchar](256) NULL,
	[Title] [varchar](6) NULL,
	[FirstName] [varchar](35) NULL,
	[MiddleName] [varchar](35) NULL,
	[LastName] [varchar](35) NULL,
	[DisplayName] [varchar](35) NULL,
	[DateOfBirth] [datetime] NULL,
	[PasswordQuestion] [varchar](256) NULL,
	[PasswordAnswer] [varchar](128) NULL,
	[IsApproved] [bit] NULL,
	[IsLockedOut] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[LastPasswordChangedDate] [datetime] NULL,
	[LastLockoutDate] [datetime] NULL,
	[FailedPasswordAttemptCount] [int] NULL,
	[FailedPasswordAnswerAttemptCount] [int] NULL,
	[Comment] [ntext] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
	[NextLockOutDate] [datetime] NULL,
	[SecurityCode] [varchar](10) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[uUserProfile] ([UserProfileID], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [Title], [FirstName], [MiddleName], [LastName], [DisplayName], [DateOfBirth], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAnswerAttemptCount], [Comment], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [NextLockOutDate], [SecurityCode]) VALUES (N'b649f7c8-80a7-4b80-ab8d-2f8638826227', N'123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A75B00E9EEFB AS DateTime), CAST(0x0000A75B00E9EEFB AS DateTime), NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(0x0000A75B00E9EEFB AS DateTime), NULL, NULL, NULL, N'10001')
INSERT [dbo].[uUserProfile] ([UserProfileID], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [Title], [FirstName], [MiddleName], [LastName], [DisplayName], [DateOfBirth], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAnswerAttemptCount], [Comment], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [NextLockOutDate], [SecurityCode]) VALUES (N'698a7bfc-ac9c-4371-af75-968c8a8ffdaf', N'123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A7AF010F1CFD AS DateTime), CAST(0x0000A7AF010F1CFD AS DateTime), NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(0x0000A7AF010F1CFD AS DateTime), NULL, NULL, NULL, N'50011')
INSERT [dbo].[uUserProfile] ([UserProfileID], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [Title], [FirstName], [MiddleName], [LastName], [DisplayName], [DateOfBirth], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAnswerAttemptCount], [Comment], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID], [NextLockOutDate], [SecurityCode]) VALUES (N'ab75c57d-a48e-438c-b3dd-5f5cca748c52', N'123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A7AF010FF0F8 AS DateTime), CAST(0x0000A7AF010FF0F8 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'A', NULL, CAST(0x0000A7AF010FF0F8 AS DateTime), NULL, NULL, NULL, N'50012')
/****** Object:  Table [dbo].[uUserList]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uUserList](
	[UserID] [uniqueidentifier] NULL,
	[UserTypeID] [int] NULL,
	[UserProfileID] [uniqueidentifier] NULL,
	[UserName] [varchar](35) NOT NULL,
	[IsAnonymous] [varchar](50) NULL,
	[LastActivityDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[uUserList] ([UserID], [UserTypeID], [UserProfileID], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'ece56edf-c6cc-489a-8333-1315155aa265', NULL, N'b649f7c8-80a7-4b80-ab8d-2f8638826227', N'EMP101', NULL, NULL)
INSERT [dbo].[uUserList] ([UserID], [UserTypeID], [UserProfileID], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'04026126-5f4c-4565-a488-67d9f606050e', NULL, N'698a7bfc-ac9c-4371-af75-968c8a8ffdaf', N'EMP101', NULL, NULL)
INSERT [dbo].[uUserList] ([UserID], [UserTypeID], [UserProfileID], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'146194e5-c634-44a3-811d-ce9986b2cb29', NULL, N'ab75c57d-a48e-438c-b3dd-5f5cca748c52', N'EMP102', NULL, NULL)
/****** Object:  Table [dbo].[UserSecurityCode]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserSecurityCode](
	[CompanyID] [int] NOT NULL,
	[EmployeeID] [varchar](8) NOT NULL,
	[SecurityCode] [int] NOT NULL,
	[SecurityCodeStatus] [int] NOT NULL,
	[SequenceNo] [int] NOT NULL,
	[SerialNo] [int] NULL,
	[DataUsed] [varchar](1) NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
	[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'L3T101', 10001, 1, 1, 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75B00E9AA47 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A75B00E9EEFB AS DateTime))
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'emp002', 10002, 0, 1, 2, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7AE011D5FA7 AS DateTime), NULL, NULL)
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (1, N'emp002', 10003, 0, 2, 3, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7AE011D6A11 AS DateTime), NULL, NULL)
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'L3T101', 50004, 0, 1, 4, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D42436 AS DateTime), NULL, NULL)
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'L3T101', 50005, 0, 2, 5, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D42F81 AS DateTime), NULL, NULL)
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'L3T101', 50011, 1, 8, 11, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00FCD7D3 AS DateTime), N'698a7bfc-ac9c-4371-af75-968c8a8ffdaf', CAST(0x0000A7AF010F1CFD AS DateTime))
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'L3T101', 50006, 0, 3, 6, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D44C34 AS DateTime), NULL, NULL)
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'L3T101', 50007, 0, 4, 7, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00F04D88 AS DateTime), NULL, NULL)
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'L3T101', 50008, 0, 5, 8, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00F05D55 AS DateTime), NULL, NULL)
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'L3T101', 50009, 0, 6, 9, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00F125B7 AS DateTime), NULL, NULL)
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'L3T101', 50010, 0, 7, 10, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00F16956 AS DateTime), NULL, NULL)
INSERT [dbo].[UserSecurityCode] ([CompanyID], [EmployeeID], [SecurityCode], [SecurityCodeStatus], [SequenceNo], [SerialNo], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateUserID], [LastUpdateDate]) VALUES (5, N'EMP102', 50012, 1, 1, 12, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF010F7CA6 AS DateTime), N'ab75c57d-a48e-438c-b3dd-5f5cca748c52', CAST(0x0000A7AF010FF0F8 AS DateTime))
/****** Object:  Table [dbo].[Users]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'd392c5cd-5048-4be3-9ba8-16fb100c2613', N'2290be75-65ce-496d-b4a8-776524805756', N'l3t717', 0, CAST(0x0000A731005AE7F5 AS DateTime))
INSERT [dbo].[Users] ([ApplicationId], [UserId], [UserName], [IsAnonymous], [LastActivityDate]) VALUES (N'd392c5cd-5048-4be3-9ba8-16fb100c2613', N'fc91738f-efff-4e4e-aa31-aadd550ed78d', N'l3t716', 0, CAST(0x0000A731005E6535 AS DateTime))
/****** Object:  Table [dbo].[uRoleWiseActivities]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uRoleWiseActivities](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[ActivityID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[uRoleTypeSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uRoleTypeSetup](
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[RoleTypeID] [int] NOT NULL,
	[RoleType] [varchar](200) NULL,
	[Description] [varchar](50) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[uRoleSetupDetails]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uRoleSetupDetails](
	[RoleID] [int] NOT NULL,
	[NodeID] [varchar](800) NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'111', N'A', CAST(0x0000A78C00C30CC2 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'11001', N'A', CAST(0x0000A78C00C30CC2 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'11002', N'A', CAST(0x0000A78C00C30CC3 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'11020', N'A', CAST(0x0000A78C00C30CC3 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'11003', N'A', CAST(0x0000A78C00C30CC4 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'110004', N'A', CAST(0x0000A78C00C30CC4 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'110021', N'A', CAST(0x0000A78C00C30CC5 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'110023', N'A', CAST(0x0000A78C00C30CC6 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'111', N'A', CAST(0x0000A75B00E981F9 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'11001', N'A', CAST(0x0000A75B00E981F9 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'11013', N'A', CAST(0x0000A75B00E981F9 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'11014', N'A', CAST(0x0000A75B00E981F9 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'110015', N'A', CAST(0x0000A75B00E981FA AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'110016', N'A', CAST(0x0000A75B00E981FA AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'110017', N'A', CAST(0x0000A75B00E981FA AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'110018', N'A', CAST(0x0000A75B00E981FA AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'110019', N'A', CAST(0x0000A75B00E981FA AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'110022', N'A', CAST(0x0000A75B00E981FA AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'110024', N'A', CAST(0x0000A75B00E981FA AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'111', N'A', CAST(0x0000A7610124D6AD AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'11001', N'A', CAST(0x0000A7610124D6B1 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'11002', N'A', CAST(0x0000A7610124D6B2 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'11020', N'A', CAST(0x0000A7610124D6B5 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'11003', N'A', CAST(0x0000A7610124D6B7 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'110004', N'A', CAST(0x0000A7610124D6B7 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'11005', N'A', CAST(0x0000A7610124D6B8 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'11006', N'A', CAST(0x0000A7610124D6B8 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'110008', N'A', CAST(0x0000A7610124D6B8 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'111', N'A', CAST(0x0000A78C00C2D868 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'11001', N'A', CAST(0x0000A78C00C2D86B AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'11010', N'A', CAST(0x0000A78C00C2D870 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'11011', N'A', CAST(0x0000A78C00C2D873 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'110012', N'A', CAST(0x0000A78C00C2D874 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'110025', N'A', CAST(0x0000A78C00C2D876 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'110026', N'A', CAST(0x0000A78C00C2D879 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'110027', N'A', CAST(0x0000A78C00C2D87A AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'111', N'A', CAST(0x0000A7AF00BDB7F9 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'11001', N'A', CAST(0x0000A7AF00BDB7FA AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'11002', N'A', CAST(0x0000A7AF00BDB802 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'11020', N'A', CAST(0x0000A7AF00BDB802 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'11003', N'A', CAST(0x0000A7AF00BDB803 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'110004', N'A', CAST(0x0000A7AF00BDB803 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'110021', N'A', CAST(0x0000A7AF00BDB804 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'110023', N'A', CAST(0x0000A7AF00BDB809 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, N'111', N'A', CAST(0x0000A7AF00BDD631 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, N'11001', N'A', CAST(0x0000A7AF00BDD643 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, N'11005', N'A', CAST(0x0000A7AF00BDD655 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, N'11006', N'A', CAST(0x0000A7AF00BDD66F AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, N'110008', N'A', CAST(0x0000A7AF00BDD68E AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, N'11007', N'A', CAST(0x0000A7AF00BDD6AD AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, N'110009', N'A', CAST(0x0000A7AF00BDD6BD AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'111', N'A', CAST(0x0000A7AF00BDF8FB AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'11001', N'A', CAST(0x0000A7AF00BDF8FB AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'11013', N'A', CAST(0x0000A7AF00BDF8FC AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'11014', N'A', CAST(0x0000A7AF00BDF8FC AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'110015', N'A', CAST(0x0000A7AF00BDF8FD AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'110016', N'A', CAST(0x0000A7AF00BDF8FD AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'110017', N'A', CAST(0x0000A7AF00BDF8FD AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'110018', N'A', CAST(0x0000A7AF00BDF8FE AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'110019', N'A', CAST(0x0000A7AF00BDF8FE AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'110022', N'A', CAST(0x0000A7AF00BDF8FF AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'110024', N'A', CAST(0x0000A7AF00BDF8FF AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'111', N'A', CAST(0x0000A7AF00D24432 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'11001', N'A', CAST(0x0000A7AF00D24433 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'11002', N'A', CAST(0x0000A7AF00D24433 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'11020', N'A', CAST(0x0000A7AF00D24434 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'11003', N'A', CAST(0x0000A7AF00D24434 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'110004', N'A', CAST(0x0000A7AF00D24434 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'110021', N'A', CAST(0x0000A7AF00D24435 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetupDetails] ([RoleID], [NodeID], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'110023', N'A', CAST(0x0000A7AF00D24435 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
/****** Object:  Table [dbo].[uRoleSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uRoleSetup](
	[CompanyID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[RoleTypeID] [varchar](35) NOT NULL,
	[RoleName] [varchar](256) NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[uRoleSetup] ([CompanyID], [RoleID], [RoleTypeID], [RoleName], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 1, N'1125001', N'HRM', N'A', CAST(0x0000A759010440B0 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C30CC1 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227')
INSERT [dbo].[uRoleSetup] ([CompanyID], [RoleID], [RoleTypeID], [RoleName], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 2, N'1125002', N'Organization', N'A', CAST(0x0000A7590105DB44 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetup] ([CompanyID], [RoleID], [RoleTypeID], [RoleName], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 3, N'1125001', N'HRM ADM', N'A', CAST(0x0000A75B01190C02 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetup] ([CompanyID], [RoleID], [RoleTypeID], [RoleName], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 4, N'1125001', N'Account Administrator', N'A', CAST(0x0000A77D00C50C10 AS DateTime), N'b649f7c8-80a7-4b80-ab8d-2f8638826227', NULL, NULL)
INSERT [dbo].[uRoleSetup] ([CompanyID], [RoleID], [RoleTypeID], [RoleName], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, 5, N'1125001', N'HRM', N'A', CAST(0x0000A7AF00BDB7F5 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetup] ([CompanyID], [RoleID], [RoleTypeID], [RoleName], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, 6, N'1125002', N'Inventory', N'A', CAST(0x0000A7AF00BDD614 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetup] ([CompanyID], [RoleID], [RoleTypeID], [RoleName], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, 7, N'1125001', N'Organization', N'A', CAST(0x0000A7AF00BDF8FA AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
INSERT [dbo].[uRoleSetup] ([CompanyID], [RoleID], [RoleTypeID], [RoleName], [DataUsed], [EntryDate], [EntryUserID], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 8, N'1125001', N'HRM', N'A', CAST(0x0000A7AF00D24431 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, NULL)
/****** Object:  Table [dbo].[xSysYearSetup]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xSysYearSetup](
	[YearOpeningID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[BeginningYear] [datetime] NOT NULL,
	[EndingYear] [datetime] NOT NULL,
	[YearOpenBy] [varchar](50) NULL,
	[YearClosedBy] [varchar](50) NULL,
	[YearOpen] [bit] NOT NULL,
	[YearClosingDate] [datetime] NOT NULL,
	[UseChartOfAccNo] [int] NULL,
	[EntryDate] [datetime] NULL,
	[EntryUserID] [int] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUser] [varchar](25) NULL,
	[Dataused] [varchar](1) NULL,
 CONSTRAINT [PK_SysYearSetup] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[BranchID] ASC,
	[BeginningYear] ASC,
	[EndingYear] ASC,
	[YearOpeningID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orgStandardOrgElements]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orgStandardOrgElements](
	[OrgElementID] [tinyint] NOT NULL,
	[OrgElementName] [varchar](30) NOT NULL,
	[HierarchyID] [tinyint] NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_comStandardOrgElements] PRIMARY KEY CLUSTERED 
(
	[OrgElementID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[orgStandardOrgElements] ([OrgElementID], [OrgElementName], [HierarchyID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'Branch', 2, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71200000000 AS DateTime), NULL, NULL)
INSERT [dbo].[orgStandardOrgElements] ([OrgElementID], [OrgElementName], [HierarchyID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, N'Department', 3, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71200000000 AS DateTime), NULL, NULL)
INSERT [dbo].[orgStandardOrgElements] ([OrgElementID], [OrgElementName], [HierarchyID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'Section', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71200000000 AS DateTime), NULL, NULL)
INSERT [dbo].[orgStandardOrgElements] ([OrgElementID], [OrgElementName], [HierarchyID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (8, N'Team', 5, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A71200000000 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[uUsersInRoles]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uUsersInRoles](
	[CompanyID] [int] NOT NULL,
	[UserId] [varchar](8) NOT NULL,
	[RoleTypeID] [varchar](35) NULL,
	[RoleID] [int] NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75A00EE5620 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125002', 2, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75A00EE9DC4 AS DateTime), CAST(0x0000A75B00EACB1A AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75B00EAA263 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125002', 2, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75B0118A9C4 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75B01191C04 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A767010AF7ED AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A767010AF7ED AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A767010CF641 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A767010CF641 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114DBA9 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114DBA9 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F285 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F285 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800B5D78F AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800B5D78F AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800B5F9D5 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800B5F9D5 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800B656B6 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800B656B6 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E3746C AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E3746C AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E46BDA AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E46BDA AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E48ACD AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E48ACD AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E4B493 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E4B493 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E54B68 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E54B68 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EC512A AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EC512A AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800ED6C33 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800ED6C35 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EE9E60 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EE9E60 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EEC364 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EEC364 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76801132796 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A768011327A4 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CD AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CD AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', N'1125001', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60502 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', N'1125001', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60503 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13C AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13D AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13D AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'L3T101', N'1125001', 7, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00BE120F AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'L3T101', N'1125001', 8, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D25A19 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRoles] ([CompanyID], [UserId], [RoleTypeID], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', N'1125001', 3, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A75B01191C04 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
/****** Object:  Table [dbo].[uUsersInRelatedRoles]    Script Date: 07/18/2017 10:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[uUsersInRelatedRoles](
	[CompanyID] [int] NOT NULL,
	[UserId] [varchar](8) NOT NULL,
	[RoleID] [int] NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 9, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A767010AF7ED AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A767010CF641 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 5, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A767010CF641 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114DBA9 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 9, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F285 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F285 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 5, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F285 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 2, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F285 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 3, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F286 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 10, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F286 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 1, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F286 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 6, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F286 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 4, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F286 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 8, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7670114F28D AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 9, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800B5F9D5 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800B656B6 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E3746E AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E3746E AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E48ACD AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E4B493 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 4, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E4B494 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800E54B68 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EC512B AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EC512B AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800ED6C35 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800ED6C35 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 4, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800ED6C35 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EE9E60 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EEC364 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 4, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A76800EEC364 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A768011327A4 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 4, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A768011327A4 AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 9, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CD AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CD AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 5, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CD AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 2, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CE AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 3, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CE AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 10, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CE AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 1, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CE AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 6, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CE AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 4, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CE AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 8, N'I', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77A011E01CE AS DateTime), CAST(0x0000A78C00C3D139 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', 9, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60503 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', 7, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60503 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', 5, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60503 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', 2, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60503 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', 3, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60503 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', 10, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60504 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60504 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', 6, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60504 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60504 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'EMP101', 8, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A77D00C60504 AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 9, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13D AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 7, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13D AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 5, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13D AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 2, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13D AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 3, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13D AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 10, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13D AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13D AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 6, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13E AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 4, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13E AS DateTime), NULL, NULL)
INSERT [dbo].[uUsersInRelatedRoles] ([CompanyID], [UserId], [RoleID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, N'L3T101', 8, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A78C00C3D13E AS DateTime), NULL, NULL)
/****** Object:  StoredProcedure [dbo].[uUserRegistration]    Script Date: 07/18/2017 10:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uUserRegistration]
(
	@Password		VARCHAR(128),
	@SecurityCode	VARCHAR(10),
	@UserName		VARCHAR(35)
	
)
AS
BEGIN 
DECLARE @UserProfileID UNIQUEIDENTIFIER
SET @UserProfileID = NEWID() 

INSERT INTO [uUserProfile]
           ([UserProfileID]
           ,[Password]
           ,[CreateDate]
           ,[LastLoginDate]
           ,[DataUsed]
           ,[EntryDate]
           ,[SecurityCode])
     VALUES
           (
           @UserProfileID,
           @Password,
           CAST(GETDATE() AS DateTime),
           CAST(GETDATE() AS DateTime),
           'A',
           CAST(GETDATE() AS DateTime),
           @SecurityCode
           )
INSERT INTO uUserList
			(
			UserProfileID,
			UserName
			)
			VALUES
			(
			@UserProfileID,
			@UserName
			)   
UPDATE UserSecurityCode SET 
			SecurityCodeStatus = 1,
			LastUpdateUserID = @UserProfileID,
			LastUpdateDate =  CAST(GETDATE() AS DateTime)
			WHERE SecurityCode = @SecurityCode			        
           END
GO
/****** Object:  View [dbo].[orgSection]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[orgSection] as SELECT [CompanyID]
                          ,[ParentEntityID]
                          ,[EntityID]      
                          ,[AddressTag]
                          ,[AddressID]
                          ,[EntityName]
                          ,[ShortName]
                          ,[DisplayName]
                          ,[GroupEmailAddress]
                          ,[HeadID]
                          ,[EntityCategoryID]
                          ,[EntityOpeningDate]
                          ,[DataUsed]
                          ,[EntryUserID]
                          ,[EntryDate]
                          ,[LastUpdateDate]
                          ,[LastUpdateUserID]
                      FROM [orgOrganizationalChartSetup] WHERE [EntityTypeID] = 7
GO
/****** Object:  Table [dbo].[orgOrganizationElements]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orgOrganizationElements](
	[CompanyID] [int] NOT NULL,
	[OrgElementID] [tinyint] NOT NULL,
	[DataUsed] [varchar](1) NOT NULL,
	[EntryUserID] [uniqueidentifier] NOT NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 5, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7180114B63E AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 6, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7180114B649 AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 7, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7180114B64B AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 8, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7180114B64C AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 5, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, CAST(0x0000A71901090E81 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 6, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, CAST(0x0000A71901090E88 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 7, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, CAST(0x0000A71901090E8A AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 5, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, CAST(0x0000A7760129CDF1 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 6, N'I', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, CAST(0x0000A7760129CDF4 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 5, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, CAST(0x0000A7A701048FE4 AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 6, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, CAST(0x0000A7A701048FEB AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 7, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, CAST(0x0000A7A701048FEC AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (1, 8, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', NULL, CAST(0x0000A7A701048FEC AS DateTime), N'160ea939-7633-46a8-ae49-f661d12abfd5')
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 5, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D27521 AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 6, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D27527 AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 7, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D27527 AS DateTime), NULL, NULL)
INSERT [dbo].[orgOrganizationElements] ([CompanyID], [OrgElementID], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 8, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D27528 AS DateTime), NULL, NULL)
/****** Object:  View [dbo].[VehicleUsedAs]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VehicleUsedAs] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 31
GO
/****** Object:  View [dbo].[VehicleType]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VehicleType] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 26
GO
/****** Object:  View [dbo].[VehicleTransmission]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VehicleTransmission] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 28
GO
/****** Object:  View [dbo].[VehicleDriverType]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VehicleDriverType] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 32
GO
/****** Object:  View [dbo].[VehicleDriverPhotoIDType]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VehicleDriverPhotoIDType] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 33
GO
/****** Object:  View [dbo].[VehicleDocuments]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VehicleDocuments] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 30
GO
/****** Object:  View [dbo].[VehicleCategory]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VehicleCategory] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 27
GO
/****** Object:  View [dbo].[VehicleBodyType]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VehicleBodyType] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 29
GO
/****** Object:  StoredProcedure [dbo].[Update_accCOAHeadSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_accCOAHeadSetup]
		(
		@AccountNo				INT,		
		@AccountTypeID			INT,
		@AccountName			VARCHAR(40),		
		@AccountDescription		VARCHAR(500),		
		@CompanyID				INT,
		@BranchID				INT,
		@IsBudgetRelated		BIT,
		@AnalysisRequired		VARCHAR(1),
		@EntryUserName		VARCHAR(50)		
		)
AS
BEGIN
DECLARE @EntryUserID uniqueidentifier
SET @EntryUserID = '160ea939-7633-46a8-ae49-f661d12abfd5'
UPDATE accCOAHeadSetup SET 
		AccountTypeID = ISNULL( @AccountTypeID,AccountTypeID),
		AccountName = ISNULL( @AccountName,AccountName),
		AccountDescription = ISNULL( @AccountDescription,AccountDescription),
		LastUpdateDate = GETDATE(),
		CompanyID = ISNULL( @CompanyID,CompanyID),
		BranchID = ISNULL( @BranchID,BranchID),
		IsBudgetRelated = ISNULL( @IsBudgetRelated,IsBudgetRelated),
		AnalysisRequired = ISNULL( @AnalysisRequired,AnalysisRequired),
		LastUpdateUserID = ISNULL( @EntryUserID,LastUpdateUserID)
		WHERE AccountNo = @AccountNo

UPDATE accAccNoWiseSubHeadSetup SET 
		DataUsed = 'N'
		WHERE AccountCode = @AccountNo	
	
END
GO
/****** Object:  StoredProcedure [dbo].[Update_accAccNoWiseSubHeadSetupTem]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_accAccNoWiseSubHeadSetupTem]
		(
		@CompanyID			TINYINT,
		@BranchID			INT,
		@AccountCode		INT,
		@SubledgerTypeID	VARCHAR(5),
		@SubLedgerID		VARCHAR(10),		
		@EntryUserID		VARCHAR(5)
		)
AS
BEGIN
UPDATE accAccNoWiseSubHeadSetup SET 
		CompanyID = ISNULL(@CompanyID,CompanyID),
		BranchID = ISNULL(@BranchID,BranchID) ,
		SubledgerTypeID = ISNULL( @SubledgerTypeID,SubledgerTypeID),
		SubLedgerID = ISNULL( @SubLedgerID,SubLedgerID),
		BalanceCheck =  'N',
		DataUsed = 'Y',
		LastUpdateUserID = NEWID(),
		LastUpdateDate = GETDATE()
		WHERE AccountCode = @AccountCode
	END
GO
/****** Object:  StoredProcedure [dbo].[Update_accAccNoWiseSubHeadSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_accAccNoWiseSubHeadSetup]
		(
		@CompanyID			TINYINT,
		@BranchID			INT,
		@AccountCode		INT,
		@SubledgerTypeID	VARCHAR(5),
		@SubLedgerID		VARCHAR(10),		
		@EntryUserID		VARCHAR(5)
		)
AS
BEGIN
DECLARE @SubLineNo			INT
SET @SubLineNo = (SELECT ISNULL( MAX(SubLineNo),0)+1 AS SubLineNo  FROM accAccNoWiseSubHeadSetup)		
	INSERT INTO accAccNoWiseSubHeadSetup 
		(
		CompanyID,
		BranchID,
		AccountCode,
		SubledgerTypeID,
		SubLedgerID,
		SubLineNo,
		BalanceCheck,
		DataUsed,
		LastUpdateUserID,
		LastUpdateDate
		) 
		VALUES 
		(
		@CompanyID,
		@BranchID,
		@AccountCode,
		@SubledgerTypeID,
		@SubLedgerID,
		@SubLineNo,
		'N',
		'Y',
		NEWID(),
		GETDATE()
		) 
	END
GO
/****** Object:  View [dbo].[TransactionMediaSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[TransactionMediaSetup] as SELECT [FieldOfID]
                                  ,[FieldOfName]
                                  ,[DataUsed]
                                  ,[EntryUserID]
                                  ,[EntryDate]
                                  ,[LastUpdateDate]
                                  ,[LastUpdateUserID]
                              FROM [TwoColumnsTableAuto] WHERE [TableID] = 18
GO
/****** Object:  StoredProcedure [dbo].[spUpdatematMaterialSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * FROM matMaterialSetup

CREATE PROCEDURE [dbo].[spUpdatematMaterialSetup]
		(
		@ItemID					INT,
		@ItemCategoryID			INT,
		@ItemTypeID				TINYINT,		
		@ItemPropertySetID		INT,
		@ItemUsageID			TINYINT,
		@ModelNo				VARCHAR(150),
		@UnitID					TINYINT,
		@HSCode					VARCHAR(10),
		@ItemCode				VARCHAR(25),
		@Specification			VARCHAR(250),
		@OpenningBalance		INT,
		@SupplierID				VARCHAR(8),
		@IsVATableItem			BIT,
		@COASalesAccNo			INT,
		@COAStockAccNo			INT,
		@COACGSAccNo			INT,
		@COASalesRetAccNo		INT,
		@EntryUserName			VARCHAR(50),
		@BreakUpQuantity		INT,
		@ReOrderLevel			VARCHAR(50),
		@BreakUpUnitID			TINYINT,
		@MinimumBal				INT
		)
AS
BEGIN
DECLARE @EntryUserID uniqueidentifier,@MaxItemID int,@RefNumber VARCHAR(10)  
SET @EntryUserID = '160ea939-7633-46a8-ae49-f661d12abfd5'


IF(@BreakUpUnitID = 0)
BEGIN
	SET @BreakUpUnitID = NULL
END

IF(@MinimumBal = 0)
BEGIN
	SET @MinimumBal = NULL
END


IF(@ItemCode = NULL)
BEGIN
	SET @ItemCode = @ItemID

END

UPDATE matMaterialSetup
		SET
		ItemCategoryID	=	ISNULL(@ItemCategoryID,ItemCategoryID),
		ItemTypeID	=	ISNULL(@ItemTypeID,ItemTypeID),		
		ItemPropertySetID	=	ISNULL(@ItemPropertySetID,ItemPropertySetID),
		ItemUsageID	=	ISNULL(@ItemUsageID,ItemUsageID),
		ModelNo	=	ISNULL(@ModelNo,ModelNo),
		UnitID	=	ISNULL(@UnitID,UnitID),
		HSCode	=	ISNULL(@HSCode,HSCode),
		BreakUpQuantity	=	ISNULL(@BreakUpQuantity,BreakUpQuantity),
		BreakUpUnitID	=	ISNULL(@BreakUpUnitID,BreakUpUnitID),
		ItemCode	=	ISNULL(@ItemCode,ItemCode),
		Specification	=	ISNULL(@Specification,Specification),
		OpenningBalance	=	ISNULL(@OpenningBalance,OpenningBalance),
		MinimumBal	=	ISNULL(@MinimumBal,MinimumBal),
		SupplierID	=	ISNULL(@SupplierID,SupplierID),
		IsVATableItem	=	ISNULL(@IsVATableItem,IsVATableItem),
		COASalesAccNo	=	ISNULL(@COASalesAccNo,COASalesAccNo),
		COAStockAccNo	=	ISNULL(@COAStockAccNo,COAStockAccNo),
		COACGSAccNo	=	ISNULL(@COACGSAccNo,COACGSAccNo),
		COASalesRetAccNo	=	ISNULL(@COASalesRetAccNo,COASalesRetAccNo),
		ReOrderLevel	=	ISNULL(@ReOrderLevel,ReOrderLevel),
		LastUpdateDate	=	ISNULL(GETDATE(),LastUpdateDate),
		LastUpdateUserID	=	ISNULL(@EntryUserID,LastUpdateUserID)
		WHERE	ItemID=@ItemID
	END
GO
/****** Object:  StoredProcedure [dbo].[spProcessInsertProcessLevelDescription]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spProcessInsertProcessLevelDescription] 
(
	@ProcessId				varchar(150),
	@LevelDescription		varchar(150),
	@ProcessLevelId			int,
	@Tag					VARCHAR(25)
)
as 
begin try
begin transaction
begin
IF @Tag ='INSERT'
BEGIN
      declare @sl int,@refnumber int 
      set @sl=(select isnull(max(RIGHT([ProcessLevelId],3)),0)+1 as sl from [ProcessLevelDescription])

      set @refnumber=STUFF('000',4-LEN(@sl),20,@sl)
      insert into [ProcessLevelDescription](ProcessId,[ProcessLevelId],[LevelDescription]) values (@ProcessId,@refnumber, @LevelDescription) 
      END
        ELSE IF @Tag = 'UPDATE'
        BEGIN
		UPDATE [ProcessLevelDescription]
		SET
		ProcessId	=	ISNULL(@ProcessId,ProcessId),
		[ProcessLevelId]	=	ISNULL(@ProcessLevelId,[ProcessLevelId]),
		[LevelDescription]	=	ISNULL(@LevelDescription,[LevelDescription])
		WHERE	[ProcessLevelId]=@ProcessLevelId
	END    
end 

commit 

end try 

begin catch
      if @@trancount>0        
      rollback    
end catch
GO
/****** Object:  StoredProcedure [dbo].[spProcessInsertProcessHeaderConfigurationbyDepartment]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spProcessInsertProcessHeaderConfigurationbyDepartment]
(
	@ReferenceNo varchar(255),
	@ProcessId varchar(50),
	@ProcessFlowId int,
	@DepartmentId varchar(50),
	@flag varchar(1),
	@ProcessName varchar(500)
)
AS
	SET NOCOUNT OFF;
	
	 	
	IF @flag ='Y'
	BEGIN
		INSERT INTO [dbo].[ProcessHeaderConfigurationbyDepartment] ([ReferenceNo], [ProcessId], [ProcessFlowId], [DepartmentId],[ProcessName]) VALUES (@ReferenceNo, @ProcessId, @ProcessFlowId, @DepartmentId,@ProcessName)
	END
	else
	begin
		update 	[ProcessHeaderConfigurationbyDepartment] set [ProcessName]=@ProcessName where ReferenceNo=@ReferenceNo
		DELETE FROM [ProcessDetailsConfigurationbyDepartment] where ReferenceNo=@ReferenceNo			
		DELETE FROM ProcessFlowConfigurationbyEmployee where ReferenceNo = @ReferenceNo
	end
GO
/****** Object:  StoredProcedure [dbo].[spProcessInsertProcessFlowDefinition]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spProcessInsertProcessFlowDefinition] 
(
	--@outputStr varchar(50) output,
	@ProcessId varchar(50), 
	@CategoryId int,
	@ProcessFlowId int,
	@FlowDescription varchar(100),
	@Tag					VARCHAR(25)
)
as 
begin try
begin transaction

begin
IF @Tag ='INSERT'
BEGIN
      declare @sl int,@refnumber int --,@outputStr int 
            
      set @sl=(select isnull(max(RIGHT([ProcessFlowId],3)),0)+1 as sl from [ProcessFlowDefinition])

      set @refnumber=STUFF('000',4-LEN(@sl),20,@sl)
      insert into [ProcessFlowDefinition](ProcessId,[CategoryId],[ProcessFlowId],[FlowDescription]) values (@ProcessId,@CategoryId,@refnumber, @FlowDescription) 
       END
        ELSE IF @Tag = 'UPDATE'
        BEGIN
		UPDATE [ProcessFlowDefinition]
		SET
		ProcessId	=	ISNULL(@ProcessId,ProcessId),
		[CategoryId]	=	ISNULL(@CategoryId,[CategoryId]),
		[ProcessFlowId]	=	ISNULL(@ProcessFlowId,[ProcessFlowId]),
		[FlowDescription]	=	ISNULL(@FlowDescription,[FlowDescription])
		WHERE	[ProcessFlowId]=@ProcessFlowId
	END  
end 

commit 

end try 

begin catch
      if @@trancount>0        
      rollback    
end catch
GO
/****** Object:  StoredProcedure [dbo].[spProcessInsertProcessFlowConfigurationbyEmployee]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spProcessInsertProcessFlowConfigurationbyEmployee]
(
	@ReferenceNo varchar(255),
	@ApplicantID varchar(50),
	@ProcessLevelid int,
	@AccessId varchar(250),
	@SubAccessId varchar(250),
	@AccessPermissionTypeID varchar(255),
	@SubAccessPermissionTypeID varchar(255),
	@SuperUserID varchar(50),
	@MonitoringId varchar(50)
)
AS
	IF @ReferenceNo !='0' or @ReferenceNo IS NOT NULL
BEGIN
	INSERT INTO [dbo].[ProcessFlowConfigurationbyEmployee] ([ReferenceNo], [ApplicantID], [ProcessLevelid], [AccessId], [SubAccessId], [AccessPermissionTypeID], [SubAccessPermissionTypeID], [SuperUserID], [MonitoringId]) VALUES (@ReferenceNo, @ApplicantID, @ProcessLevelid, @AccessId, @SubAccessId, @AccessPermissionTypeID, @SubAccessPermissionTypeID, @SuperUserID, @MonitoringId)
END
GO
/****** Object:  StoredProcedure [dbo].[spProcessInsertProcessDetailsConfigurationbyDepartment]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spProcessInsertProcessDetailsConfigurationbyDepartment]
(
	@ReferenceNo varchar(255),
	@ProcessLevelid int,
	@AccessId varchar(250),
	@SubAccessId varchar(250),
	@AccessPermissionTypeID varchar(255),
	@SubAccessPermissionTypeID varchar(255),
	@SuperUserID varchar(50),
	@MonitoringId varchar(50)
)
AS
	SET NOCOUNT OFF;
	IF @ReferenceNo !='0' or @ReferenceNo IS NOT NULL
	begin
		INSERT INTO [dbo].[ProcessDetailsConfigurationbyDepartment] ([ReferenceNo], [ProcessLevelid], [AccessId], [SubAccessId], [AccessPermissionTypeID], [SubAccessPermissionTypeID], [SuperUserID], [MonitoringId]) VALUES (@ReferenceNo, @ProcessLevelid, @AccessId, @SubAccessId, @AccessPermissionTypeID, @SubAccessPermissionTypeID, @SuperUserID, @MonitoringId)
	end
GO
/****** Object:  StoredProcedure [dbo].[spProcessInsertProcessDescription]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spProcessInsertProcessDescription] 
(
	@ProcessId				varchar(250),
	@ProcessDescription		varchar(250),
	@Status					varchar(100),
	@Tag					VARCHAR(25)
)
as 
--begin try
--begin transaction

begin

	IF @Tag ='INSERT'  
	BEGIN
	
	  declare @error varchar(max)
      declare @sl int,@refnumber varchar(50),@outputStr varchar(50) 
            
      set @sl=(select isnull(max(RIGHT([ProcessId],3)),0)+1 as sl from [ProcessDescription])

      set @refnumber=STUFF('000',4-LEN(@sl),20,@sl)
      
      set @refnumber='P'+@refnumber
      
      set @outputStr=@refnumber 
      insert into ProcessDescription(ProcessId,ProcessDescription,[Status]) values (@outputStr,@ProcessDescription,@Status) 
	END
	ELSE IF @Tag = 'UPDATE'
         BEGIN
		UPDATE ProcessDescription
		SET
		ProcessId	=	ISNULL(@ProcessId,ProcessId),
		ProcessDescription	=	ISNULL(@ProcessDescription,ProcessDescription),
		[Status]	=	ISNULL(@Status,[Status])
		WHERE	ProcessId=@ProcessId
		END
end 

--commit 

--end try 

--begin catch
--      if @@trancount>0        
--      rollback    
--end catch
GO
/****** Object:  StoredProcedure [dbo].[spProcessInsertProcessActionType]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spProcessInsertProcessActionType] 
(
	@ProcessId			varchar(150),
	@Action				varchar(50),
	@ActionTypeId		int,
	@Tag				VARCHAR(25)
)
as 
begin try
begin transaction

begin
IF @Tag ='INSERT'
BEGIN
      declare @sl int,@refnumber int 
      set @sl=(select isnull(max(RIGHT([ActionTypeId],3)),0)+1 as sl from [ProcessActionType])

      set @refnumber=STUFF('000',4-LEN(@sl),20,@sl)
      insert into [ProcessActionType](ProcessId,[ActionTypeId],[Action]) values (@ProcessId,@refnumber, @Action) 
      END
        ELSE IF @Tag = 'UPDATE'
        BEGIN
		UPDATE [ProcessActionType]
		SET
		ProcessId	=	ISNULL(@ProcessId,ProcessId),
		[ActionTypeId]	=	ISNULL(@ActionTypeId,[ActionTypeId]),
		[Action]	=	ISNULL(@Action,[Action])
		WHERE	[ActionTypeId]=@ActionTypeId
	END    
end 

commit 

end try 

begin catch
      if @@trancount>0        
      rollback    
end catch
GO
/****** Object:  StoredProcedure [dbo].[spProcessGetTransactionNo]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spProcessGetTransactionNo] 
(
@outputStr varchar(13) output
)
as 
begin try
begin transaction

begin
	declare @sl int,@refnumber varchar(10),@mm varchar(2),@yy varchar(2)
	
	set @mm=STUFF('00',3-LEN(MONTH(getdate())),20,MONTH(getdate()))
	set @yy=RIGHT(YEAR(getdate()),2)
		
	set @sl=(select isnull(max(RIGHT([TransactionNo],5)),0)+1 as sl from [ProcessFlowdet])
	
	set @refnumber=STUFF('00000',6-LEN(@sl),20,@sl)
	
	set @refnumber='T'+@yy+@mm+@refnumber
	
	set @outputStr=@refnumber	
end 

commit

end try 

begin catch
	if @@trancount>0 		
	rollback	
end catch
GO
/****** Object:  StoredProcedure [dbo].[spInitiateSecurityCode]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInitiateSecurityCode]
(
	@CompanyID	INT
	,@EmployeeID VARCHAR(8)
	,@EntryUserID UNIQUEIDENTIFIER
)
AS
BEGIN

DECLARE @SecurityCode	INT,@SequenceNo INT,@SerialNumber INT,  @SerialNumberFixedDigit VARCHAR(8)
SET @SequenceNo = (SELECT ISNULL( MAX( SequenceNo),0)+1 FROM UserSecurityCode WHERE CompanyID = @CompanyID AND EmployeeID = @EmployeeID)
SET @SerialNumber = (select isnull(MAX(SerialNo),0)+1 AS SerialNo from [UserSecurityCode] )
SET @SerialNumberFixedDigit= CONVERT(VARCHAR, @CompanyID,5)+STUFF('0000',5-LEN(@SerialNumber),20,@SerialNumber)
SET @SecurityCode = @SerialNumberFixedDigit

UPDATE UserSecurityCode SET DataUsed = 'I' WHERE CompanyID = @CompanyID AND EmployeeID = @EmployeeID

INSERT INTO [UserSecurityCode]
           ([CompanyID]
           ,[EmployeeID]
           ,[SecurityCode]
           ,[SecurityCodeStatus]
           ,[SequenceNo]
           ,[SerialNo]
           ,[DataUsed]
           ,[EntryUserID]
           ,[EntryDate]
           )
     VALUES
           (@CompanyID
           ,@EmployeeID
           ,@SecurityCode
           ,0
           ,@SequenceNo
           ,@SerialNumber
           ,'A'
           ,@EntryUserID
           ,CAST(GETDATE() AS DateTime)
           )
           END
GO
/****** Object:  StoredProcedure [dbo].[spInitiatematMaterialSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * FROM matMaterialSetup
--SELECT * FROM matCategoryList

--DELETE FROM matMaterialSetup
--DELETE FROM matCategoryList

--exec [spInitiatematMaterialSetup] 11,11222,2,1,1,'Fish',1,'1','Fish','TEST',1,'',True,1,1,1,1,'ADM',1,1,1,'Fish',11222,0,0,3,2,0,'A'

CREATE PROCEDURE [dbo].[spInitiatematMaterialSetup]
		(
		@ItemID					INT,
		@ItemCategoryID			INT,
		@ItemTypeID				TINYINT,		
		@ItemPropertySetID		INT,
		@ItemUsageID			TINYINT,
		@ModelNo				VARCHAR(150),
		@UnitID					TINYINT,
		@HSCode					VARCHAR(10),
		@ItemCode				VARCHAR(25),
		@Specification			VARCHAR(250),
		@OpenningBalance		INT,
		@SupplierID				VARCHAR(8),
		@IsVATableItem			BIT,
		@COASalesAccNo			INT,
		@COAStockAccNo			INT,
		@COACGSAccNo			INT,
		@COASalesRetAccNo		INT,
		@EntryUserName			VARCHAR(50),
		@BreakUpQuantity		INT,
		@ReOrderLevel			VARCHAR(50),
		@BreakUpUnitID			TINYINT,
		@MinimumBal				INT
		)
AS

BEGIN
DECLARE @EntryUserID uniqueidentifier,@MaxItemID int,@RefNumber VARCHAR(10)  
SET @EntryUserID = '160ea939-7633-46a8-ae49-f661d12abfd5'
SET @MaxItemID=(select isnull(max(RIGHT(ItemID,6)),0)+1 as ItemID from matMaterialSetup)
SET @RefNumber=STUFF('000000',7-LEN(@MaxItemID),20,@MaxItemID)
SET @ItemID = CONVERT(INT, CONVERT(VARCHAR, @ItemID,5)+CONVERT(VARCHAR,@RefNumber,10))

IF(@BreakUpUnitID = 0)
BEGIN
	SET @BreakUpUnitID = NULL
END

IF(@MinimumBal = 0)
BEGIN
	SET @MinimumBal = NULL
END


IF(@ItemCode = NULL)
BEGIN
	SET @ItemCode = @ItemID

END

INSERT INTO matMaterialSetup 
		(
		ItemID,
		ItemCategoryID,
		ItemTypeID,
		ItemPropertySetID,
		ItemUsageID,
		ModelNo,
		UnitID,
		HSCode,
		ItemCode,
		Specification,
		OpenningBalance,
		SupplierID,
		IsVATableItem,
		COASalesAccNo,
		COAStockAccNo,
		COACGSAccNo,
		COASalesRetAccNo,
		EntryUserID,
		EntryDate,
		DataUsed,
		Barcode,
		BreakUpQuantity,
		ReOrderLevel,
		BreakUpUnitID,
		MinimumBal
		) 
		VALUES 
		(
		@ItemID,
		@ItemCategoryID,
		@ItemTypeID,
		@ItemPropertySetID,
		@ItemUsageID,
		@ModelNo,
		@UnitID,
		@HSCode,
		@ItemCode,
		@Specification,
		@OpenningBalance,
		@SupplierID,
		@IsVATableItem,
		@COASalesAccNo,
		@COAStockAccNo,
		@COACGSAccNo,
		@COASalesRetAccNo,
		@EntryUserID,
		GETDATE(),
		'A',
		@ItemID,
		@BreakUpQuantity,
		@ReOrderLevel,
		@BreakUpUnitID,
		@MinimumBal
		) 
		
END
GO
/****** Object:  StoredProcedure [dbo].[spInitiatematCategoryList]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInitiatematCategoryList]
		(
		@CompanyID			TINYINT,
		@BranchID			TINYINT,
		@CategoryTypeID		TINYINT,
		@ItemCategoryID		INT,
		@CategoryName		VARCHAR(50),
		@ParentCategoryID	INT,
		@StartingItemCode	FLOAT,
		@EndingItemCode		FLOAT,
		@SeqNo				INT,
		@TierNo				TINYINT,
		@CurrentBalance		INT,
		@DataUsed			VARCHAR(1),
		@EntryUserName		VARCHAR(50)		
		)
AS

BEGIN
	IF @ParentCategoryID != 111
	BEGIN
	update matCategoryList set SeqNo = SeqNo+1 where SeqNo >= @SeqNo 
	END
DECLARE @SerialNumber INT, @EntryUserID uniqueidentifier, @SerialNumberFixedDigit VARCHAR(5) 
SET @SerialNumber = (select isnull(MAX(SerialNo),0)+1 AS SerialNo from matCategoryList )

SET @SerialNumberFixedDigit=STUFF('000',4-LEN(@SerialNumber),20,@SerialNumber)

SET @ItemCategoryID = CONVERT(INT, CONVERT(VARCHAR, @ItemCategoryID,5)+CONVERT(VARCHAR,@SerialNumberFixedDigit,5))
SET @EntryUserID = '160ea939-7633-46a8-ae49-f661d12abfd5'
 
INSERT INTO matCategoryList 
		(
		CompanyID,
		BranchID,
		CategoryTypeID,
		ItemCategoryID,
		CategoryName,
		ParentCategoryID,
		StartingItemCode,
		EndingItemCode,
		SeqNo,
		TierNo,
		CurrentBalance,
		DataUsed,
		EntryDate,
		SerialNo,
		EntryUserID
		) 
		VALUES 
		(
		@CompanyID,
		@BranchID,
		@CategoryTypeID,
		@ItemCategoryID,
		@CategoryName,
		@ParentCategoryID,
		@StartingItemCode,
		@EndingItemCode,
		@SeqNo,
		@TierNo,
		@CurrentBalance,
		@DataUsed,
		GETDATE(),
		@SerialNumber,
		@EntryUserID
		) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[spGetTierNumberCOA]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spGetTierNumberCOA]
				(
				@ParentAccNo	INT
				)	
AS
BEGIN	
	IF(@ParentAccNo = -1 or @ParentAccNo = 11111)
	BEGIN
		select isnull(MAX(TierNo),0)+1 from accCOAHeadSetup  
		
	END
	ELSE
	BEGIN  			
		 select TierNo from accCOAHeadSetup where AccountNo = @ParentAccNo
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spGetTierNumber]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spGetTierNumber]
				(
				@ParentCategoryID	INT
				)	
AS
BEGIN	
	IF( @ParentCategoryID = 11111 OR @ParentCategoryID = 1 OR @ParentCategoryID = 111 )
	BEGIN
		select isnull(MAX(TierNo),0)+1 from matCategoryList  
		
	END
	ELSE
	BEGIN  			
		 select TierNo from matCategoryList where ItemCategoryID = @ParentCategoryID
	END
END

SELECT 0
GO
/****** Object:  StoredProcedure [dbo].[spGetSeqNo]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetSeqNo]
AS
BEGIN		
select isnull(MAX(SeqNo),0)+1 AS SeqNo from accCOAHeadSetup  
END
GO
/****** Object:  StoredProcedure [dbo].[spGetNodeSeqNoCOA]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetNodeSeqNoCOA]
(
@parentAccNo	INT 
)
AS
BEGIN		
select isnull(MAX(SeqNo),0)+1 AS SeqNo from accCOAHeadSetup where ParentAccNo = @parentAccNo or AccountNo = @parentAccNo
END
GO
/****** Object:  StoredProcedure [dbo].[spGetNodeSeqNo]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetNodeSeqNo]
(
@ParentCategoryID	INT 
)
AS
BEGIN

DECLARE @SerialNumber INT,  @SerialNumberFixedDigit VARCHAR(5)  
SET @SerialNumber = ( select isnull(MAX(SeqNo),0)+1 AS SeqNo from matCategoryList where ParentCategoryID = @ParentCategoryID or ItemCategoryID = @ParentCategoryID)
SET @SerialNumberFixedDigit=STUFF('000',4-LEN(@SerialNumber),20,@SerialNumber)
SELECT @SerialNumberFixedDigit;
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDetailsmatMaterialSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetDetailsmatMaterialSetup]
(
	@ItemID					INT
)

AS
BEGIN
SELECT ItemCategoryID,
		ItemTypeID,
		ItemPropertySetID,
		ItemUsageID,
		ModelNo,
		UnitID,
		HSCode,
		ItemCode,
		Specification,
		OpenningBalance,
		SupplierID,
		IsVATableItem,
		COASalesAccNo,
		COAStockAccNo,
		COACGSAccNo,
		COASalesRetAccNo,
		BreakUpQuantity,
		ReOrderLevel,
		BreakUpUnitID,
		MinimumBal
FROM matMaterialSetup
WHERE ItemID=@ItemID
END
GO
/****** Object:  View [dbo].[ShowItemBasicInfo]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ShowItemBasicInfo]
AS
SELECT     dbo.matMaterialSetup.CompanyID, dbo.matMaterialSetup.BranchID, dbo.matMaterialSetup.ItemID, dbo.matCategoryList.CategoryName, dbo.matMatCatagorySetup.CategoryTypeName, 
                      dbo.matUnitSetup.Unit, dbo.matMatUsagePurposeSetup.ItemUsageID, dbo.matItemTypeSetup.ItemType, dbo.matMatUsagePurposeSetup.ItemUsage
FROM         dbo.matItemTypeSetup INNER JOIN
                      dbo.matMaterialSetup ON dbo.matItemTypeSetup.ItemTypeID = dbo.matMaterialSetup.ItemTypeID INNER JOIN
                      dbo.matCategoryList ON dbo.matMaterialSetup.ItemCategoryID = dbo.matCategoryList.ItemCategoryID INNER JOIN
                      dbo.matMatCatagorySetup ON dbo.matMaterialSetup.CategoryTypeID = dbo.matMatCatagorySetup.CategoryTypeID INNER JOIN
                      dbo.matMatUsagePurposeSetup ON dbo.matMaterialSetup.ItemUsageID = dbo.matMatUsagePurposeSetup.ItemUsageID INNER JOIN
                      dbo.matUnitSetup ON dbo.matMaterialSetup.UnitID = dbo.matUnitSetup.UnitID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[46] 4[4] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "matItemTypeSetup"
            Begin Extent = 
               Top = 324
               Left = 549
               Bottom = 519
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "matMatCatagorySetup"
            Begin Extent = 
               Top = 14
               Left = 14
               Bottom = 215
               Right = 199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "matMatUsagePurposeSetup"
            Begin Extent = 
               Top = 130
               Left = 538
               Bottom = 311
               Right = 757
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "matCategoryList"
            Begin Extent = 
               Top = 229
               Left = 19
               Bottom = 531
               Right = 196
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "matMaterialSetup"
            Begin Extent = 
               Top = 3
               Left = 255
               Bottom = 302
               Right = 447
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "matUnitSetup"
            Begin Extent = 
               Top = 8
               Left = 539
               Bottom = 128
               Right = 757
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ShowItemBasicInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ShowItemBasicInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ShowItemBasicInfo'
GO
/****** Object:  View [dbo].[Show All Clients]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Show All Clients]
AS
SELECT     dbo.conContactDetailsName.CompanyID, dbo.conContactDetailsName.BranchID, dbo.conContactDetailsName.ContactID, dbo.conContactDetailsName.FullName
FROM         dbo.conContactDetailsName INNER JOIN
                      dbo.conContactDetailsType ON dbo.conContactDetailsName.ContactID = dbo.conContactDetailsType.ContactID
WHERE     (dbo.conContactDetailsType.ContactTypeID = 1)
GROUP BY dbo.conContactDetailsName.CompanyID, dbo.conContactDetailsName.BranchID, dbo.conContactDetailsName.ContactID, dbo.conContactDetailsName.FullName, 
                      dbo.conContactDetailsType.ContactTypeID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[8] 2[45] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "conContactDetailsName"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 201
               Right = 290
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "conContactDetailsType"
            Begin Extent = 
               Top = 9
               Left = 543
               Bottom = 208
               Right = 889
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 2490
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Show All Clients'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Show All Clients'
GO
/****** Object:  View [dbo].[Show all Client Details]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Show all Client Details]
AS
SELECT     dbo.conContactDetailsName.CompanyID, dbo.conContactDetailsName.BranchID, dbo.conContactDetailsName.ContactID, dbo.conContactDetailsName.ParentContactEntityID, 
                      dbo.conContactDetailsName.ContactEntityID, dbo.conContactDetailsName.Title, dbo.conContactDetailsName.FullName, dbo.conContactAddressDetails.ContactAdreessID, 
                      dbo.conContactAddressDetails.HouseName, dbo.conContactAddressDetails.HouseNo, dbo.conSetupContactAddressType.ContactAddressType
FROM         dbo.conContactDetailsName INNER JOIN
                      dbo.conContactDetailsType ON dbo.conContactDetailsName.ContactID = dbo.conContactDetailsType.ContactID INNER JOIN
                      dbo.conContactAddressDetails ON dbo.conContactDetailsName.ContactAdreessID = dbo.conContactAddressDetails.ContactAdreessID INNER JOIN
                      dbo.conSetupContactAddressType ON dbo.conContactAddressDetails.ContactAddressTypeID = dbo.conSetupContactAddressType.ContactAddressTypeID
GROUP BY dbo.conContactDetailsName.CompanyID, dbo.conContactDetailsName.BranchID, dbo.conContactDetailsName.ContactID, dbo.conContactDetailsName.ParentContactEntityID, 
                      dbo.conContactDetailsName.ContactEntityID, dbo.conContactDetailsName.Title, dbo.conContactDetailsName.FullName, dbo.conContactAddressDetails.ContactAdreessID, 
                      dbo.conContactAddressDetails.HouseName, dbo.conContactAddressDetails.HouseNo, dbo.conSetupContactAddressType.ContactAddressType
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[13] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "conContactDetailsName"
            Begin Extent = 
               Top = 12
               Left = 403
               Bottom = 239
               Right = 634
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "conContactDetailsType"
            Begin Extent = 
               Top = 3
               Left = 75
               Bottom = 228
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "conContactAddressDetails"
            Begin Extent = 
               Top = 6
               Left = 672
               Bottom = 239
               Right = 941
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "conSetupContactAddressType"
            Begin Extent = 
               Top = 6
               Left = 979
               Bottom = 168
               Right = 1262
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3285
         Width = 1740
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 2085
         Output = 720
         Append = 1400' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Show all Client Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Show all Client Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Show all Client Details'
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [nvarchar](4000) NOT NULL,
	[PropertyValueStrings] [nvarchar](4000) NOT NULL,
	[PropertyValueBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[OwnershipSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[OwnershipSetup] as SELECT [FieldOfID]
                                  ,[FieldOfName]
                                  ,[DataUsed]
                                  ,[EntryUserID]
                                  ,[EntryDate]
                                  ,[LastUpdateDate]
                                  ,[LastUpdateUserID]
                              FROM [TwoColumnsTableAuto] WHERE [TableID] = 21
GO
/****** Object:  View [dbo].[orgTeam]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[orgTeam] as SELECT [CompanyID]
                          ,[ParentEntityID]
                          ,[EntityID]      
                          ,[AddressTag]
                          ,[AddressID]
                          ,[EntityName]
                          ,[ShortName]
                          ,[DisplayName]
                          ,[GroupEmailAddress]
                          ,[HeadID]
                          ,[EntityCategoryID]
                          ,[EntityOpeningDate]
                          ,[DataUsed]
                          ,[EntryUserID]
                          ,[EntryDate]
                          ,[LastUpdateDate]
                          ,[LastUpdateUserID]
                      FROM [orgOrganizationalChartSetup] WHERE [EntityTypeID] = 8
GO
/****** Object:  Table [dbo].[orgEmployeeChart]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orgEmployeeChart](
	[ReferenceID] [int] NULL,
	[EntityTypeID] [int] NULL,
	[EntityID] [int] NULL,
	[LastPosition] [int] NULL,
	[DataUsed] [varchar](1) NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[orgEmployeeChart] ([ReferenceID], [EntityTypeID], [EntityID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, 2, 501, 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77C01137AAC AS DateTime), NULL, NULL)
INSERT [dbo].[orgEmployeeChart] ([ReferenceID], [EntityTypeID], [EntityID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, 2, 501, 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77C01151303 AS DateTime), NULL, NULL)
INSERT [dbo].[orgEmployeeChart] ([ReferenceID], [EntityTypeID], [EntityID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, 3, 601, 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77C01151303 AS DateTime), NULL, NULL)
INSERT [dbo].[orgEmployeeChart] ([ReferenceID], [EntityTypeID], [EntityID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 2, 501, 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80124AECF AS DateTime), NULL, NULL)
INSERT [dbo].[orgEmployeeChart] ([ReferenceID], [EntityTypeID], [EntityID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 3, 601, 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80124AECF AS DateTime), NULL, NULL)
INSERT [dbo].[orgEmployeeChart] ([ReferenceID], [EntityTypeID], [EntityID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 4, 701, 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80124AECF AS DateTime), NULL, NULL)
INSERT [dbo].[orgEmployeeChart] ([ReferenceID], [EntityTypeID], [EntityID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, 5, 801, 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80124AED0 AS DateTime), NULL, NULL)
INSERT [dbo].[orgEmployeeChart] ([ReferenceID], [EntityTypeID], [EntityID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, 2, 502, 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D30ACA AS DateTime), NULL, NULL)
INSERT [dbo].[orgEmployeeChart] ([ReferenceID], [EntityTypeID], [EntityID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, 2, 502, 1, N'A', N'698a7bfc-ac9c-4371-af75-968c8a8ffdaf', CAST(0x0000A7AF010F500A AS DateTime), NULL, NULL)
/****** Object:  View [dbo].[orgDepartment]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[orgDepartment] as SELECT [CompanyID]
                          ,[ParentEntityID]
                          ,[EntityID]      
                          ,[AddressTag]
                          ,[AddressID]
                          ,[EntityName]
                          ,[ShortName]
                          ,[DisplayName]
                          ,[GroupEmailAddress]
                          ,[HeadID]
                          ,[EntityCategoryID]
                          ,[EntityOpeningDate]
                          ,[DataUsed]
                          ,[EntryUserID]
                          ,[EntryDate]
                          ,[LastUpdateDate]
                          ,[LastUpdateUserID]
                      FROM [orgOrganizationalChartSetup] WHERE [EntityTypeID] = 6
GO
/****** Object:  View [dbo].[orgBranch]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[orgBranch] as SELECT [CompanyID]
                          ,[ParentEntityID]
                          ,[EntityID]      
                          ,[AddressTag]
                          ,[AddressID]
                          ,[EntityName]
                          ,[ShortName]
                          ,[DisplayName]
                          ,[GroupEmailAddress]
                          ,[HeadID]
                          ,[EntityCategoryID]
                          ,[EntityOpeningDate]
                          ,[DataUsed]
                          ,[EntryUserID]
                          ,[EntryDate]
                          ,[LastUpdateDate]
                          ,[LastUpdateUserID]
                      FROM [orgOrganizationalChartSetup] WHERE [EntityTypeID] = 5
GO
/****** Object:  Table [dbo].[Memberships]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memberships](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowsStart] [datetime] NOT NULL,
	[Comment] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'd392c5cd-5048-4be3-9ba8-16fb100c2613', N'2290be75-65ce-496d-b4a8-776524805756', N'5nIOgIzLcKn//OjvWWVR98DTuAE5PBZ4CqWXNIcSi+o=', 1, N't4gLqMGP/5sI2wrQAdnENw==', N'l3t719@link3.net', NULL, NULL, 1, 0, CAST(0x0000A731005AE64A AS DateTime), CAST(0x0000A731005AE64A AS DateTime), CAST(0x0000A731005AE64A AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[Memberships] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [Email], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowsStart], [Comment]) VALUES (N'd392c5cd-5048-4be3-9ba8-16fb100c2613', N'fc91738f-efff-4e4e-aa31-aadd550ed78d', N'oMILvcZ4u7zGf91YKy+/jwhJ44TuluduU0IADp21khQ=', 1, N'wWljF637fyJ2IgthQE+Cnw==', N'l3t716@gmail.com', NULL, NULL, 1, 1, CAST(0x0000A72F00ADFC9F AS DateTime), CAST(0x0000A731005E6535 AS DateTime), CAST(0x0000A72F00AE17DF AS DateTime), CAST(0x0000A731005E6538 AS DateTime), 5, CAST(0x0000A731005E6538 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  View [dbo].[EmployeeType]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[EmployeeType] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 34
GO
/****** Object:  View [dbo].[EmployeeTitle]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[EmployeeTitle] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 36
GO
/****** Object:  View [dbo].[EmployeeCategory]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[EmployeeCategory] as   SELECT  CompanyID
			                ,[FieldOfID]
			                ,[FieldOfName]
			                ,FieldDescription
                            ,[DataUsed]
                            ,[EntryUserID]
                            ,[EntryDate]
                            ,[LastUpdateDate]
                            ,[LastUpdateUserID]
                            FROM [TwoColumnsTable] WHERE CompanyID = 1 AND [TableID] = 35
GO
/****** Object:  Table [dbo].[empDesignation]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empDesignation](
	[ReferenceID] [int] NULL,
	[DesignationID] [varchar](35) NULL,
	[LastPosition] [int] NULL,
	[DataUsed] [varchar](1) NULL,
	[EntryUserID] [uniqueidentifier] NULL,
	[EntryDate] [datetime] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateUserID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[empDesignation] ([ReferenceID], [DesignationID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (2, N'1122002', 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77C0102C94A AS DateTime), NULL, NULL)
INSERT [dbo].[empDesignation] ([ReferenceID], [DesignationID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (3, N'1122001', 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77C01137AAA AS DateTime), NULL, NULL)
INSERT [dbo].[empDesignation] ([ReferenceID], [DesignationID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (4, N'1122002', 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A77C01151302 AS DateTime), NULL, NULL)
INSERT [dbo].[empDesignation] ([ReferenceID], [DesignationID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (5, N'1122001', 1, N'A', N'b649f7c8-80a7-4b80-ab8d-2f8638826227', CAST(0x0000A7A80124AEC9 AS DateTime), NULL, NULL)
INSERT [dbo].[empDesignation] ([ReferenceID], [DesignationID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (6, N'-1', 1, N'A', N'160ea939-7633-46a8-ae49-f661d12abfd5', CAST(0x0000A7AF00D30AC5 AS DateTime), NULL, NULL)
INSERT [dbo].[empDesignation] ([ReferenceID], [DesignationID], [LastPosition], [DataUsed], [EntryUserID], [EntryDate], [LastUpdateDate], [LastUpdateUserID]) VALUES (7, N'-1', 1, N'A', N'698a7bfc-ac9c-4371-af75-968c8a8ffdaf', CAST(0x0000A7AF010F500A AS DateTime), NULL, NULL)
/****** Object:  View [dbo].[DivisionSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[DivisionSetup] as SELECT [FieldOfID]
                                  ,[FieldOfName]
                                  ,[DataUsed]
                                  ,[EntryUserID]
                                  ,[EntryDate]
                                  ,[LastUpdateDate]
                                  ,[LastUpdateUserID]
                              FROM [TwoColumnsTableAuto] WHERE [TableID] = 24
GO
/****** Object:  View [dbo].[DistrictSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[DistrictSetup] as SELECT [FieldOfID]
                                  ,[FieldOfName]
                                  ,[DataUsed]
                                  ,[EntryUserID]
                                  ,[EntryDate]
                                  ,[LastUpdateDate]
                                  ,[LastUpdateUserID]
                              FROM [TwoColumnsTableAuto] WHERE [TableID] = 23
GO
/****** Object:  View [dbo].[DataUsedSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[DataUsedSetup] as SELECT [FieldOfID]
                                  ,[FieldOfName]
                                  ,[DataUsed]
                                  ,[EntryUserID]
                                  ,[EntryDate]
                                  ,[LastUpdateDate]
                                  ,[LastUpdateUserID]
                              FROM [TwoColumnsTableAuto] WHERE [TableID] = 14
GO
/****** Object:  View [dbo].[GenderSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[GenderSetup] as SELECT [FieldOfID]
                                  ,[FieldOfName]
                                  ,[DataUsed]
                                  ,[EntryUserID]
                                  ,[EntryDate]
                                  ,[LastUpdateDate]
                                  ,[LastUpdateUserID]
                              FROM [TwoColumnsTableAuto] WHERE [TableID] = 8
GO
/****** Object:  View [dbo].[CompanyWiseUsers]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CompanyWiseUsers]
AS
SELECT     dbo.uCompanyWiseUserList.CompanyID, dbo.uCompanyWiseUserList.BranchID, dbo.uCompanyWiseUserList.UserNumber, dbo.uCompanyWiseUserList.UserID, 
                      dbo.uUserProfile.Title, dbo.uUserProfile.FirstName, dbo.uUserProfile.MiddleName, dbo.uUserProfile.LastName, dbo.uUserProfile.DisplayName, 
                      dbo.uUserProfile.IsApproved, dbo.uUserProfile.IsLockedOut, dbo.uUserProfile.CreateDate, dbo.uUserProfile.LastLoginDate, 
                      dbo.uUserProfile.LastPasswordChangedDate, dbo.uUserProfile.LastLockoutDate, dbo.uUserProfile.FailedPasswordAttemptCount, 
                      dbo.uUserProfile.FailedPasswordAnswerAttemptCount, dbo.uUserProfile.DataUsed
FROM         dbo.uUserList INNER JOIN
                      dbo.uCompanyWiseUserList ON dbo.uUserList.UserID = dbo.uCompanyWiseUserList.UserID INNER JOIN
                      dbo.uUserProfile ON dbo.uUserList.UserProfileID = dbo.uUserProfile.UserProfileID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "uUserProfile"
            Begin Extent = 
               Top = 15
               Left = 446
               Bottom = 287
               Right = 713
            End
            DisplayFlags = 280
            TopColumn = 17
         End
         Begin Table = "uCompanyWiseUserList"
            Begin Extent = 
               Top = 26
               Left = 30
               Bottom = 149
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "uUserList"
            Begin Extent = 
               Top = 23
               Left = 231
               Bottom = 192
               Right = 399
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2595
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompanyWiseUsers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'CompanyWiseUsers'
GO
/****** Object:  View [dbo].[BusinessNatureSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[BusinessNatureSetup] as SELECT [FieldOfID]
                                  ,[FieldOfName]
                                  ,[DataUsed]
                                  ,[EntryUserID]
                                  ,[EntryDate]
                                  ,[LastUpdateDate]
                                  ,[LastUpdateUserID]
                              FROM [TwoColumnsTableAuto] WHERE [TableID] = 20
GO
/****** Object:  View [dbo].[BankListSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[BankListSetup] as SELECT [FieldOfID]
                                  ,[FieldOfName]
                                  ,[DataUsed]
                                  ,[EntryUserID]
                                  ,[EntryDate]
                                  ,[LastUpdateDate]
                                  ,[LastUpdateUserID]
                              FROM [TwoColumnsTableAuto] WHERE [TableID] = 16
GO
/****** Object:  View [dbo].[AllSuppliers]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AllSuppliers]
AS
SELECT     TOP (100) PERCENT dbo.conContactDetailsName.ContactID, dbo.conContactDetailsName.FullName, dbo.conContactDetailsName.ContactEntityID, dbo.conContactDetailsName.ShortName, 
                      dbo.conContactDetailsName.Email, dbo.conContactDetailsName.PrimaryContactNo, dbo.conContactDetailsName.SecondaryContactNo, dbo.conContactDetailsType.CompanyID, 
                      dbo.conContactDetailsType.BranchID
FROM         dbo.conContactDetailsName INNER JOIN
                      dbo.conContactDetailsType ON dbo.conContactDetailsName.ContactID = dbo.conContactDetailsType.ContactID
WHERE     (dbo.conContactDetailsType.ContactTypeID = 2)
GROUP BY dbo.conContactDetailsName.ContactID, dbo.conContactDetailsName.FullName, dbo.conContactDetailsType.ContactTypeID, dbo.conContactDetailsName.ContactEntityID, 
                      dbo.conContactDetailsName.ShortName, dbo.conContactDetailsName.Email, dbo.conContactDetailsName.PrimaryContactNo, dbo.conContactDetailsName.SecondaryContactNo, 
                      dbo.conContactDetailsType.CompanyID, dbo.conContactDetailsType.BranchID
ORDER BY dbo.conContactDetailsName.FullName
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[23] 4[26] 2[37] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "conContactDetailsName"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 383
               Right = 277
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "conContactDetailsType"
            Begin Extent = 
               Top = 7
               Left = 358
               Bottom = 329
               Right = 551
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2100
         Alias = 900
         Table = 2115
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllSuppliers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllSuppliers'
GO
/****** Object:  View [dbo].[AllContactDetails]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AllContactDetails]
AS
SELECT     dbo.conContactTypeSetup.ContactTypeID, dbo.conContactDetailsName.ContactID, dbo.conContactDetailsName.ContactEntityID, dbo.conContactProfessionalNatureID.ContactProfessionalNature, 
                      dbo.conContactDetailsName.Title, dbo.conContactDetailsName.FirstName, dbo.conContactDetailsName.MiddleName, dbo.conContactDetailsName.LastName, dbo.conContactDetailsName.FullName, 
                      dbo.conContactDetailsName.DisplayName, dbo.conContactDetailsName.ShortName, dbo.conContactDetailsName.Email, dbo.conContactDetailsName.PrimaryContactNo, 
                      dbo.conContactDetailsName.SecondaryContactNo, dbo.conSetupContactAddressType.ContactAddressType, dbo.conContactAddressDetails.HouseName, dbo.conContactAddressDetails.HouseNo, 
                      dbo.conContactAddressDetails.RoadNo, dbo.conContactAddressDetails.RoadName, dbo.conContactAddressDetails.DisplayAddress, dbo.conContactTypeSetup.ContactType
FROM         dbo.conContactAddressDetails INNER JOIN
                      dbo.conContactDetailsName ON dbo.conContactAddressDetails.ContactAdreessID = dbo.conContactDetailsName.ContactAdreessID INNER JOIN
                      dbo.conSetupContactAddressType ON dbo.conContactAddressDetails.ContactAddressTypeID = dbo.conSetupContactAddressType.ContactAddressTypeID INNER JOIN
                      dbo.conContactDetailsType ON dbo.conContactDetailsName.ContactID = dbo.conContactDetailsType.ContactID LEFT OUTER JOIN
                      dbo.conContactProfessionalNatureID ON dbo.conContactDetailsName.ContactProfessionalNatureID = dbo.conContactProfessionalNatureID.ContactProfessionalNatureID LEFT OUTER JOIN
                      dbo.conContactTypeSetup ON dbo.conContactDetailsType.ContactTypeID = dbo.conContactTypeSetup.ContactTypeID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[63] 4[4] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "conContactAddressDetails"
            Begin Extent = 
               Top = 19
               Left = 593
               Bottom = 279
               Right = 796
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "conContactDetailsType"
            Begin Extent = 
               Top = 17
               Left = 182
               Bottom = 231
               Right = 359
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "conSetupContactAddressType"
            Begin Extent = 
               Top = 2
               Left = 754
               Bottom = 280
               Right = 955
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "conContactTypeSetup"
            Begin Extent = 
               Top = 26
               Left = 0
               Bottom = 219
               Right = 163
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "conContactDetailsName"
            Begin Extent = 
               Top = 1
               Left = 358
               Bottom = 271
               Right = 566
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "conContactProfessionalNatureID"
            Begin Extent = 
               Top = 225
               Left = 40
               Bottom = 345
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllContactDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'n ColumnWidths = 22
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2700
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllContactDetails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AllContactDetails'
GO
/****** Object:  StoredProcedure [dbo].[ACT_TwoColumnsTable]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACT_TwoColumnsTable]
		(
		@CompanyID			TINYINT,
		@BranchID			TINYINT,
		@TableID			INT,
		@FieldOfID			VARCHAR(35),
		@FieldOfName			VARCHAR(50),
		@FieldDescription			VARCHAR(35),		
		@EntryUserName		VARCHAR(50)
		)
AS

BEGIN
DECLARE @EntryUserID uniqueidentifier,@countData int,@RefNumber VARCHAR(10) 
SET @EntryUserID = '160ea939-7633-46a8-ae49-f661d12abfd5'
	IF(@FieldOfID = '0')
	BEGIN
	SET @countData=(select count(FieldOfID)+1 as FieldOfID from TwoColumnsTable WHERE TableID = @TableID)
	SET @RefNumber=STUFF('000',4-LEN(@countData),20,@countData)
	SET @RefNumber = CONVERT(VARCHAR,( CONVERT(VARCHAR,@CompanyID,5)+ CONVERT(VARCHAR,@BranchID,5)+CONVERT(VARCHAR,@TableID,5)+@RefNumber),10);
	
	
	INSERT INTO TwoColumnsTable 
		(
		CompanyID,
		BranchID,
		TableID,
		FieldOfID,
		FieldOfName,
		FieldDescription,
		DataUsed,
		EntryUserID,
		EntryDate
		) 
		VALUES 
		(
		@CompanyID,
		@BranchID,
		@TableID,
		@RefNumber,
		@FieldOfName,
		@FieldDescription,
		'A',
		@EntryUserID,
		GETDATE()
		) 
	END
	IF(@FieldOfID != '0')
	BEGIN
		UPDATE TwoColumnsTable
		SET
		FieldOfName	=	ISNULL(@FieldOfName,FieldOfName),
		FieldDescription	=	ISNULL(@FieldDescription,FieldDescription),				
		LastUpdateDate	=	ISNULL(GETDATE(),LastUpdateDate),
		LastUpdateUserID	=	ISNULL(@EntryUserID,LastUpdateUserID)
		WHERE	FieldOfID=@FieldOfID 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ACT_sysTwoColumnTables]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACT_sysTwoColumnTables]
		(
		@TableID			INT,
		@TableName			VARCHAR(50),
		@EntryMode			VARCHAR(35),
		@RelatedTo			VARCHAR(35),
		@RelatedUserRoleID	INT,
		@EntrySystem		VARCHAR(1),
		@EntryUserName		VARCHAR(50)
		)
AS

BEGIN 
DECLARE @EntryUserID uniqueidentifier
SET @EntryUserID = '160ea939-7633-46a8-ae49-f661d12abfd5'

	IF(@TableID = 0)
	BEGIN
	DECLARE @SerialNumber INT 
	SET @SerialNumber = (select isnull(MAX(TableID),0)+1 AS TableID from sysTwoColumnTables )
	
	INSERT INTO sysTwoColumnTables 
		(
		TableID,
		TableName,
		EntryMode,
		RelatedTo,
		RelatedUserRoleID,
		DataUsed,
		EntryUserID,
		EntryDate,
		EntrySystem
		) 
		VALUES 
		(
		@SerialNumber,
		@TableName,
		@EntryMode,
		@RelatedTo,
		@RelatedUserRoleID,
		'A',
		@EntryUserID,
		GETDATE(),
		@EntrySystem
		) 
	END
	IF(@TableID != 0)
	BEGIN
		UPDATE sysTwoColumnTables
		SET
		TableName	=	ISNULL(@TableName,TableName),
		EntryMode	=	ISNULL(@EntryMode,EntryMode),
		RelatedTo	=	ISNULL(@RelatedTo,RelatedTo),
		RelatedUserRoleID	=	ISNULL(@RelatedUserRoleID,RelatedUserRoleID),
		DataUsed	=	ISNULL('A',DataUsed),
		LastUpdateDate	=	ISNULL(GETDATE(),LastUpdateDate),
		LastUpdateUserID	=	ISNULL(@EntryUserID,LastUpdateUserID),
		EntrySystem	=	ISNULL(@EntrySystem,EntrySystem)
		WHERE	TableID=@TableID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ACT_accCOAHeadSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACT_accCOAHeadSetup]
		(
		@AccountNo				INT,
		@ParentAccNo			INT,
		@AccountTypeID			INT,
		@AccountName			VARCHAR(40),
		@SeqNo					INT,
		@TierNo					INT,
		@AccountDescription		VARCHAR(500),
		@SerialNo				INT,
		@CompanyID				INT,
		@BranchID				INT,
		@IsBudgetRelated		BIT,
		@AnalysisRequired		VARCHAR(1),
		@EntryUserName		VARCHAR(50)		
		)
AS
BEGIN
DECLARE @EntryUserID uniqueidentifier
SET @EntryUserID = '160ea939-7633-46a8-ae49-f661d12abfd5'
	IF @ParentAccNo != 0
	BEGIN
	update accCOAHeadSetup set SeqNo = SeqNo+1 where SeqNo >= @SeqNo 
	INSERT INTO accCOAHeadSetup 
			(
			AccountNo,
			ParentAccNo,
			AccountTypeID,
			AccountName,
			AccountDescription,
			EntryDate,
			SeqNo,
			TierNo,
			SerialNo,
			CompanyID,
			BranchID,
			IsBudgetRelated,
			AnalysisRequired,
			EntryUserID
			) 
			VALUES 
			(
			@AccountNo,			
			@ParentAccNo,		
			@AccountTypeID,		
			@AccountName,		
			@AccountDescription,
			GETDATE(),
			@SeqNo,
			@TierNo,
			@SerialNo,
			@CompanyID,
			@BranchID,
			@IsBudgetRelated,
			@AnalysisRequired,
			@EntryUserID
			) 
	END
ELSE
	BEGIN
	INSERT INTO accCOAHeadSetup 
			(
			AccountNo,
			AccountTypeID,
			AccountName,
			AccountDescription,
			EntryDate,
			SeqNo,
			TierNo,
			SerialNo,
			CompanyID,
			BranchID,
			IsBudgetRelated,
			AnalysisRequired,
			EntryUserID
			) 
			VALUES 
			(
			@AccountNo,	
			@AccountTypeID,		
			@AccountName,		
			@AccountDescription,
			GETDATE(),
			@SeqNo,
			@TierNo,
			@SerialNo,
			@CompanyID,
			@BranchID,
			@IsBudgetRelated,
			@AnalysisRequired,
			@EntryUserID
			) 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ACT_accCOAAccountTypeSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACT_accCOAAccountTypeSetup]
		(
		@CompanyID					INT,
		@BranchID					INT,
		@AccountTypeID				INT,
		@AccountTypeName			VARCHAR(500),
		@AccountStatus				BIT,
		@DataUsed					VARCHAR(1),
		@EntryUserID				UNIQUEIDENTIFIER,
		@EntryDate					DATETIME,
		@LastUpdateDate				DATETIME,
		@LastUpdateUserID			UNIQUEIDENTIFIER,
		@tx_tag						VARCHAR(10)
		)
AS

BEGIN
	IF(@tx_tag = 'INSERT')
	BEGIN
		INSERT INTO accCOAAccountTypeSetup 
		(
		CompanyID,
		BranchID,
		AccountTypeID,
		AccountTypeName,
		AccountStatus,
		DataUsed,
		EntryUserID,
		EntryDate
		) 
		VALUES 
		(
		@CompanyID,
		@BranchID,
		@AccountTypeID,
		@AccountTypeName,
		@AccountStatus,
		@DataUsed,
		@EntryUserID,
		@EntryDate
		) 
	END
	IF(@tx_tag ='UPDATE')
	BEGIN
		UPDATE accCOAAccountTypeSetup
		SET
		CompanyID	=	ISNULL(@CompanyID,CompanyID),
		BranchID	=	ISNULL(@BranchID,BranchID),
		AccountTypeID	=	ISNULL(@AccountTypeID,AccountTypeID),
		AccountTypeName	=	ISNULL(@AccountTypeName,AccountTypeName),
		AccountStatus	=	ISNULL(@AccountStatus,AccountStatus),
		DataUsed	=	ISNULL(@DataUsed,DataUsed),
		LastUpdateDate	=	ISNULL(@LastUpdateDate,LastUpdateDate),
		LastUpdateUserID	=	ISNULL(@LastUpdateUserID,LastUpdateUserID)
		WHERE	CompanyID=@CompanyID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[ACT_accAccNoWiseSubHeadSetup]    Script Date: 07/18/2017 10:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ACT_accAccNoWiseSubHeadSetup]
		(
		@CompanyID			TINYINT,
		@BranchID			INT,
		@AccountCode		INT,
		@SubledgerTypeID	VARCHAR(5),
		@SubLedgerID		VARCHAR(10),		
		@EntryUserID		VARCHAR(5)
		)
AS
BEGIN
DECLARE @SubLineNo			INT
SET @SubLineNo = (SELECT ISNULL( MAX(SubLineNo),0)+1 AS SubLineNo  FROM accAccNoWiseSubHeadSetup)		
	INSERT INTO accAccNoWiseSubHeadSetup 
		(
		CompanyID,
		BranchID,
		AccountCode,
		SubledgerTypeID,
		SubLedgerID,
		SubLineNo,
		BalanceCheck,
		DataUsed,
		EntryUserID,
		EntryDate
		) 
		VALUES 
		(
		@CompanyID,
		@BranchID,
		@AccountCode,
		@SubledgerTypeID,
		@SubLedgerID,
		@SubLineNo,
		'N',
		'Y',
		NEWID(),
		GETDATE()
		) 
	END
GO
/****** Object:  Default [DF_uUserList_UserID_1]    Script Date: 07/18/2017 10:58:07 ******/
ALTER TABLE [dbo].[uUserList] ADD  CONSTRAINT [DF_uUserList_UserID_1]  DEFAULT (newid()) FOR [UserID]
GO
/****** Object:  ForeignKey [FK_orgOrganizationElements_orgStandardOrgElements]    Script Date: 07/18/2017 10:58:41 ******/
ALTER TABLE [dbo].[orgOrganizationElements]  WITH CHECK ADD  CONSTRAINT [FK_orgOrganizationElements_orgStandardOrgElements] FOREIGN KEY([OrgElementID])
REFERENCES [dbo].[orgStandardOrgElements] ([OrgElementID])
GO
ALTER TABLE [dbo].[orgOrganizationElements] CHECK CONSTRAINT [FK_orgOrganizationElements_orgStandardOrgElements]
GO
/****** Object:  ForeignKey [RoleApplication]    Script Date: 07/18/2017 10:58:41 ******/
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [RoleApplication] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Applications] ([ApplicationID])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [RoleApplication]
GO
/****** Object:  ForeignKey [UserProfile]    Script Date: 07/18/2017 10:58:41 ******/
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [UserProfile] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [UserProfile]
GO
/****** Object:  ForeignKey [FK_orgEmployeeChart_hrEmployeeSetup]    Script Date: 07/18/2017 10:58:41 ******/
ALTER TABLE [dbo].[orgEmployeeChart]  WITH CHECK ADD  CONSTRAINT [FK_orgEmployeeChart_hrEmployeeSetup] FOREIGN KEY([ReferenceID])
REFERENCES [dbo].[hrEmployeeSetup] ([ReferenceID])
GO
ALTER TABLE [dbo].[orgEmployeeChart] CHECK CONSTRAINT [FK_orgEmployeeChart_hrEmployeeSetup]
GO
/****** Object:  ForeignKey [MembershipUser]    Script Date: 07/18/2017 10:58:41 ******/
ALTER TABLE [dbo].[Memberships]  WITH CHECK ADD  CONSTRAINT [MembershipUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Memberships] CHECK CONSTRAINT [MembershipUser]
GO
/****** Object:  ForeignKey [FK_empDesignation_hrEmployeeSetup]    Script Date: 07/18/2017 10:58:41 ******/
ALTER TABLE [dbo].[empDesignation]  WITH CHECK ADD  CONSTRAINT [FK_empDesignation_hrEmployeeSetup] FOREIGN KEY([ReferenceID])
REFERENCES [dbo].[hrEmployeeSetup] ([ReferenceID])
GO
ALTER TABLE [dbo].[empDesignation] CHECK CONSTRAINT [FK_empDesignation_hrEmployeeSetup]
GO
