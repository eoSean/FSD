USE [master]
GO
/****** Object:  Database [dbDemo]    Script Date: 2023/1/5 下午 04:26:11 ******/
CREATE DATABASE [dbDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbDemo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbDemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbDemo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbDemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbDemo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbDemo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbDemo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbDemo] SET RECOVERY FULL 
GO
ALTER DATABASE [dbDemo] SET  MULTI_USER 
GO
ALTER DATABASE [dbDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbDemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbDemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbDemo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbDemo', N'ON'
GO
ALTER DATABASE [dbDemo] SET QUERY_STORE = OFF
GO
USE [dbDemo]
GO
/****** Object:  Table [dbo].[tCustomer]    Script Date: 2023/1/5 下午 04:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCustomer](
	[fId] [int] IDENTITY(1,1) NOT NULL,
	[fName] [nchar](50) NULL,
	[fPhone] [nchar](50) NULL,
	[fEmail] [nchar](50) NULL,
	[fAddress] [nchar](50) NULL,
	[fPassword] [nchar](50) NULL,
 CONSTRAINT [PK_tCoustomer] PRIMARY KEY CLUSTERED 
(
	[fId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tCustomer] ON 

INSERT [dbo].[tCustomer] ([fId], [fName], [fPhone], [fEmail], [fAddress], [fPassword]) VALUES (1, N'Marco                                             ', N'0938547658                                        ', N'marco@gmail.com                                   ', N'Taipei                                            ', N'1234                                              ')
INSERT [dbo].[tCustomer] ([fId], [fName], [fPhone], [fEmail], [fAddress], [fPassword]) VALUES (2, N'Selina                                            ', N'0963258462                                        ', N'selina@gmail.com                                  ', N'Tainan                                            ', N'1234                                              ')
SET IDENTITY_INSERT [dbo].[tCustomer] OFF
GO
USE [master]
GO
ALTER DATABASE [dbDemo] SET  READ_WRITE 
GO
