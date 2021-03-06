USE [master]
GO
/****** Object:  Database [LSEGA]    Script Date: 2020/05/30 08:38:16 p. m. ******/
CREATE DATABASE [LSEGA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LSEGA', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LSEGA.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LSEGA_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LSEGA_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LSEGA] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LSEGA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LSEGA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LSEGA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LSEGA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LSEGA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LSEGA] SET ARITHABORT OFF 
GO
ALTER DATABASE [LSEGA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LSEGA] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LSEGA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LSEGA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LSEGA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LSEGA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LSEGA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LSEGA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LSEGA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LSEGA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LSEGA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LSEGA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LSEGA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LSEGA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LSEGA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LSEGA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LSEGA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LSEGA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LSEGA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LSEGA] SET  MULTI_USER 
GO
ALTER DATABASE [LSEGA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LSEGA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LSEGA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LSEGA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LSEGA]
GO
/****** Object:  Table [dbo].[Bebida]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bebida](
	[idBebida] [nchar](10) NULL,
	[NomBebida] [varchar](50) NULL,
	[Costo] [int] NULL,
	[idProducto] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[aParterno] [varchar](50) NOT NULL,
	[aMaterno] [varchar](50) NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[FechaN] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[idDepartamento] [varchar](50) NULL,
	[Puesto] [varchar](50) NULL,
	[NombreD] [varchar](50) NULL,
	[Sueldo] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetalleFac]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleFac](
	[idFactura] [nchar](10) NULL,
	[NumFactura] [int] NULL,
	[Concepto] [nchar](10) NULL,
	[idVenta] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direccion](
	[idDireccion] [nchar](10) NULL,
	[Calle] [varchar](50) NULL,
	[NumeroCasa] [int] NULL,
	[Colonia] [varchar](50) NULL,
	[Ciudad] [varchar](50) NULL,
	[Estado] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [nchar](10) NULL,
	[Nombre] [varchar](50) NOT NULL,
	[aPaterno] [varchar](50) NOT NULL,
	[aMaterno] [varchar](50) NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[FechaN] [nchar](20) NULL,
	[Telefono] [nchar](20) NULL,
	[Email] [varchar](50) NOT NULL,
	[idDepartamento] [varchar](50) NOT NULL,
	[idTurno] [varchar](50) NOT NULL,
	[idDireccion] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entrega]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrega](
	[idEntrega] [nchar](10) NOT NULL,
	[FechaDeEntrega] [date] NOT NULL,
	[APagar] [nchar](10) NOT NULL,
	[idProveedor] [nchar](10) NOT NULL,
	[idMPago] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Establecimient]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Establecimient](
	[idEstablecimiento] [nchar](10) NOT NULL,
	[Telefono] [nchar](20) NULL,
	[Email] [nchar](30) NULL,
	[idEmpleado] [nchar](10) NOT NULL,
	[idDireccion] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Establecimiento]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Establecimiento](
	[idEstablecimiento] [nchar](10) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Email] [nchar](10) NOT NULL,
	[idEmpleado] [nchar](10) NOT NULL,
	[idDireccion] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mesa](
	[idMesa] [varchar](50) NOT NULL,
	[idPedido] [varchar](50) NOT NULL,
	[idEmpleado] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MetodoDePago]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetodoDePago](
	[idMPago] [nchar](10) NOT NULL,
	[MetodoDePago] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[idPedido] [nchar](10) NOT NULL,
	[Fecha] [nchar](10) NOT NULL,
	[idEstablecimiento] [nchar](10) NOT NULL,
	[idCliente] [nchar](10) NOT NULL,
	[idEmpleado] [nchar](10) NOT NULL,
	[idPlatillo] [nchar](10) NOT NULL,
	[idBebida] [nchar](10) NOT NULL,
	[idMesa] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Platillo]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platillo](
	[idPlatillo] [int] NULL,
	[NomPlatillo] [varchar](50) NULL,
	[Costo] [varchar](50) NULL,
	[idProducto] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[idProducto] [nchar](10) NULL,
	[NomProducto] [varchar](50) NULL,
	[Marca] [varchar](50) NULL,
	[Costo] [int] NULL,
	[Cantidad] [int] NULL,
	[FechaVencimiento] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[idProveedor] [nchar](10) NOT NULL,
	[NomProveedor] [nchar](10) NOT NULL,
	[Marca] [nchar](10) NOT NULL,
	[idProducto] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Turno]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Turno](
	[idTurno] [nchar](10) NULL,
	[Turno] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 2020/05/30 08:38:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [nchar](10) NOT NULL,
	[Total] [int] NOT NULL,
	[idPedido] [nchar](10) NOT NULL,
	[idPago] [nchar](10) NOT NULL,
	[idPlatillo] [nchar](10) NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY NONCLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_Marca]    Script Date: 2020/05/30 08:38:16 p. m. ******/
CREATE CLUSTERED INDEX [IDX_Marca] ON [dbo].[Proveedor]
(
	[Marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_idPedido]    Script Date: 2020/05/30 08:38:16 p. m. ******/
CREATE CLUSTERED INDEX [IDX_idPedido] ON [dbo].[Venta]
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_idProducto]    Script Date: 2020/05/30 08:38:16 p. m. ******/
CREATE NONCLUSTERED INDEX [IDX_idProducto] ON [dbo].[Proveedor]
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_idVenta]    Script Date: 2020/05/30 08:38:16 p. m. ******/
CREATE NONCLUSTERED INDEX [IDX_idVenta] ON [dbo].[Venta]
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [LSEGA] SET  READ_WRITE 
GO
