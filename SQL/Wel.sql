USE [master]
GO
/****** Object:  Database [WelTechSqlCourseHomeWork]    Script Date: 06-02-2023 10:48:45 AM ******/
CREATE DATABASE [WelTechSqlCourseHomeWork]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WelTechSqlCourseHomeWork', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WelTechSqlCourseHomeWork.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WelTechSqlCourseHomeWork_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WelTechSqlCourseHomeWork_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WelTechSqlCourseHomeWork].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET ARITHABORT OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET  MULTI_USER 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [WelTechSqlCourseHomeWork]
GO
/****** Object:  Table [dbo].[BloodGroupMaster]    Script Date: 06-02-2023 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodGroupMaster](
	[BGId] [int] IDENTITY(1,1) NOT NULL,
	[BGName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_BloodGroupMaster] PRIMARY KEY CLUSTERED 
(
	[BGId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CastMaster]    Script Date: 06-02-2023 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CastMaster](
	[Castd] [int] IDENTITY(1,1) NOT NULL,
	[CastName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_CastMaster] PRIMARY KEY CLUSTERED 
(
	[Castd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 06-02-2023 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityMaster](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NULL,
	[CityName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_CityMaster] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryMaster]    Script Date: 06-02-2023 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryMaster](
	[CountyId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED 
(
	[CountyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeMaster]    Script Date: 06-02-2023 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeMaster](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[MiddleName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[DateofBirth] [date] NULL,
	[Age] [nvarchar](3) NULL,
	[FatherOrHusbandName] [nvarchar](100) NULL,
	[Gender] [nvarchar](6) NULL,
	[MaritalStatus] [nvarchar](15) NULL,
	[Citizenship] [bit] NULL,
	[Height] [nvarchar](15) NULL,
	[Weight] [nvarchar](15) NULL,
	[BloodGroupId] [int] NULL,
	[Caste] [int] NULL,
	[SubCaste] [int] NULL,
	[Religion] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateOn] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateOn] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_EmployeeMaster] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesMaster2]    Script Date: 06-02-2023 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesMaster2](
	[Employeeld] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[MobileNo] [nvarchar](20) NULL,
	[Pincode] [int] NULL,
	[EmadID] [nvarchar](150) NULL,
	[Price] [decimal](10, 2) NULL,
	[Qty] [int] NULL,
	[RegistrationOate] [datetime] NULL,
	[Birthdate] [date] NULL,
	[OfficeOpenTime] [time](7) NULL,
	[CreateBy] [int] NULL,
	[CreateOn] [datetime] NULL,
	[UpdateBy] [int] NULL,
	[UpdateOn] [datetime] NULL,
 CONSTRAINT [PK_Employees Master2] PRIMARY KEY CLUSTERED 
(
	[Employeeld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReligionMaster]    Script Date: 06-02-2023 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReligionMaster](
	[ReligionId] [int] IDENTITY(1,1) NOT NULL,
	[ReligionName] [nvarchar](50) NULL,
	[IsActive
IsActive] [bit] NULL,
 CONSTRAINT [PK_ReligionMaster] PRIMARY KEY CLUSTERED 
(
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 06-02-2023 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateMaster](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[CoutryId] [int] NULL,
	[StateName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_StateMaster] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCastMaster]    Script Date: 06-02-2023 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCastMaster](
	[SubCastd] [int] IDENTITY(1,1) NOT NULL,
	[CastId] [int] NULL,
	[SubCastName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_SubCastMaster] PRIMARY KEY CLUSTERED 
(
	[SubCastd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 06-02-2023 10:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubCastMaster]  WITH CHECK ADD  CONSTRAINT [FK_SubCastMaster_CastMaster] FOREIGN KEY([CastId])
REFERENCES [dbo].[CastMaster] ([Castd])
GO
ALTER TABLE [dbo].[SubCastMaster] CHECK CONSTRAINT [FK_SubCastMaster_CastMaster]
GO
USE [master]
GO
ALTER DATABASE [WelTechSqlCourseHomeWork] SET  READ_WRITE 
GO
