USE [master]
GO
/****** Object:  Database [Samples]    Script Date: 11/21/2017 12:00:01 PM ******/
CREATE DATABASE [Samples]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Samples', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Samples.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Samples_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Samples_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Samples] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Samples].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Samples] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Samples] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Samples] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Samples] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Samples] SET ARITHABORT OFF 
GO
ALTER DATABASE [Samples] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Samples] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Samples] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Samples] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Samples] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Samples] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Samples] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Samples] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Samples] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Samples] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Samples] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Samples] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Samples] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Samples] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Samples] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Samples] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Samples] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Samples] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Samples] SET  MULTI_USER 
GO
ALTER DATABASE [Samples] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Samples] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Samples] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Samples] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Samples] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Samples] SET QUERY_STORE = OFF
GO
USE [Samples]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Samples]
GO
/****** Object:  Table [dbo].[tblEmployees]    Script Date: 11/21/2017 12:00:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblEmployees] ON 

INSERT [dbo].[tblEmployees] ([EmployeeID], [EmployeeName], [EmailAddress], [PhoneNumber]) VALUES (1, N'Name1', N'Email1@test.com', N'493075244')
INSERT [dbo].[tblEmployees] ([EmployeeID], [EmployeeName], [EmailAddress], [PhoneNumber]) VALUES (2, N'Name2', N'Email2@test.com', N'1321353291')
INSERT [dbo].[tblEmployees] ([EmployeeID], [EmployeeName], [EmailAddress], [PhoneNumber]) VALUES (3, N'Name3', N'Email3@test.com', N'1910367622')
INSERT [dbo].[tblEmployees] ([EmployeeID], [EmployeeName], [EmailAddress], [PhoneNumber]) VALUES (4, N'Name4', N'Email4@test.com', N'1576620524')
INSERT [dbo].[tblEmployees] ([EmployeeID], [EmployeeName], [EmailAddress], [PhoneNumber]) VALUES (5, N'Name5', N'Email5@test.com', N'411133143')
INSERT [dbo].[tblEmployees] ([EmployeeID], [EmployeeName], [EmailAddress], [PhoneNumber]) VALUES (6, N'Name6', N'Email6@test.com', N'122444906')
INSERT [dbo].[tblEmployees] ([EmployeeID], [EmployeeName], [EmailAddress], [PhoneNumber]) VALUES (7, N'Name7', N'Email7@test.com', N'1902521141')
INSERT [dbo].[tblEmployees] ([EmployeeID], [EmployeeName], [EmailAddress], [PhoneNumber]) VALUES (8, N'Name8', N'Email8@test.com', N'1670140462')
INSERT [dbo].[tblEmployees] ([EmployeeID], [EmployeeName], [EmailAddress], [PhoneNumber]) VALUES (9, N'Name9', N'Email9@test.com', N'1669995904')
INSERT [dbo].[tblEmployees] ([EmployeeID], [EmployeeName], [EmailAddress], [PhoneNumber]) VALUES (10, N'Name10', N'Email10@test.com', N'1127644659')
SET IDENTITY_INSERT [dbo].[tblEmployees] OFF
/****** Object:  StoredProcedure [dbo].[usp_GetEmployees]    Script Date: 11/21/2017 12:00:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec [dbo].[usp_GetEmployees]
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetEmployees] 
	-- Add the parameters for the stored procedure here	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
			EmployeeID
			,EmployeeName
			,EmailAddress
			,PhoneNumber
	FROM [dbo].[tblEmployees]
END
GO
USE [master]
GO
ALTER DATABASE [Samples] SET  READ_WRITE 
GO
