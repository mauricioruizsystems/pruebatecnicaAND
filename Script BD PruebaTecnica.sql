USE [PruebaTecnicaAND]
GO
/****** Object:  Table [dbo].[Cuentanos]    Script Date: 19/10/2020 12:37:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuentanos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idopinion] [int] NOT NULL,
	[descripcion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cuentanos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Opinion]    Script Date: 19/10/2020 12:37:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opinion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[estado] [int] NOT NULL,
	[nombre] [nvarchar](max) NOT NULL,
	[entidad] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Opinion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OtrosTemas]    Script Date: 19/10/2020 12:37:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtrosTemas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [nvarchar](max) NOT NULL,
	[subtitulo] [nvarchar](max) NOT NULL,
	[enlace] [nvarchar](max) NOT NULL,
	[imagen] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OtrosTemas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tramites]    Script Date: 19/10/2020 12:37:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tramites](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](max) NOT NULL,
	[entidad] [nvarchar](100) NOT NULL,
	[disponiblelinea] [bit] NOT NULL,
	[concosto] [bit] NOT NULL,
	[detalletramite] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tramites] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Opinion] ON 

INSERT [dbo].[Opinion] ([id], [estado], [nombre], [entidad]) VALUES (1, 1, N'Únete al Pacto por Colombia', N'Presidencia de la República')
INSERT [dbo].[Opinion] ([id], [estado], [nombre], [entidad]) VALUES (2, 2, N'¿Cómo mejorarías nuestro sistema de transporte?', N'Secretaria de Movilidad de Bogotá')
INSERT [dbo].[Opinion] ([id], [estado], [nombre], [entidad]) VALUES (3, 3, N'Los datos y visualizaciones del gobierno o interesantes para su uso, aprovechamiento y toma de decisiones', N'Ministerio de las Tecnologías de la Información y las Comunicaciones')
SET IDENTITY_INSERT [dbo].[Opinion] OFF
SET IDENTITY_INSERT [dbo].[OtrosTemas] ON 

INSERT [dbo].[OtrosTemas] ([id], [titulo], [subtitulo], [enlace], [imagen]) VALUES (1, N'Sabes que son los datos abiertos?', N'La información que producen la entidades públicas a tu alcance', N'https://www.datosabiertos.gov.co', N'DatosAbiertos.png')
INSERT [dbo].[OtrosTemas] ([id], [titulo], [subtitulo], [enlace], [imagen]) VALUES (3, N'Conoce más sobre nuestro país', N'Colombia es hermosa, y queremos que conozca más sobre ella', N'https://www.colombia.co', N'ColombiaCo.png')
INSERT [dbo].[OtrosTemas] ([id], [titulo], [subtitulo], [enlace], [imagen]) VALUES (4, N'Este portal está pensado para tí', N'GOV.CO nace para facilitarle  la interacción con el Estado', N'https://www.gov.co', N'GovCo.png')
INSERT [dbo].[OtrosTemas] ([id], [titulo], [subtitulo], [enlace], [imagen]) VALUES (5, N'Otra tema de interes para ti', N'Este es otro tema de interes', N'https://www.google.com', N'Google.png')
SET IDENTITY_INSERT [dbo].[OtrosTemas] OFF
SET IDENTITY_INSERT [dbo].[Tramites] ON 

INSERT [dbo].[Tramites] ([id], [nombre], [entidad], [disponiblelinea], [concosto], [detalletramite]) VALUES (1, N'Certificado de antecedentes de resposabilidad fiscal', N'Contraloria General de la Republica', 1, 0, N'Detalle del Tramite')
INSERT [dbo].[Tramites] ([id], [nombre], [entidad], [disponiblelinea], [concosto], [detalletramite]) VALUES (2, N'Legalización de documentos de educación superior para adelantar estudios o trabajar en el exterior', N'Ministerio de Educación', 1, 0, N'Detalle del Tramite')
INSERT [dbo].[Tramites] ([id], [nombre], [entidad], [disponiblelinea], [concosto], [detalletramite]) VALUES (3, N'Adopción de un niño, niña o adolescente por persona, conyuges o compañeros permanentes residentes en Colombia', N'Instituto Colombiano de Bienestar Familiar- ICBF', 0, 0, N'Detalle del Tramite')
INSERT [dbo].[Tramites] ([id], [nombre], [entidad], [disponiblelinea], [concosto], [detalletramite]) VALUES (4, N'Agendamiento de citas para consultorio juridico', N'Ministerio de Justicia', 1, 0, N'Detalle del Tramite')
INSERT [dbo].[Tramites] ([id], [nombre], [entidad], [disponiblelinea], [concosto], [detalletramite]) VALUES (5, N'Certificados y constancia académicas', N'Servicio Nacional de Aprendizaje-SENA', 1, 0, N'Detalle del Tramite')
SET IDENTITY_INSERT [dbo].[Tramites] OFF
/****** Object:  StoredProcedure [dbo].[SP_LIST_CUENTANOS]    Script Date: 19/10/2020 12:37:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LIST_CUENTANOS] 

AS
BEGIN

SELECT id, idopinion, descripcion
FROM [dbo].[Cuentanos]
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LIST_OPINION]    Script Date: 19/10/2020 12:37:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LIST_OPINION] 

AS
BEGIN

SELECT id, estado, nombre, entidad
FROM [dbo].[Opinion]
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LIST_OTROSTEMAS]    Script Date: 19/10/2020 12:37:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LIST_OTROSTEMAS] 

AS
BEGIN

SELECT id, titulo, subtitulo, enlace, imagen
FROM [dbo].[OtrosTemas]
END

GO
/****** Object:  StoredProcedure [dbo].[SP_LIST_TRAMITES]    Script Date: 19/10/2020 12:37:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LIST_TRAMITES] 

AS
BEGIN

SELECT id, nombre, entidad, disponiblelinea, concosto, detalletramite
FROM [dbo].[Tramites]
END

GO
