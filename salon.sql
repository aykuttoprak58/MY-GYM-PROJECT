USE [master]
GO
/****** Object:  Database [SALON]    Script Date: 01/01/2023 20:56:42 ******/
CREATE DATABASE [SALON]
GO
USE [SALON]
GO

CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 01/01/2023 20:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](15) NULL,
	[Surname] [nvarchar](15) NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](6) NULL,
	[Height] [int] NULL,
	[Weight] [int] NULL,
	[Email] [nvarchar](30) NULL,
	[Phone] [nvarchar](20) NULL,
	[SalonId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[TranierId] [int] NOT NULL,
	[TimeId] [int] NOT NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salon]    Script Date: 01/01/2023 20:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salon](
	[SalonId] [int] IDENTITY(1,1) NOT NULL,
	[SalonName] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_SALON] PRIMARY KEY CLUSTERED 
(
	[SalonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 01/01/2023 20:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[TimeId] [int] IDENTITY(1,1) NOT NULL,
	[TimeName] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Time] PRIMARY KEY CLUSTERED 
(
	[TimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tranier]    Script Date: 01/01/2023 20:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tranier](
	[TranierId] [int] IDENTITY(1,1) NOT NULL,
	[TranierName] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Tranier] PRIMARY KEY CLUSTERED 
(
	[TranierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 01/01/2023 20:56:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseId], [CourseName]) VALUES (1, N'BOXING')
INSERT [dbo].[Course] ([CourseId], [CourseName]) VALUES (2, N'KICBOXING')
INSERT [dbo].[Course] ([CourseId], [CourseName]) VALUES (3, N'WRESTLING')
INSERT [dbo].[Course] ([CourseId], [CourseName]) VALUES (4, N'MUAY THAI')
INSERT [dbo].[Course] ([CourseId], [CourseName]) VALUES (5, N'BOXING')
INSERT [dbo].[Course] ([CourseId], [CourseName]) VALUES (6, N'MMA')
INSERT [dbo].[Course] ([CourseId], [CourseName]) VALUES (7, N'JUDO')
INSERT [dbo].[Course] ([CourseId], [CourseName]) VALUES (9, N'WRESTLING')
INSERT [dbo].[Course] ([CourseId], [CourseName]) VALUES (10, N'KARATE')
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Salon] ON 

INSERT [dbo].[Salon] ([SalonId], [SalonName]) VALUES (1, N'ATASEHIR')
INSERT [dbo].[Salon] ([SalonId], [SalonName]) VALUES (2, N'USKUDAR')
INSERT [dbo].[Salon] ([SalonId], [SalonName]) VALUES (3, N'UMRANIYE')
INSERT [dbo].[Salon] ([SalonId], [SalonName]) VALUES (4, N'TUZLA')
INSERT [dbo].[Salon] ([SalonId], [SalonName]) VALUES (5, N'PENDIK')
INSERT [dbo].[Salon] ([SalonId], [SalonName]) VALUES (6, N'KADIKOY')
INSERT [dbo].[Salon] ([SalonId], [SalonName]) VALUES (7, N'ESENLER')
INSERT [dbo].[Salon] ([SalonId], [SalonName]) VALUES (8, N'ESENYURT')
SET IDENTITY_INSERT [dbo].[Salon] OFF
GO
SET IDENTITY_INSERT [dbo].[Time] ON 

INSERT [dbo].[Time] ([TimeId], [TimeName]) VALUES (1, N'MORNING')
INSERT [dbo].[Time] ([TimeId], [TimeName]) VALUES (2, N'NOON')
INSERT [dbo].[Time] ([TimeId], [TimeName]) VALUES (3, N'NIGHT')
SET IDENTITY_INSERT [dbo].[Time] OFF
GO
SET IDENTITY_INSERT [dbo].[Tranier] ON 

INSERT [dbo].[Tranier] ([TranierId], [TranierName]) VALUES (1, N'GOKHAN SAKI')
INSERT [dbo].[Tranier] ([TranierId], [TranierName]) VALUES (2, N'KHABIB NURMANDEGEDOV')
INSERT [dbo].[Tranier] ([TranierId], [TranierName]) VALUES (3, N'MIKE TYSON')
INSERT [dbo].[Tranier] ([TranierId], [TranierName]) VALUES (4, N'HAMZA YERLIKAYA')
INSERT [dbo].[Tranier] ([TranierId], [TranierName]) VALUES (5, N'YURI BOYKA')
SET IDENTITY_INSERT [dbo].[Tranier] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [Username], [Password]) VALUES (1, N'YAVUZSULTAN', N'123')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Course]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Salon] FOREIGN KEY([SalonId])
REFERENCES [dbo].[Salon] ([SalonId])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Salon]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Time1] FOREIGN KEY([TimeId])
REFERENCES [dbo].[Time] ([TimeId])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Time1]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_Tranier] FOREIGN KEY([TranierId])
REFERENCES [dbo].[Tranier] ([TranierId])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_Tranier]
GO
USE [master]
GO
ALTER DATABASE [SALON] SET  READ_WRITE 
GO
