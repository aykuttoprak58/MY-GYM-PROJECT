USE [master]
GO
/****** Object:  Database [FPDatabase]    Script Date: 21/04/2023 08:55:49 ******/
CREATE DATABASE [FPDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FPDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FPDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FPDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FPDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FPDatabase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FPDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FPDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FPDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FPDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FPDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FPDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [FPDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FPDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FPDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FPDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FPDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FPDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FPDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FPDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FPDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FPDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FPDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FPDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FPDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FPDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FPDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FPDatabase] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FPDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FPDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [FPDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [FPDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FPDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FPDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FPDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FPDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FPDatabase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FPDatabase', N'ON'
GO
ALTER DATABASE [FPDatabase] SET QUERY_STORE = OFF
GO
USE [FPDatabase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21/04/2023 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 21/04/2023 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutId] [int] IDENTITY(1,1) NOT NULL,
	[AboutDetails1] [nvarchar](max) NULL,
	[AboutDetails2] [nvarchar](max) NULL,
	[AboutImage1] [nvarchar](max) NULL,
	[AboutImage2] [nvarchar](max) NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 21/04/2023 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
	[CategoryDescription] [nvarchar](max) NULL,
	[CategoryStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 21/04/2023 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contents]    Script Date: 21/04/2023 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contents](
	[ContentId] [int] IDENTITY(1,1) NOT NULL,
	[ContentValue] [nvarchar](max) NULL,
	[ContentDate] [datetime2](7) NOT NULL,
	[HeadingId] [int] NOT NULL,
	[WriterId] [int] NULL,
 CONSTRAINT [PK_Contents] PRIMARY KEY CLUSTERED 
(
	[ContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Headings]    Script Date: 21/04/2023 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Headings](
	[HeadingId] [int] IDENTITY(1,1) NOT NULL,
	[HeadingName] [nvarchar](max) NULL,
	[HeadingDate] [datetime2](7) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[WriterId] [int] NOT NULL,
 CONSTRAINT [PK_Headings] PRIMARY KEY CLUSTERED 
(
	[HeadingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Writers]    Script Date: 21/04/2023 08:55:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Writers](
	[WriterId] [int] IDENTITY(1,1) NOT NULL,
	[WriterName] [nvarchar](max) NULL,
	[WriterSurName] [nvarchar](max) NULL,
	[WriterImage] [nvarchar](max) NULL,
	[WriterMail] [nvarchar](max) NULL,
	[WriterPassword] [nvarchar](max) NULL,
	[WriterAbout] [nvarchar](max) NULL,
	[WriterTitle] [nvarchar](max) NULL,
	[WriterStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Writers] PRIMARY KEY CLUSTERED 
(
	[WriterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230417064239_initial', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230418075112_second', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230418084219_third', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230418135438_nnn', N'7.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230419104611_status', N'7.0.5')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (1, N'MATEMATIK', NULL, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (2, N'FIZIK', NULL, 0)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (3, N'KIMYA', NULL, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (4, N'BIYOLOJI', NULL, 0)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (5, N'EDEBIYAT', NULL, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (6, N'DIL ANLATIM', NULL, 0)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (7, N'TARIH', NULL, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (8, N'COGRAFYA', NULL, 0)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (9, N'INGILIZCE', NULL, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (10, N'ALMANCA', NULL, 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contents] ON 

INSERT [dbo].[Contents] ([ContentId], [ContentValue], [ContentDate], [HeadingId], [WriterId]) VALUES (1, N'ICERIK 1', CAST(N'2001-01-15T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Contents] ([ContentId], [ContentValue], [ContentDate], [HeadingId], [WriterId]) VALUES (2, N'ICERIK 2', CAST(N'2001-01-15T00:00:00.0000000' AS DateTime2), 2, 2)
INSERT [dbo].[Contents] ([ContentId], [ContentValue], [ContentDate], [HeadingId], [WriterId]) VALUES (3, N'ICERIK 3', CAST(N'2001-01-15T00:00:00.0000000' AS DateTime2), 3, 3)
INSERT [dbo].[Contents] ([ContentId], [ContentValue], [ContentDate], [HeadingId], [WriterId]) VALUES (4, N'ICERIK 4', CAST(N'2001-01-15T00:00:00.0000000' AS DateTime2), 4, 4)
INSERT [dbo].[Contents] ([ContentId], [ContentValue], [ContentDate], [HeadingId], [WriterId]) VALUES (5, N'ICERIK 5', CAST(N'2001-01-15T00:00:00.0000000' AS DateTime2), 5, 5)
INSERT [dbo].[Contents] ([ContentId], [ContentValue], [ContentDate], [HeadingId], [WriterId]) VALUES (6, N'ICERIK 6', CAST(N'2001-01-15T00:00:00.0000000' AS DateTime2), 6, 6)
INSERT [dbo].[Contents] ([ContentId], [ContentValue], [ContentDate], [HeadingId], [WriterId]) VALUES (7, N'ICERIK 7', CAST(N'2001-01-15T00:00:00.0000000' AS DateTime2), 7, 7)
INSERT [dbo].[Contents] ([ContentId], [ContentValue], [ContentDate], [HeadingId], [WriterId]) VALUES (8, N'ICERIK 8', CAST(N'2001-01-15T00:00:00.0000000' AS DateTime2), 8, 8)
INSERT [dbo].[Contents] ([ContentId], [ContentValue], [ContentDate], [HeadingId], [WriterId]) VALUES (9, N'ICERIK 9', CAST(N'2001-01-15T00:00:00.0000000' AS DateTime2), 9, 9)
INSERT [dbo].[Contents] ([ContentId], [ContentValue], [ContentDate], [HeadingId], [WriterId]) VALUES (10, N'ICERIK 10', CAST(N'2001-01-15T00:00:00.0000000' AS DateTime2), 10, 10)
SET IDENTITY_INSERT [dbo].[Contents] OFF
GO
SET IDENTITY_INSERT [dbo].[Headings] ON 

INSERT [dbo].[Headings] ([HeadingId], [HeadingName], [HeadingDate], [CategoryId], [WriterId]) VALUES (1, N'ATOM MODELI', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Headings] ([HeadingId], [HeadingName], [HeadingDate], [CategoryId], [WriterId]) VALUES (2, N'EDEBIYAT TARIHI', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 2, 2)
INSERT [dbo].[Headings] ([HeadingId], [HeadingName], [HeadingDate], [CategoryId], [WriterId]) VALUES (3, N'SANAT TARIHI', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 3, 3)
INSERT [dbo].[Headings] ([HeadingId], [HeadingName], [HeadingDate], [CategoryId], [WriterId]) VALUES (4, N'MOMENTUM', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 4, 4)
INSERT [dbo].[Headings] ([HeadingId], [HeadingName], [HeadingDate], [CategoryId], [WriterId]) VALUES (5, N'ILAC KIMYASI', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 5, 5)
INSERT [dbo].[Headings] ([HeadingId], [HeadingName], [HeadingDate], [CategoryId], [WriterId]) VALUES (6, N'OSMANLI TARIHI', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 6, 6)
INSERT [dbo].[Headings] ([HeadingId], [HeadingName], [HeadingDate], [CategoryId], [WriterId]) VALUES (7, N'TURKIYE COGRAFYASI', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 7, 7)
INSERT [dbo].[Headings] ([HeadingId], [HeadingName], [HeadingDate], [CategoryId], [WriterId]) VALUES (8, N'TANZIMAT FERMANI', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 8, 8)
INSERT [dbo].[Headings] ([HeadingId], [HeadingName], [HeadingDate], [CategoryId], [WriterId]) VALUES (9, N'POLINOMLAR', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 9, 9)
INSERT [dbo].[Headings] ([HeadingId], [HeadingName], [HeadingDate], [CategoryId], [WriterId]) VALUES (10, N'CANLILAR', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 10, 10)
SET IDENTITY_INSERT [dbo].[Headings] OFF
GO
SET IDENTITY_INSERT [dbo].[Writers] ON 

INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterSurName], [WriterImage], [WriterMail], [WriterPassword], [WriterAbout], [WriterTitle], [WriterStatus]) VALUES (1, N'Ömer ', N'Seyfettin', N'data:image/jpeg;base64,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', N'a@gmail.com', NULL, NULL, NULL, 1)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterSurName], [WriterImage], [WriterMail], [WriterPassword], [WriterAbout], [WriterTitle], [WriterStatus]) VALUES (2, N'Peyami', N' Safa', N'data:image/png;base64,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', N'b@gmail.com', NULL, NULL, NULL, 0)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterSurName], [WriterImage], [WriterMail], [WriterPassword], [WriterAbout], [WriterTitle], [WriterStatus]) VALUES (3, N'Ahmet Hamdi ', N'Tanpınar', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQWiml8KD6SZOl2xUUqjk8r_PQBTT6O6-gAg&usqp=CAU', N'c@gmail.com', NULL, NULL, NULL, 1)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterSurName], [WriterImage], [WriterMail], [WriterPassword], [WriterAbout], [WriterTitle], [WriterStatus]) VALUES (4, N'Reşat Nuri  ', N'Güntekin', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyFK87OZFhVRa_ivaTbjY__gIIejfqXQkFDA&usqp=CAU', N'd@gmail.com', NULL, NULL, NULL, 0)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterSurName], [WriterImage], [WriterMail], [WriterPassword], [WriterAbout], [WriterTitle], [WriterStatus]) VALUES (5, N'Sait Faik ', N'Abasıyanık', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEGpYDABiGUurEUGhk5B4AxwLM2Qjk_Od6iA&usqp=CAU', N'e@gmail.com', NULL, NULL, NULL, 1)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterSurName], [WriterImage], [WriterMail], [WriterPassword], [WriterAbout], [WriterTitle], [WriterStatus]) VALUES (6, N'Sabahattin ', N'Ali', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ64AJi2dVeSwqPmoRVJYK-km3qBPO80i-p4Q&usqp=CAU', N'f@gmail.com', NULL, NULL, NULL, 0)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterSurName], [WriterImage], [WriterMail], [WriterPassword], [WriterAbout], [WriterTitle], [WriterStatus]) VALUES (7, N'Rıfat ', N'Ilgaz', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCqvujaRgCrWfKOYBriDa4xBemxoOmfTO0Gw&usqp=CAU', N'g@gmail.com', NULL, NULL, NULL, 1)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterSurName], [WriterImage], [WriterMail], [WriterPassword], [WriterAbout], [WriterTitle], [WriterStatus]) VALUES (8, N'Orhan ', N'Kemal ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBxZ_FCTqgiaIMb6tSvTNJMtoWD0Xpn6heBg&usqp=CAU', N'h@gmail.com', NULL, NULL, NULL, 0)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterSurName], [WriterImage], [WriterMail], [WriterPassword], [WriterAbout], [WriterTitle], [WriterStatus]) VALUES (9, N'Tarık ', N'Buğra', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4tl2u1sdU9MJILRiYvzWBA19Ig7n_vxDLQw&usqp=CAU', N'j@gmail.com', NULL, NULL, NULL, 1)
INSERT [dbo].[Writers] ([WriterId], [WriterName], [WriterSurName], [WriterImage], [WriterMail], [WriterPassword], [WriterAbout], [WriterTitle], [WriterStatus]) VALUES (10, N'Yaşar ', N'Kemal', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6A15yL58-V-NIYtjn9LPVVztcJE-XhTRpwQ&usqp=CAU', N'k@gmail.com', NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Writers] OFF
GO
/****** Object:  Index [IX_Contents_HeadingId]    Script Date: 21/04/2023 08:55:49 ******/
CREATE NONCLUSTERED INDEX [IX_Contents_HeadingId] ON [dbo].[Contents]
(
	[HeadingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Contents_WriterId]    Script Date: 21/04/2023 08:55:49 ******/
CREATE NONCLUSTERED INDEX [IX_Contents_WriterId] ON [dbo].[Contents]
(
	[WriterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Headings_CategoryId]    Script Date: 21/04/2023 08:55:49 ******/
CREATE NONCLUSTERED INDEX [IX_Headings_CategoryId] ON [dbo].[Headings]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Headings_WriterId]    Script Date: 21/04/2023 08:55:49 ******/
CREATE NONCLUSTERED INDEX [IX_Headings_WriterId] ON [dbo].[Headings]
(
	[WriterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Writers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [WriterStatus]
GO
ALTER TABLE [dbo].[Contents]  WITH CHECK ADD  CONSTRAINT [FK_Contents_Headings_HeadingId] FOREIGN KEY([HeadingId])
REFERENCES [dbo].[Headings] ([HeadingId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contents] CHECK CONSTRAINT [FK_Contents_Headings_HeadingId]
GO
ALTER TABLE [dbo].[Contents]  WITH CHECK ADD  CONSTRAINT [FK_Contents_Writers_WriterId] FOREIGN KEY([WriterId])
REFERENCES [dbo].[Writers] ([WriterId])
GO
ALTER TABLE [dbo].[Contents] CHECK CONSTRAINT [FK_Contents_Writers_WriterId]
GO
ALTER TABLE [dbo].[Headings]  WITH CHECK ADD  CONSTRAINT [FK_Headings_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Headings] CHECK CONSTRAINT [FK_Headings_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Headings]  WITH CHECK ADD  CONSTRAINT [FK_Headings_Writers_WriterId] FOREIGN KEY([WriterId])
REFERENCES [dbo].[Writers] ([WriterId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Headings] CHECK CONSTRAINT [FK_Headings_Writers_WriterId]
GO
USE [master]
GO
ALTER DATABASE [FPDatabase] SET  READ_WRITE 
GO
