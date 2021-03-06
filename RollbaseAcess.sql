USE [master]
GO
/****** Object:  Database [RollbaseAccess]    Script Date: 6/24/2022 8:45:59 PM ******/
CREATE DATABASE [RollbaseAccess]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RollbaseAccess', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL13.RDB1\MSSQL\DATA\RollbaseAccess.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RollbaseAccess_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL13.RDB1\MSSQL\DATA\RollbaseAccess_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [RollbaseAccess] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RollbaseAccess].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RollbaseAccess] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RollbaseAccess] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RollbaseAccess] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RollbaseAccess] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RollbaseAccess] SET ARITHABORT OFF 
GO
ALTER DATABASE [RollbaseAccess] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RollbaseAccess] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RollbaseAccess] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RollbaseAccess] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RollbaseAccess] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RollbaseAccess] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RollbaseAccess] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RollbaseAccess] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RollbaseAccess] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RollbaseAccess] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RollbaseAccess] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RollbaseAccess] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RollbaseAccess] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RollbaseAccess] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RollbaseAccess] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RollbaseAccess] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RollbaseAccess] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RollbaseAccess] SET RECOVERY FULL 
GO
ALTER DATABASE [RollbaseAccess] SET  MULTI_USER 
GO
ALTER DATABASE [RollbaseAccess] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RollbaseAccess] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RollbaseAccess] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RollbaseAccess] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RollbaseAccess] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RollbaseAccess] SET QUERY_STORE = OFF
GO
USE [RollbaseAccess]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [RollbaseAccess]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 6/24/2022 8:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Invoice_No] [int] NULL,
	[Invoice_date] [datetime] NULL,
	[InvoiceType] [varchar](50) NULL,
	[IssuedBy] [varchar](50) NULL,
	[IssuedTo] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 6/24/2022 8:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RoleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMainMenu]    Script Date: 6/24/2022 8:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMainMenu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MainMenu] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 6/24/2022 8:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Roles] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles1]    Script Date: 6/24/2022 8:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Roles] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubMenu]    Script Date: 6/24/2022 8:46:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubMenu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubMenu] [varchar](50) NULL,
	[Controller] [varchar](50) NULL,
	[Action] [varchar](20) NULL,
	[MainMenuID] [int] NULL,
	[RoleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblLogin] ON 

INSERT [dbo].[tblLogin] ([ID], [UserName], [Password], [RoleID]) VALUES (1, N'arun', N'arun', 1)
INSERT [dbo].[tblLogin] ([ID], [UserName], [Password], [RoleID]) VALUES (2, N'kanak', N'kanak', 2)
INSERT [dbo].[tblLogin] ([ID], [UserName], [Password], [RoleID]) VALUES (3, N'Binod', N'Binod', 3)
SET IDENTITY_INSERT [dbo].[tblLogin] OFF
SET IDENTITY_INSERT [dbo].[tblMainMenu] ON 

INSERT [dbo].[tblMainMenu] ([ID], [MainMenu]) VALUES (1, N'Home')
INSERT [dbo].[tblMainMenu] ([ID], [MainMenu]) VALUES (2, N'Sales')
INSERT [dbo].[tblMainMenu] ([ID], [MainMenu]) VALUES (3, N'Report')
SET IDENTITY_INSERT [dbo].[tblMainMenu] OFF
SET IDENTITY_INSERT [dbo].[tblRoles] ON 

INSERT [dbo].[tblRoles] ([ID], [Roles]) VALUES (1, N'ADMIN')
INSERT [dbo].[tblRoles] ([ID], [Roles]) VALUES (2, N'MAKER')
INSERT [dbo].[tblRoles] ([ID], [Roles]) VALUES (3, N'CKECKER')
SET IDENTITY_INSERT [dbo].[tblRoles] OFF
SET IDENTITY_INSERT [dbo].[tblSubMenu] ON 

INSERT [dbo].[tblSubMenu] ([ID], [SubMenu], [Controller], [Action], [MainMenuID], [RoleID]) VALUES (1, N'Index', N'Home', N'Index', 1, 1)
INSERT [dbo].[tblSubMenu] ([ID], [SubMenu], [Controller], [Action], [MainMenuID], [RoleID]) VALUES (2, N'Index', N'Home', N'Index', 1, 2)
INSERT [dbo].[tblSubMenu] ([ID], [SubMenu], [Controller], [Action], [MainMenuID], [RoleID]) VALUES (3, N'AboutUs', N'Home', N'Index', 1, 3)
INSERT [dbo].[tblSubMenu] ([ID], [SubMenu], [Controller], [Action], [MainMenuID], [RoleID]) VALUES (4, N'AboutUs', N'Home', NULL, 2, 1)
INSERT [dbo].[tblSubMenu] ([ID], [SubMenu], [Controller], [Action], [MainMenuID], [RoleID]) VALUES (5, N'New Invoice', N'Sales', N'New Invoice', 2, 2)
INSERT [dbo].[tblSubMenu] ([ID], [SubMenu], [Controller], [Action], [MainMenuID], [RoleID]) VALUES (6, N'Update Invoice', N'sales', N'Update Invoice', 2, 1)
SET IDENTITY_INSERT [dbo].[tblSubMenu] OFF
ALTER TABLE [dbo].[tblLogin]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblRoles] ([ID])
GO
ALTER TABLE [dbo].[tblSubMenu]  WITH CHECK ADD FOREIGN KEY([MainMenuID])
REFERENCES [dbo].[tblMainMenu] ([ID])
GO
ALTER TABLE [dbo].[tblSubMenu]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblRoles] ([ID])
GO
USE [master]
GO
ALTER DATABASE [RollbaseAccess] SET  READ_WRITE 
GO
