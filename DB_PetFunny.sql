USE [master]
go

CREATE DATABASE [PetFunny]
Go

USE [PetFunny]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UserName] [nvarchar](10) NOT NULL,
	[Password] [nvarchar](10) NOT NULL,
	[Nombres] [nvarchar](15) NOT NULL,
	[Apellidos] [nvarchar](15) NOT NULL,
 CONSTRAINT [Key5] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Usuarios] ([UserName], [Password], [Nombres], [Apellidos]) VALUES (N'user1', N'password1', N'Soledad', N'Cann')
INSERT [dbo].[Usuarios] ([UserName], [Password], [Nombres], [Apellidos]) VALUES (N'user2', N'password2', N'Alejandra', N'Katze')
INSERT [dbo].[Usuarios] ([UserName], [Password], [Nombres], [Apellidos]) VALUES (N'user3', N'password3', N'Mauricio', N'Pardo')
GO
CREATE TABLE [dbo].[TipoMascota](
	[IdTipoMascota] [int] NOT NULL,
	[Descripcion] [nvarchar](15) NOT NULL,
 CONSTRAINT [Key1] PRIMARY KEY CLUSTERED 
(
	[IdTipoMascota] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TipoMascota] ([IdTipoMascota], [Descripcion]) VALUES (1, N'Perro')
INSERT [dbo].[TipoMascota] ([IdTipoMascota], [Descripcion]) VALUES (2, N'Gato')
INSERT [dbo].[TipoMascota] ([IdTipoMascota], [Descripcion]) VALUES (3, N'Hámster')
INSERT [dbo].[TipoMascota] ([IdTipoMascota], [Descripcion]) VALUES (4, N'Pájaro')
INSERT [dbo].[TipoMascota] ([IdTipoMascota], [Descripcion]) VALUES (5, N'Tortuga')
INSERT [dbo].[TipoMascota] ([IdTipoMascota], [Descripcion]) VALUES (6, N'Ferret')
INSERT [dbo].[TipoMascota] ([IdTipoMascota], [Descripcion]) VALUES (7, N'Simio')
INSERT [dbo].[TipoMascota] ([IdTipoMascota], [Descripcion]) VALUES (8, N'Elefante')
INSERT [dbo].[TipoMascota] ([IdTipoMascota], [Descripcion]) VALUES (9, N'Chancho')
INSERT [dbo].[TipoMascota] ([IdTipoMascota], [Descripcion]) VALUES (10, N'Otros')
GO
CREATE TABLE [dbo].[TipoAlojamiento](
	[IdTipoAlojamiento] [int] NOT NULL,
	[Descripcion] [nvarchar](15) NOT NULL,
 CONSTRAINT [Key4] PRIMARY KEY CLUSTERED 
(
	[IdTipoAlojamiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TipoAlojamiento] ([IdTipoAlojamiento], [Descripcion]) VALUES (10, N'Comunitario')
INSERT [dbo].[TipoAlojamiento] ([IdTipoAlojamiento], [Descripcion]) VALUES (20, N'Compartido 2')
INSERT [dbo].[TipoAlojamiento] ([IdTipoAlojamiento], [Descripcion]) VALUES (30, N'Compartido 4')
INSERT [dbo].[TipoAlojamiento] ([IdTipoAlojamiento], [Descripcion]) VALUES (40, N'Single Nivel 1')
INSERT [dbo].[TipoAlojamiento] ([IdTipoAlojamiento], [Descripcion]) VALUES (50, N'Single Nivel 2')
INSERT [dbo].[TipoAlojamiento] ([IdTipoAlojamiento], [Descripcion]) VALUES (60, N'Luxury')
INSERT [dbo].[TipoAlojamiento] ([IdTipoAlojamiento], [Descripcion]) VALUES (70, N'Hogar Externo A')
INSERT [dbo].[TipoAlojamiento] ([IdTipoAlojamiento], [Descripcion]) VALUES (80, N'Hogar Externo B')
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propietario](
	[Rut] [nvarchar](10) NOT NULL,
	[Nombres] [nvarchar](15) NOT NULL,
	[Apellidos] [nvarchar](15) NOT NULL,
	[Telefono] [nvarchar](10) NOT NULL,
 CONSTRAINT [Key2] PRIMARY KEY CLUSTERED 
(
	[Rut] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Alojamiento](
	[Rut] [nvarchar](10) NOT NULL,
	[NombreMascota] [nvarchar](15) NOT NULL,
	[IdTipoMascota] [int] NOT NULL,
	[IdTipoAlojamiento] [int] NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[Dias] [int] NOT NULL,
 CONSTRAINT [Key3] PRIMARY KEY CLUSTERED 
(
	[Rut] ASC,
	[NombreMascota] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Relationship3] ON [dbo].[Alojamiento] 
(
	[IdTipoMascota] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Relationship6] ON [dbo].[Alojamiento] 
(
	[IdTipoAlojamiento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alojamiento]  WITH CHECK ADD  CONSTRAINT [AlojamientoTipoAlojamiento] FOREIGN KEY([IdTipoAlojamiento])
REFERENCES [dbo].[TipoAlojamiento] ([IdTipoAlojamiento])
GO
ALTER TABLE [dbo].[Alojamiento] CHECK CONSTRAINT [AlojamientoTipoAlojamiento]
GO
ALTER TABLE [dbo].[Alojamiento]  WITH CHECK ADD  CONSTRAINT [AlojamientoTipoMascota] FOREIGN KEY([IdTipoMascota])
REFERENCES [dbo].[TipoMascota] ([IdTipoMascota])
GO
ALTER TABLE [dbo].[Alojamiento] CHECK CONSTRAINT [AlojamientoTipoMascota]
GO
ALTER TABLE [dbo].[Alojamiento]  WITH CHECK ADD  CONSTRAINT [PropietarioAlojamiento] FOREIGN KEY([Rut])
REFERENCES [dbo].[Propietario] ([Rut])
GO
ALTER TABLE [dbo].[Alojamiento] CHECK CONSTRAINT [PropietarioAlojamiento]
GO
