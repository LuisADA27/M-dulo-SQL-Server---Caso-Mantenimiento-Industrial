USE [master]
GO
/****** Object:  Database [DSRP_caso_mantenimiento_industrial]    Script Date: 16/12/2024 21:39:14 ******/
CREATE DATABASE [DSRP_caso_mantenimiento_industrial]
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DSRP_caso_mantenimiento_industrial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET ARITHABORT OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET RECOVERY FULL 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET  MULTI_USER 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DSRP_caso_mantenimiento_industrial', N'ON'
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET QUERY_STORE = ON
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DSRP_caso_mantenimiento_industrial]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = OFF;
GO
USE [DSRP_caso_mantenimiento_industrial]
GO
/****** Object:  Table [dbo].[Asignacion_tecnico]    Script Date: 16/12/2024 21:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignacion_tecnico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mantenimiento_id] [int] NOT NULL,
	[tecnico_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 16/12/2024 21:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[direccion] [varchar](255) NOT NULL,
	[per_contacto] [varchar](255) NOT NULL,
	[telefono] [varchar](255) NOT NULL,
	[correo] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 16/12/2024 21:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cliente_id] [int] NOT NULL,
	[fecha_inicio] [date] NOT NULL,
	[fecha_vencimiento] [date] NOT NULL,
	[servicio_incluido] [varchar](255) NOT NULL,
	[estado_contrato] [varchar](255) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[created_by] [int] NOT NULL,
	[updated_by] [int] NULL,
	[deleted_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 16/12/2024 21:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](255) NOT NULL,
	[modelo] [varchar](255) NOT NULL,
	[numero_serie] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mantenimientos]    Script Date: 16/12/2024 21:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimientos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contrato_id] [int] NOT NULL,
	[equipos_id] [int] NOT NULL,
	[fecha_programada] [date] NOT NULL,
	[fecha_ejecutada] [date] NOT NULL,
	[tipo_mantenimiento] [varchar](255) NOT NULL,
	[comentarios] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tecnicos]    Script Date: 16/12/2024 21:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tecnicos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tecnico_asignado] [varchar](255) NOT NULL,
	[especialidad] [varchar](255) NOT NULL,
	[telefono] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id], [nombre], [direccion], [per_contacto], [telefono], [correo]) VALUES (40, N'BCP', N'Calle Las Camelias 750', N'Francisco Torres', N'987459258', N'Francisco.Torres@bcp.com,pe')
INSERT [dbo].[Clientes] ([id], [nombre], [direccion], [per_contacto], [telefono], [correo]) VALUES (41, N'BBVA', N'Av. Republica De Panamá 3055', N'Angie Galarza', N'987455784', N'Angie.Galarza@bbva.com')
INSERT [dbo].[Clientes] ([id], [nombre], [direccion], [per_contacto], [telefono], [correo]) VALUES (42, N'BANBIF', N'Av. Prolongación Paseo de la República s/n', N'Ignacio Gutierrez', N'987456324', N'Ignacio.Gutierrez@banbif.com')
INSERT [dbo].[Clientes] ([id], [nombre], [direccion], [per_contacto], [telefono], [correo]) VALUES (43, N'CLINICA INTERNACIONAL', N'Av. Inca Garcilaso de la Vega 1420', N'Antonio Mendoza', N'972496324', N'Antonio.Mendoza@ci.com')
INSERT [dbo].[Clientes] ([id], [nombre], [direccion], [per_contacto], [telefono], [correo]) VALUES (44, N'CLINICA ANGLOAMERICANA', N'C. Alfredo Salazar 350', N'Felix Fernandez', N'954782324', N'FFerandez@ca.com')
INSERT [dbo].[Clientes] ([id], [nombre], [direccion], [per_contacto], [telefono], [correo]) VALUES (45, N'PFIZER', N'C. Las Orquídeas 585', N'Ana Rivera', N'969874324', N'A.Rivera@pfizer.com')
INSERT [dbo].[Clientes] ([id], [nombre], [direccion], [per_contacto], [telefono], [correo]) VALUES (46, N'ENTEL', N'República de Colombia 791', N'Veronica Tapia', N'964521786', N'V.Tapia@entel.com')
INSERT [dbo].[Clientes] ([id], [nombre], [direccion], [per_contacto], [telefono], [correo]) VALUES (47, N'ALICORP', N'Av. Argentina N° 4793', N'Eduardo Ramirez', N'95478412', N'Eduardo.Ramirez@alicorp.com')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipos] ON 

INSERT [dbo].[Equipos] ([id], [marca], [modelo], [numero_serie]) VALUES (1, N'CATERPILLAR', N'CAT-C412', N'CAT-C1412-G-3F-457')
INSERT [dbo].[Equipos] ([id], [marca], [modelo], [numero_serie]) VALUES (2, N'WEG', N'MZT32', N'MZT-32-3F-440V-103')
INSERT [dbo].[Equipos] ([id], [marca], [modelo], [numero_serie]) VALUES (3, N'SULLAIR', N'SN7412', N'SN74-3F-440-100-576')
INSERT [dbo].[Equipos] ([id], [marca], [modelo], [numero_serie]) VALUES (4, N'ATLAS COPCO', N'GA90', N'GA90-440-120-487')
INSERT [dbo].[Equipos] ([id], [marca], [modelo], [numero_serie]) VALUES (5, N'CUMMINS', N'C350', N'C350-440V-350HP')
INSERT [dbo].[Equipos] ([id], [marca], [modelo], [numero_serie]) VALUES (6, N'SCHNEIDER', N'T2110', N'T2110-460-547821')
INSERT [dbo].[Equipos] ([id], [marca], [modelo], [numero_serie]) VALUES (7, N'LIEBERT', N'UPS220', N'U220-3F-541289')
SET IDENTITY_INSERT [dbo].[Equipos] OFF
GO
SET IDENTITY_INSERT [dbo].[Tecnicos] ON 

INSERT [dbo].[Tecnicos] ([id], [tecnico_asignado], [especialidad], [telefono]) VALUES (1, N'SAUL MONTERO RIVERA', N'ELECTRICISTA', N'945782159')
INSERT [dbo].[Tecnicos] ([id], [tecnico_asignado], [especialidad], [telefono]) VALUES (2, N'JUAN PINARES SARMIENTO', N'MECANICO', N'957846294')
INSERT [dbo].[Tecnicos] ([id], [tecnico_asignado], [especialidad], [telefono]) VALUES (3, N'CARLA VIDAL IZAGUIRRE', N'ELECTRONICO', N'969874512')
INSERT [dbo].[Tecnicos] ([id], [tecnico_asignado], [especialidad], [telefono]) VALUES (4, N'DIEGO AGURTO VALVERDE', N'ELECTRICISTA', N'947856258')
INSERT [dbo].[Tecnicos] ([id], [tecnico_asignado], [especialidad], [telefono]) VALUES (5, N'JAVIER SALINAS DIAZ', N'REFRIGERACION', N'965478912')
INSERT [dbo].[Tecnicos] ([id], [tecnico_asignado], [especialidad], [telefono]) VALUES (6, N'ELIAS ROMERO CAMPOS', N'INSTRUMENTISTA', N'923654781')
INSERT [dbo].[Tecnicos] ([id], [tecnico_asignado], [especialidad], [telefono]) VALUES (7, N'RICHARD LOPEZ ENRIQUEZ', N'ELECTRICISTA', N'923145785')
SET IDENTITY_INSERT [dbo].[Tecnicos] OFF
GO
ALTER TABLE [dbo].[Asignacion_tecnico]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimientos_Asignacion_Tecnico] FOREIGN KEY([mantenimiento_id])
REFERENCES [dbo].[Mantenimientos] ([id])
GO
ALTER TABLE [dbo].[Asignacion_tecnico] CHECK CONSTRAINT [FK_Mantenimientos_Asignacion_Tecnico]
GO
ALTER TABLE [dbo].[Asignacion_tecnico]  WITH CHECK ADD  CONSTRAINT [FK_Tecnicos_Asignacion_Tecnico] FOREIGN KEY([tecnico_id])
REFERENCES [dbo].[Tecnicos] ([id])
GO
ALTER TABLE [dbo].[Asignacion_tecnico] CHECK CONSTRAINT [FK_Tecnicos_Asignacion_Tecnico]
GO
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Contratos] FOREIGN KEY([cliente_id])
REFERENCES [dbo].[Clientes] ([id])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Clientes_Contratos]
GO
ALTER TABLE [dbo].[Mantenimientos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_Mantenimientos] FOREIGN KEY([contrato_id])
REFERENCES [dbo].[Contratos] ([id])
GO
ALTER TABLE [dbo].[Mantenimientos] CHECK CONSTRAINT [FK_Contratos_Mantenimientos]
GO
ALTER TABLE [dbo].[Mantenimientos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Mantenimientos] FOREIGN KEY([equipos_id])
REFERENCES [dbo].[Equipos] ([id])
GO
ALTER TABLE [dbo].[Mantenimientos] CHECK CONSTRAINT [FK_Equipos_Mantenimientos]
GO
USE [master]
GO
ALTER DATABASE [DSRP_caso_mantenimiento_industrial] SET  READ_WRITE 
GO
