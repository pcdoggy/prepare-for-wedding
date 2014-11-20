USE [master]
GO
CREATE DATABASE [prepare for wedding] ON  PRIMARY 
( NAME = N'prepare for wedding', FILENAME = N'D:\data\default\prepare for wedding\prepare for wedding.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'prepare for wedding_log', FILENAME = N'D:\data\default\prepare for wedding\prepare for wedding_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [prepare for wedding] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prepare for wedding].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prepare for wedding] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [prepare for wedding] SET ANSI_NULLS OFF
GO
ALTER DATABASE [prepare for wedding] SET ANSI_PADDING OFF
GO
ALTER DATABASE [prepare for wedding] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [prepare for wedding] SET ARITHABORT OFF
GO
ALTER DATABASE [prepare for wedding] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [prepare for wedding] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [prepare for wedding] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [prepare for wedding] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [prepare for wedding] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [prepare for wedding] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [prepare for wedding] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [prepare for wedding] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [prepare for wedding] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [prepare for wedding] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [prepare for wedding] SET  DISABLE_BROKER
GO
ALTER DATABASE [prepare for wedding] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [prepare for wedding] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [prepare for wedding] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [prepare for wedding] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [prepare for wedding] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [prepare for wedding] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [prepare for wedding] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [prepare for wedding] SET  READ_WRITE
GO
ALTER DATABASE [prepare for wedding] SET RECOVERY FULL
GO
ALTER DATABASE [prepare for wedding] SET  MULTI_USER
GO
ALTER DATABASE [prepare for wedding] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [prepare for wedding] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'prepare for wedding', N'ON'
GO
