USE [SanMiguel]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_InternacionCierre]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_InternacionCierre](
	[inciCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[inteCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
	[inciFecha] [datetime] NOT NULL,
	[inciFechaCierre] [datetime] NOT NULL,
	[inciUsuario] [nvarchar](max) NULL,
	[inciTipo] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_TempMedicoMatricula]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_TempMedicoMatricula](
	[mediCodigo] [bigint] NOT NULL,
	[mediMatriculaNacional] [nvarchar](20) NULL,
	[mediMatriculaProvincial] [nvarchar](20) NULL,
	[prov_Codigo] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_TempVariable]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_TempVariable](
	[eqvaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[eqvaDescripcion] [nvarchar](max) NOT NULL,
	[eqvaRequerida] [bit] NOT NULL,
	[eqvaTipo] [nvarchar](1) NOT NULL,
	[eqvaOpciones] [nvarchar](max) NULL,
	[eqvaCodigoInterno] [nvarchar](20) NULL,
	[eqvaResultado] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Acceso]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acceso](
	[acceCodigo] [bigint] NOT NULL,
	[acceDescripcion] [nvarchar](100) NULL,
	[acceEtiqueta] [nvarchar](max) NULL,
	[acceIcono] [nvarchar](50) NULL,
	[acceAccion] [nvarchar](50) NULL,
	[acceControllador] [nvarchar](50) NULL,
	[acceParametros] [nvarchar](50) NULL,
	[acceMenu] [bit] NOT NULL,
	[acceFavorito] [bit] NOT NULL,
	[acceConfiguracion] [bit] NOT NULL,
	[ApplicationRoleId] [nvarchar](max) NULL,
	[acceOrden] [int] NOT NULL,
	[acceIndice] [nvarchar](50) NULL,
	[acceModulo] [nvarchar](max) NULL,
	[acceMenuLateral] [bit] NOT NULL,
	[acceAccesoEntrada] [bit] NOT NULL,
	[acceSeccion] [nvarchar](100) NULL,
	[acceSinAutorizacion] [bit] NOT NULL,
	[siviCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Acceso] PRIMARY KEY CLUSTERED 
(
	[acceCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccesoIdioma]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccesoIdioma](
	[acidCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[acidIdioma] [nvarchar](3) NULL,
	[acceCodigo] [bigint] NOT NULL,
	[acidDescripcion] [nvarchar](100) NULL,
	[acidSeccion] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.AccesoIdioma] PRIMARY KEY CLUSTERED 
(
	[acidCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccesoItem]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccesoItem](
	[acitCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[acceCodigo] [bigint] NOT NULL,
	[acceCodigoHijo] [bigint] NOT NULL,
	[acitOrden] [int] NOT NULL,
	[acitSeparador] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.AccesoItem] PRIMARY KEY CLUSTERED 
(
	[acitCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agrupamiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agrupamiento](
	[agruCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[agruDescripcion] [nvarchar](200) NULL,
	[agruCodigoInterno] [nvarchar](20) NULL,
	[agruActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[agtiCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.Agrupamiento] PRIMARY KEY CLUSTERED 
(
	[agruCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgrupamientoCobertura]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgrupamientoCobertura](
	[agcoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[agruCodigo] [bigint] NOT NULL,
	[cobeCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.AgrupamientoCobertura] PRIMARY KEY CLUSTERED 
(
	[agcoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgrupamientoDiagnostico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgrupamientoDiagnostico](
	[agdiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[agruCodigo] [bigint] NOT NULL,
	[diagCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.AgrupamientoDiagnostico] PRIMARY KEY CLUSTERED 
(
	[agdiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgrupamientoGenerico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgrupamientoGenerico](
	[aggeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[agruCodigo] [bigint] NOT NULL,
	[geneCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.AgrupamientoGenerico] PRIMARY KEY CLUSTERED 
(
	[aggeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgrupamientoNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgrupamientoNomenclador](
	[agnoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[agruCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.AgrupamientoNomenclador] PRIMARY KEY CLUSTERED 
(
	[agnoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgrupamientoProcedimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgrupamientoProcedimiento](
	[agprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[agruCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[agprPrioridad] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AgrupamientoProcedimiento] PRIMARY KEY CLUSTERED 
(
	[agprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgrupamientoSistemaVariable]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgrupamientoSistemaVariable](
	[agsvCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[agruCodigo] [bigint] NOT NULL,
	[sivaCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[agsvOrden] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AgrupamientoSistemaVariable] PRIMARY KEY CLUSTERED 
(
	[agsvCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgrupamientoTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgrupamientoTipo](
	[agtiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[agtiDescripcion] [nvarchar](200) NULL,
	[agtiCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.AgrupamientoTipo] PRIMARY KEY CLUSTERED 
(
	[agtiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alimento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alimento](
	[alimCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[alimDescripcion] [nvarchar](max) NULL,
	[alimCodigoInterno] [nvarchar](20) NULL,
	[alimImporte] [decimal](18, 2) NOT NULL,
	[altiCodigo] [bigint] NOT NULL,
	[alimArchivo] [nvarchar](500) NULL,
	[alimActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[alimCalorias] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Alimento] PRIMARY KEY CLUSTERED 
(
	[alimCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlimentoTag]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlimentoTag](
	[altaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[alimCodigo] [bigint] NOT NULL,
	[tagCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.AlimentoTag] PRIMARY KEY CLUSTERED 
(
	[altaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlimentoTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlimentoTipo](
	[altiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[altiDescripcion] [nvarchar](100) NULL,
	[altiCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.AlimentoTipo] PRIMARY KEY CLUSTERED 
(
	[altiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ambito]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ambito](
	[ambiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ambiDescripcion] [nvarchar](50) NOT NULL,
	[ambiCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Ambito] PRIMARY KEY CLUSTERED 
(
	[ambiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmbitoFacturacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmbitoFacturacion](
	[amfaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[amfaDescripcion] [nvarchar](100) NOT NULL,
	[amfaCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.AmbitoFacturacion] PRIMARY KEY CLUSTERED 
(
	[amfaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiKey]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiKey](
	[apikCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[apikKey] [nvarchar](max) NULL,
	[apikApp] [nvarchar](max) NULL,
	[apikFecha] [datetime] NOT NULL,
	[apikVigente] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ApiKey] PRIMARY KEY CLUSTERED 
(
	[apikCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationExternalLogin]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationExternalLogin](
	[Id] [uniqueidentifier] NOT NULL,
	[AccessToken] [nvarchar](max) NULL,
	[Provider] [nvarchar](max) NULL,
	[Claims] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ApplicationExternalLogin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationExternalLoginClaim]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationExternalLoginClaim](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdExternalLogin] [uniqueidentifier] NOT NULL,
	[type] [nvarchar](max) NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ApplicationExternalLoginClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationGroup]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationGroup](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ApplicationGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationGroupAcceso]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationGroupAcceso](
	[apgaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NULL,
	[acceCodigo] [bigint] NOT NULL,
	[acitCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.ApplicationGroupAcceso] PRIMARY KEY CLUSTERED 
(
	[apgaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationGroupReporte]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationGroupReporte](
	[apgrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NULL,
	[rssrCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.ApplicationGroupReporte] PRIMARY KEY CLUSTERED 
(
	[apgrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationGroupRole]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationGroupRole](
	[ApplicationRoleId] [nvarchar](128) NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.ApplicationGroupRole] PRIMARY KEY CLUSTERED 
(
	[ApplicationGroupId] ASC,
	[ApplicationRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationGrupoComplemento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationGrupoComplemento](
	[ApplicationGroupId] [nvarchar](128) NOT NULL,
	[qutcCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.ApplicationGrupoComplemento] PRIMARY KEY CLUSTERED 
(
	[ApplicationGroupId] ASC,
	[qutcCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationGrupoPlantillaInforme]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationGrupoPlantillaInforme](
	[appiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NULL,
	[plinCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ApplicationGrupoPlantillaInforme] PRIMARY KEY CLUSTERED 
(
	[appiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationUserGroup]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUserGroup](
	[ApplicationUserId] [nvarchar](128) NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ApplicationUserGroup] PRIMARY KEY CLUSTERED 
(
	[ApplicationUserId] ASC,
	[ApplicationGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Archivo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Archivo](
	[archCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[archDescripcion] [nvarchar](100) NULL,
	[archFecha] [datetime] NOT NULL,
	[archUsuario] [nvarchar](128) NULL,
	[archRegistros] [bigint] NOT NULL,
	[archNombre] [nvarchar](max) NULL,
	[archEstado] [nvarchar](20) NULL,
	[artiCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.Archivo] PRIMARY KEY CLUSTERED 
(
	[archCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArchivoTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchivoTipo](
	[artiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[artiDescripcion] [nvarchar](100) NULL,
	[artiTipoArchivo] [nvarchar](20) NULL,
	[artiProcedimiento] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.ArchivoTipo] PRIMARY KEY CLUSTERED 
(
	[artiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[areaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[areaDescripcion] [nvarchar](100) NULL,
	[areaCodigoInterno] [nvarchar](20) NULL,
	[salaCodigo] [bigint] NOT NULL,
	[depoCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cecoCodigo] [bigint] NOT NULL,
	[areaVigente] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Area] PRIMARY KEY CLUSTERED 
(
	[areaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticuloComercial]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloComercial](
	[arcoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[arcoDescripcion] [nvarchar](500) NULL,
	[arcoCodigoInterno] [nvarchar](20) NULL,
	[geneCodigo] [bigint] NOT NULL,
	[snomCodigo] [nvarchar](18) NULL,
	[arcoLaboratorio] [nvarchar](500) NULL,
	[arcoVigente] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ArticuloComercial] PRIMARY KEY CLUSTERED 
(
	[arcoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticuloFamilia]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloFamilia](
	[arfaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[arfaCodigoInterno] [nvarchar](20) NULL,
	[arfaDescripcion] [nvarchar](100) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ArticuloFamilia] PRIMARY KEY CLUSTERED 
(
	[arfaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticuloGrupo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloGrupo](
	[argrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[argrCodigoInterno] [nvarchar](20) NULL,
	[argrDescripcion] [nvarchar](100) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ArticuloGrupo] PRIMARY KEY CLUSTERED 
(
	[argrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticuloKit]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloKit](
	[arkiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[arkiDescripcion] [nvarchar](max) NULL,
	[arkiCodigoInterno] [nvarchar](20) NULL,
	[arkiActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ArticuloKit] PRIMARY KEY CLUSTERED 
(
	[arkiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticuloKitCompuesto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloKitCompuesto](
	[arkcCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[arkiCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NULL,
	[geneCodigo] [bigint] NULL,
	[arkcCantidad] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ArticuloKitCompuesto] PRIMARY KEY CLUSTERED 
(
	[arkcCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticuloOrigen]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloOrigen](
	[arorCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[arorDescripcion] [nvarchar](100) NULL,
	[arorCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ArticuloOrigen] PRIMARY KEY CLUSTERED 
(
	[arorCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticuloSubFamilia]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloSubFamilia](
	[asufCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[arfaCodigo] [bigint] NOT NULL,
	[asufCodigoInterno] [nvarchar](20) NULL,
	[asufDescripcion] [nvarchar](100) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ArticuloSubFamilia] PRIMARY KEY CLUSTERED 
(
	[asufCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticuloSubGrupo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticuloSubGrupo](
	[arsuCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[argrCodigo] [bigint] NOT NULL,
	[arsuCodigoInterno] [nvarchar](20) NULL,
	[arsuDescripcion] [nvarchar](100) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ArticuloSubGrupo] PRIMARY KEY CLUSTERED 
(
	[arsuCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[persCodigo] [bigint] NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditoria](
	[audiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[audiTabla] [nvarchar](100) NULL,
	[audiUsuario] [nvarchar](50) NULL,
	[audiAccion] [nvarchar](50) NULL,
	[audiXml] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Auditoria] PRIMARY KEY CLUSTERED 
(
	[audiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autorizacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autorizacion](
	[autoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[autoDesde] [datetime] NOT NULL,
	[autoHasta] [datetime] NOT NULL,
	[autoDescripcion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[autoHorasGestion] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Autorizacion] PRIMARY KEY CLUSTERED 
(
	[autoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutorizacionNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutorizacionNomenclador](
	[aunoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[autoCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[tiauCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.AutorizacionNomenclador] PRIMARY KEY CLUSTERED 
(
	[aunoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutorizacionPlan]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutorizacionPlan](
	[auplCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[autoCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.AutorizacionPlan] PRIMARY KEY CLUSTERED 
(
	[auplCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banco]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banco](
	[bancCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[bancDescripcion] [nvarchar](50) NULL,
	[bancCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Banco] PRIMARY KEY CLUSTERED 
(
	[bancCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Caja]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caja](
	[cajaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cajaFecha] [datetime] NOT NULL,
	[cajaCierre] [datetime] NOT NULL,
	[cajaUsuario] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cajaSecretKey] [nvarchar](max) NULL,
	[ubicCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.Caja] PRIMARY KEY CLUSTERED 
(
	[cajaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calendario]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendario](
	[caleCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[caleFecha] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Calendario] PRIMARY KEY CLUSTERED 
(
	[caleCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cama]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cama](
	[camaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[camaDescripcion] [nvarchar](100) NOT NULL,
	[camaCodigoInterno] [nvarchar](20) NULL,
	[camaTipo] [nvarchar](1) NULL,
	[camaVigente] [bit] NOT NULL,
	[areaCodigo] [bigint] NOT NULL,
	[nicuCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[servCodigo] [bigint] NULL,
	[habiCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Cama] PRIMARY KEY CLUSTERED 
(
	[camaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CamaBloqueo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CamaBloqueo](
	[cablCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cablFechaDesde] [datetime] NOT NULL,
	[cablFechaHasta] [datetime] NOT NULL,
	[cablObservaciones] [nvarchar](max) NULL,
	[camaCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cabmCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.CamaBloqueo] PRIMARY KEY CLUSTERED 
(
	[cablCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CamaBloqueoMotivo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CamaBloqueoMotivo](
	[cabmCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cabmDescripcion] [nvarchar](500) NULL,
	[cabmCodigoInterno] [nvarchar](20) NULL,
	[cobmActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.CamaBloqueoMotivo] PRIMARY KEY CLUSTERED 
(
	[cabmCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campana]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campana](
	[campCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[campDescripcion] [nvarchar](500) NULL,
	[campCodigoInterno] [nvarchar](20) NULL,
	[campVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Campana] PRIMARY KEY CLUSTERED 
(
	[campCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cantidad]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cantidad](
	[cantCodigo] [int] IDENTITY(1,1) NOT NULL,
	[cantCantidad] [int] NOT NULL,
	[cantCopia] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CentroCosto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentroCosto](
	[cecoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cecoDescripcion] [nvarchar](50) NOT NULL,
	[cecoCodigoInterno] [nvarchar](20) NULL,
	[cecoDefault] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.CentroCosto] PRIMARY KEY CLUSTERED 
(
	[cecoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CentroCostoConfiguracion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CentroCostoConfiguracion](
	[cccoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cecoCodigo] [bigint] NOT NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[espeCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.CentroCostoConfiguracion] PRIMARY KEY CLUSTERED 
(
	[cccoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CertificadoTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificadoTipo](
	[cetiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cetiDescripcion] [nvarchar](max) NULL,
	[cetiCodigoInterno] [nvarchar](20) NULL,
	[cetiTextoDefault] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CertificadoTipo] PRIMARY KEY CLUSTERED 
(
	[cetiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cheque]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cheque](
	[cheqCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tcheCodigo] [int] NOT NULL,
	[bancCodigo] [bigint] NOT NULL,
	[cheqNumero] [nvarchar](max) NULL,
	[cheqNumeroInterno] [nvarchar](max) NULL,
	[cheqFechaDiferida] [datetime] NOT NULL,
	[cheqFechaEntrega] [datetime] NOT NULL,
	[cheqImporte] [decimal](18, 2) NOT NULL,
	[cheqNumeroOperacion] [nvarchar](max) NULL,
	[techCodigo] [int] NOT NULL,
	[cheqFechaEstado] [datetime] NOT NULL,
	[cheqObservacion] [nvarchar](max) NULL,
	[emprCodigo] [bigint] NOT NULL,
	[persCodigo] [bigint] NULL,
	[cubaCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Cheque] PRIMARY KEY CLUSTERED 
(
	[cheqCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chofer]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[chofCodigo] [bigint] NOT NULL,
	[chofNumeroLicencia] [nvarchar](50) NULL,
	[chofTipoLicencia] [nvarchar](100) NULL,
	[chofVencimientoLicencia] [datetime] NOT NULL,
	[chofImagenLicencia] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Chofer] PRIMARY KEY CLUSTERED 
(
	[chofCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cierre]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cierre](
	[cierCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cierDescripcion] [nvarchar](200) NOT NULL,
	[cierFechaDesde] [datetime] NOT NULL,
	[cierFechaHasta] [datetime] NOT NULL,
	[cierObservacion] [nvarchar](max) NULL,
	[cierUsuario] [nvarchar](max) NULL,
	[cierEstado] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cobeCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[enfaCodigo] [bigint] NULL,
	[tconCodigo] [bigint] NULL,
	[ambiCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Cierre] PRIMARY KEY CLUSTERED 
(
	[cierCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cobertura]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cobertura](
	[cobeCodigo] [bigint] NOT NULL,
	[cobeCodigoInterno] [nvarchar](20) NULL,
	[cobeDescripcion] [nvarchar](1000) NOT NULL,
	[cobePredeterminada] [bit] NOT NULL,
	[cobeFormatoAfiliado] [nvarchar](30) NULL,
	[tcobCodigo] [bigint] NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
	[cobeFechaConvenio] [datetime] NOT NULL,
	[tnomCodigo] [bigint] NOT NULL,
	[cobeObservaciones] [nvarchar](max) NULL,
	[cobeActiva] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cobeClaveBusqueda] [nvarchar](max) NULL,
	[cobeCodigoValidador] [nvarchar](20) NULL,
	[cobeTipoValidacion] [nvarchar](1) NULL,
	[cobeSolicitarAutorizacion] [bit] NOT NULL,
	[cobeDiasVtoOrden] [int] NOT NULL,
	[cobeDiasVtoFacturacion] [int] NOT NULL,
	[cobeDiasVtoRefacturacion] [int] NOT NULL,
	[cobePublicaWeb] [bit] NOT NULL,
	[cobeRecetaWeb] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Cobertura] PRIMARY KEY CLUSTERED 
(
	[cobeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoberturaAmbitoFacturacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoberturaAmbitoFacturacion](
	[coamCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cobeCodigo] [bigint] NOT NULL,
	[amfaCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.CoberturaAmbitoFacturacion] PRIMARY KEY CLUSTERED 
(
	[coamCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoberturaCategoriaTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoberturaCategoriaTipo](
	[coctCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[coctDescripcion] [nvarchar](100) NULL,
	[coctCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.CoberturaCategoriaTipo] PRIMARY KEY CLUSTERED 
(
	[coctCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comida]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comida](
	[comiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[comiDescripcion] [nvarchar](200) NULL,
	[comiCodigoInterno] [nvarchar](20) NULL,
	[comiDetalle] [nvarchar](max) NULL,
	[comiCalorias] [int] NOT NULL,
	[comiImporte] [decimal](18, 2) NOT NULL,
	[comiArchivo] [nvarchar](500) NULL,
	[cotiCodigo] [bigint] NOT NULL,
	[comiActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Comida] PRIMARY KEY CLUSTERED 
(
	[comiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComidaAlimento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComidaAlimento](
	[coalCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[comiCodigo] [bigint] NOT NULL,
	[alimCodigo] [bigint] NOT NULL,
	[coalCantidad] [decimal](18, 2) NOT NULL,
	[coalTipo] [nvarchar](3) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ComidaAlimento] PRIMARY KEY CLUSTERED 
(
	[coalCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComidaTag]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComidaTag](
	[cotaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[comiCodigo] [bigint] NOT NULL,
	[tagCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ComidaTag] PRIMARY KEY CLUSTERED 
(
	[cotaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComidaTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComidaTipo](
	[cotiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cotiDescripcion] [nvarchar](100) NULL,
	[cotiCodigoInterno] [nvarchar](20) NULL,
	[cotiOrden] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ComidaTipo] PRIMARY KEY CLUSTERED 
(
	[cotiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicionIVA]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionIVA](
	[coivCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[coivDescripcion] [nvarchar](50) NOT NULL,
	[coivCodigoAfip] [nvarchar](20) NULL,
	[coivCodigoInterno] [nvarchar](20) NULL,
	[coivIndicativo] [nvarchar](50) NULL,
	[tdocCodigo] [bigint] NULL,
	[coivVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.CondicionIVA] PRIMARY KEY CLUSTERED 
(
	[coivCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicionPago]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionPago](
	[copaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[copaDescripcion] [nvarchar](100) NOT NULL,
	[copaDias] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.CondicionPago] PRIMARY KEY CLUSTERED 
(
	[copaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CondicionVenta]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CondicionVenta](
	[coveCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[coveDescripcion] [nvarchar](50) NOT NULL,
	[coveCodigoInterno] [nvarchar](20) NULL,
	[coveDiasVencimiento] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.CondicionVenta] PRIMARY KEY CLUSTERED 
(
	[coveCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuracion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuracion](
	[confCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[confDescripcion] [nvarchar](max) NOT NULL,
	[confVariable] [nvarchar](50) NOT NULL,
	[confValor] [nvarchar](max) NULL,
	[tcofCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[confValorByte] [varbinary](max) NULL,
 CONSTRAINT [PK_dbo.Configuracion] PRIMARY KEY CLUSTERED 
(
	[confCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfiguracionObjetoJson]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfiguracionObjetoJson](
	[coojCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[coojObjeto] [nvarchar](500) NULL,
	[coojActivo] [bit] NOT NULL,
	[coojDel] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ConfiguracionObjetoJson] PRIMARY KEY CLUSTERED 
(
	[coojCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfiguracionStore]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfiguracionStore](
	[costCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[costNombre] [nvarchar](500) NULL,
	[costActualiza] [bit] NOT NULL,
	[costTipo] [nvarchar](3) NULL,
 CONSTRAINT [PK_dbo.ConfiguracionStore] PRIMARY KEY CLUSTERED 
(
	[costCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consultorio]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultorio](
	[consCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[consDescripcion] [nvarchar](50) NOT NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[consCodigoSala] [nvarchar](20) NULL,
	[consCodigoAdmision] [nvarchar](20) NULL,
	[consCodigoInterno] [nvarchar](20) NULL,
	[depoCodigo] [bigint] NOT NULL,
	[cecoCodigo] [bigint] NOT NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[consSalaZoom] [nvarchar](max) NULL,
	[consPiso] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Consultorio] PRIMARY KEY CLUSTERED 
(
	[consCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[contCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[contFecha] [datetime] NOT NULL,
	[contDescripcion] [nvarchar](max) NULL,
	[contMail] [nvarchar](max) NULL,
	[contTelefono] [nvarchar](20) NULL,
	[contAsunto] [nvarchar](max) NULL,
	[paciCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[campCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Contacto] PRIMARY KEY CLUSTERED 
(
	[contCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Convenio]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Convenio](
	[convCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[convDescripcion] [nvarchar](max) NULL,
	[convFechaCarga] [datetime] NOT NULL,
	[convFechaDesde] [datetime] NOT NULL,
	[convFechaHasta] [datetime] NOT NULL,
	[ivapCodigo] [bigint] NOT NULL,
	[moneCodigo] [bigint] NOT NULL,
	[convDecimales] [int] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[convPorcentajeArticulos] [decimal](18, 2) NOT NULL,
	[convCoeficienteArticulos] [decimal](18, 2) NOT NULL,
	[convCodigoOrigen] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[convConvenioBase] [bit] NOT NULL,
	[convCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.Convenio] PRIMARY KEY CLUSTERED 
(
	[convCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioArticuloIndice]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioArticuloIndice](
	[coaiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[convCodigo] [bigint] NOT NULL,
	[tartCodigo] [bigint] NOT NULL,
	[tacfCodigo] [bigint] NOT NULL,
	[arsuCodigo] [bigint] NOT NULL,
	[asufCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[coaiPorcentaje] [decimal](18, 2) NOT NULL,
	[coaiCoeficiente] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ConvenioArticuloIndice] PRIMARY KEY CLUSTERED 
(
	[coaiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioCapita]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioCapita](
	[cocaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[convCodigo] [bigint] NOT NULL,
	[tconCodigo] [bigint] NOT NULL,
	[cocaImporte] [decimal](18, 2) NOT NULL,
	[cocaImporteManual] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ConvenioCapita] PRIMARY KEY CLUSTERED 
(
	[cocaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioConfiguracion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioConfiguracion](
	[cocoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[convCodigo] [bigint] NOT NULL,
	[cocoFechaAplicacion] [datetime] NOT NULL,
	[tiinCodigo] [bigint] NOT NULL,
	[tnomCodigo] [bigint] NOT NULL,
	[cocoDesde] [nvarchar](10) NULL,
	[cocoHasta] [nvarchar](10) NULL,
	[tvnoCodigo] [bigint] NOT NULL,
	[cocoValor] [decimal](18, 2) NOT NULL,
	[cocoCoeficiente] [decimal](18, 2) NOT NULL,
	[cocoPorcentaje] [decimal](18, 2) NOT NULL,
	[cocoTipo] [nvarchar](50) NULL,
	[cocoRemplaza] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ConvenioConfiguracion] PRIMARY KEY CLUSTERED 
(
	[cocoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioModulo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioModulo](
	[comoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[convCodigo] [bigint] NOT NULL,
	[moveCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ConvenioModulo] PRIMARY KEY CLUSTERED 
(
	[comoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioNomenclador](
	[conoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[convCodigo] [bigint] NOT NULL,
	[conoValorFijo] [decimal](18, 2) NOT NULL,
	[conoValorFijoGastos] [decimal](18, 2) NOT NULL,
	[conoCoeficiente] [decimal](18, 2) NOT NULL,
	[conoCoseguro] [decimal](18, 2) NOT NULL,
	[conoCodigoHomologado] [nvarchar](max) NULL,
	[conoRestaCoseguro] [bit] NOT NULL,
	[conoFecha] [datetime] NOT NULL,
	[conoSinCargo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[conoPorcentaje] [decimal](18, 2) NOT NULL,
	[conoRemplazaValor] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ConvenioNomenclador] PRIMARY KEY CLUSTERED 
(
	[conoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioNomencladorArchivo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioNomencladorArchivo](
	[cnarCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[convCodigo] [bigint] NOT NULL,
	[cnarDescripcion] [nvarchar](max) NULL,
	[cnarFecha] [datetime] NOT NULL,
	[cnarEstado] [nvarchar](max) NULL,
	[cnarArhivo] [nvarchar](max) NULL,
	[tnomCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.ConvenioNomencladorArchivo] PRIMARY KEY CLUSTERED 
(
	[cnarCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioNomencladorArchivoItem]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioNomencladorArchivoItem](
	[cnaiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cnarCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NULL,
	[conoCodigo] [bigint] NULL,
	[nomeCodigoInterno] [nvarchar](max) NULL,
	[cnaiValorFijo] [decimal](18, 2) NOT NULL,
	[cnaiValorFijoA] [bit] NOT NULL,
	[cnaiValorFijoGastos] [decimal](18, 2) NOT NULL,
	[cnaiValorFijoGastosA] [bit] NOT NULL,
	[cnaiCoeficiente] [decimal](18, 2) NOT NULL,
	[cnaiCoeficienteA] [bit] NOT NULL,
	[cnaiCoseguro] [decimal](18, 2) NOT NULL,
	[cnaiCoseguroA] [bit] NOT NULL,
	[cnaiPorcentaje] [decimal](18, 2) NOT NULL,
	[cnaiPorcentajeA] [bit] NOT NULL,
	[cnaiRestaCoseguro] [bit] NOT NULL,
	[cnaiRestaCoseguroA] [bit] NOT NULL,
	[cnaiSinCargo] [bit] NOT NULL,
	[cnaiSinCargoA] [bit] NOT NULL,
	[cnaiJson] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ConvenioNomencladorArchivoItem] PRIMARY KEY CLUSTERED 
(
	[cnaiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioNomencladorEntidadFacturable]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioNomencladorEntidadFacturable](
	[cnefCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[conoCodigo] [bigint] NOT NULL,
	[enfaCodigo] [bigint] NOT NULL,
	[cnefImporte] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.ConvenioNomencladorEntidadFacturable] PRIMARY KEY CLUSTERED 
(
	[cnefCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioNomencladorPlan]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioNomencladorPlan](
	[conpCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[conoCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[espeCodigo] [bigint] NULL,
	[conpCoseguro] [decimal](18, 2) NOT NULL,
	[conpRestaCoseguro] [bit] NOT NULL,
	[conpValorFijo] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[conpPorcentaje] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.ConvenioNomencladorPlan] PRIMARY KEY CLUSTERED 
(
	[conpCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioNomencladorValor]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioNomencladorValor](
	[cnvaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tvnoCodigo] [bigint] NOT NULL,
	[tpreCodigo] [bigint] NULL,
	[convCodigo] [bigint] NOT NULL,
	[cnvaValor] [decimal](18, 4) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[nomeCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.ConvenioNomencladorValor] PRIMARY KEY CLUSTERED 
(
	[cnvaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioPlan]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioPlan](
	[coplCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[convCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[coctCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.ConvenioPlan] PRIMARY KEY CLUSTERED 
(
	[coplCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioProfesional]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioProfesional](
	[coprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[coprDescripcion] [nvarchar](100) NULL,
	[coprFechaCarga] [datetime] NOT NULL,
	[coprFechaDesde] [datetime] NOT NULL,
	[coprFechaHasta] [datetime] NOT NULL,
	[coprCodigoAlternativo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[coprBaseLiquidacion] [int] NULL,
 CONSTRAINT [PK_dbo.ConvenioProfesional] PRIMARY KEY CLUSTERED 
(
	[coprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioProfesionalDerivador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioProfesionalDerivador](
	[copdCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[coprCodigo] [bigint] NOT NULL,
	[deriCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ConvenioProfesionalDerivador] PRIMARY KEY CLUSTERED 
(
	[copdCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioProfesionalMedico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioProfesionalMedico](
	[copmCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[coprCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[copmPorcentaje] [float] NOT NULL,
 CONSTRAINT [PK_dbo.ConvenioProfesionalMedico] PRIMARY KEY CLUSTERED 
(
	[copmCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioProfesionalNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioProfesionalNomenclador](
	[copnCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[coprCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NULL,
	[tcnoCodigo] [bigint] NOT NULL,
	[copnTipoValor] [nvarchar](1) NULL,
	[copnValor] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cobeCodigo] [bigint] NULL,
	[planCodigo] [bigint] NULL,
	[procCodigo] [bigint] NULL,
	[copnTipoImporte] [nvarchar](1) NULL,
	[copnTopeMinimo] [decimal](18, 2) NOT NULL,
	[copnTopeMaximo] [decimal](18, 2) NOT NULL,
	[copnSinValor] [bit] NOT NULL,
	[ambiCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.ConvenioProfesionalNomenclador] PRIMARY KEY CLUSTERED 
(
	[copnCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioUrgencia]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioUrgencia](
	[courCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[convCodigo] [bigint] NOT NULL,
	[courDiaSemana] [int] NOT NULL,
	[courHoraDesde] [datetime] NOT NULL,
	[courHoraHasta] [datetime] NOT NULL,
	[courPorcentaje] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ConvenioUrgencia] PRIMARY KEY CLUSTERED 
(
	[courCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConvenioUrgenciaPractica]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvenioUrgenciaPractica](
	[coupCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[courCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[agruCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.ConvenioUrgenciaPractica] PRIMARY KEY CLUSTERED 
(
	[coupCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuadro]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuadro](
	[cuadCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cuadDescripcion] [nvarchar](100) NULL,
	[cuadObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cuadCodigoIterno] [nvarchar](20) NULL,
	[cuadTipo] [nvarchar](max) NULL,
	[cuadGrafico] [bit] NOT NULL,
	[cuadTotales] [bit] NOT NULL,
	[cuadUsuario] [bit] NOT NULL,
	[cuadOrden] [nvarchar](3) NULL,
 CONSTRAINT [PK_dbo.Cuadro] PRIMARY KEY CLUSTERED 
(
	[cuadCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuadroGrupoPropiedad]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuadroGrupoPropiedad](
	[cuadCodigo] [bigint] NOT NULL,
	[grprCodigo] [bigint] NOT NULL,
	[cuprFila] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.CuadroGrupoPropiedad] PRIMARY KEY CLUSTERED 
(
	[cuadCodigo] ASC,
	[grprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuentaBancaria]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuentaBancaria](
	[cubaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cubaNumero] [nvarchar](max) NOT NULL,
	[cubaCBU] [nvarchar](max) NOT NULL,
	[cubaTipo] [int] NOT NULL,
	[moneCodigo] [bigint] NOT NULL,
	[cubaSaldoInicial] [decimal](18, 2) NOT NULL,
	[cubaFechaInicial] [datetime] NOT NULL,
	[bancCodigo] [bigint] NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.CuentaBancaria] PRIMARY KEY CLUSTERED 
(
	[cubaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Debito]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Debito](
	[debiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[debiFecha] [datetime] NOT NULL,
	[debiNumero] [nvarchar](50) NULL,
	[debiObservacion] [nvarchar](max) NULL,
	[ventCodigo] [bigint] NOT NULL,
	[debiEstado] [nvarchar](10) NULL,
	[debiUsuario] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Debito] PRIMARY KEY CLUSTERED 
(
	[debiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DebitoConcepto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebitoConcepto](
	[decoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[debiCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[decoCantidad] [decimal](18, 2) NOT NULL,
	[decoImporte] [decimal](18, 2) NOT NULL,
	[decoObservacion] [nvarchar](max) NULL,
	[modeCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.DebitoConcepto] PRIMARY KEY CLUSTERED 
(
	[decoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemandaInsatisfecha]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandaInsatisfecha](
	[demaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[turnFecha] [datetime] NOT NULL,
	[paciCodigo] [bigint] NULL,
	[pacoCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[servCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[audiCreado] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[depaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[depaDescripcion] [nvarchar](50) NOT NULL,
	[depaCodigoInterno] [nvarchar](20) NULL,
	[depaDefault] [bit] NOT NULL,
	[provCodigo] [bigint] NOT NULL,
	[depaLatitudGD] [nvarchar](50) NULL,
	[depaLongitudGD] [nvarchar](50) NULL,
	[depaLatitudGS] [nvarchar](50) NULL,
	[depaLongitudGS] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Departamento] PRIMARY KEY CLUSTERED 
(
	[depaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deposito]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deposito](
	[depoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[depoDescripcion] [nvarchar](100) NOT NULL,
	[depoCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[depoListaMailsPedidos] [nvarchar](max) NULL,
	[depoListaMailsStock] [nvarchar](max) NULL,
	[depoStockNegativo] [bit] NOT NULL,
	[depoVigente] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Deposito] PRIMARY KEY CLUSTERED 
(
	[depoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepositoEstante]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepositoEstante](
	[deesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[depoCodigo] [bigint] NOT NULL,
	[deesDescripcion] [nvarchar](100) NULL,
	[deesCodigoInterno] [nvarchar](20) NULL,
	[deesCodigoBarra] [nvarchar](500) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.DepositoEstante] PRIMARY KEY CLUSTERED 
(
	[deesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepositoEstanteNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepositoEstanteNomenclador](
	[deenCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[deesCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.DepositoEstanteNomenclador] PRIMARY KEY CLUSTERED 
(
	[deenCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepositoGenerico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepositoGenerico](
	[degeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[depoCodigo] [bigint] NOT NULL,
	[geneCodigo] [bigint] NOT NULL,
	[degeStockMaximo] [decimal](18, 2) NOT NULL,
	[degeStockMinimo] [decimal](18, 2) NOT NULL,
	[degeStockPuntoPedido] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.DepositoGenerico] PRIMARY KEY CLUSTERED 
(
	[degeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepositoNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepositoNomenclador](
	[denoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[depoCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[denoStockMaximo] [decimal](18, 2) NOT NULL,
	[denoStockMinimo] [decimal](18, 2) NOT NULL,
	[denoStockPuntoPedido] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.DepositoNomenclador] PRIMARY KEY CLUSTERED 
(
	[denoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepositoTipoArticulo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepositoTipoArticulo](
	[detaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[depoCodigo] [bigint] NOT NULL,
	[tartCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.DepositoTipoArticulo] PRIMARY KEY CLUSTERED 
(
	[detaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepositoUsuario]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepositoUsuario](
	[deusCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[depoCodigo] [bigint] NOT NULL,
	[userId] [nvarchar](128) NOT NULL,
	[retiCodigo] [bigint] NULL,
	[petiCodigo] [bigint] NULL,
	[deusTipo] [nvarchar](100) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.DepositoUsuario] PRIMARY KEY CLUSTERED 
(
	[deusCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Derivador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Derivador](
	[deriCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[deriApellido] [nvarchar](50) NOT NULL,
	[deriNombre] [nvarchar](50) NOT NULL,
	[deriMatriculaProvincial] [nvarchar](20) NULL,
	[deriMatriculaNacional] [nvarchar](20) NULL,
	[provCodigo] [bigint] NOT NULL,
	[deriTelefono] [nvarchar](50) NULL,
	[deriMail] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[deriDomicilio] [nvarchar](max) NULL,
	[deriTelefono1] [nvarchar](50) NULL,
	[deriEspecialidad] [nvarchar](50) NULL,
	[tderCodigo] [bigint] NULL,
	[mediCodigo] [bigint] NULL,
	[deriActivo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Derivador] PRIMARY KEY CLUSTERED 
(
	[deriCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnostico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnostico](
	[diagCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[diagDescripcion] [nvarchar](max) NULL,
	[diagCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[diagActivo] [bit] NOT NULL,
	[diagAlerta] [bit] NOT NULL,
	[snomCodigo] [nvarchar](18) NULL,
 CONSTRAINT [PK_dbo.Diagnostico] PRIMARY KEY CLUSTERED 
(
	[diagCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emergencia]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emergencia](
	[emerCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[userId] [nvarchar](128) NULL,
	[emerTelefonoContacto] [nvarchar](50) NULL,
	[emerContacto] [nvarchar](100) NULL,
	[emerPaciente] [nvarchar](200) NULL,
	[emerObservaciones] [nvarchar](max) NULL,
	[emsiCodigo] [bigint] NULL,
	[emecCodigo] [bigint] NOT NULL,
	[emdeCodigo] [bigint] NULL,
	[emerCalle] [nvarchar](200) NULL,
	[emerAltura] [nvarchar](50) NULL,
	[emerPiso] [nvarchar](20) NULL,
	[emerDepto] [nvarchar](20) NULL,
	[locaCodigo] [bigint] NULL,
	[emerFechaContacto] [datetime] NOT NULL,
	[emerDespacho] [datetime] NULL,
	[moviCodigo] [bigint] NULL,
	[chofCodigo] [bigint] NULL,
	[mediCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[emerArribo] [datetime] NULL,
	[emerArriboObservacion] [nvarchar](max) NULL,
	[emerTraslado] [datetime] NULL,
	[emerTrasladoObservacion] [nvarchar](max) NULL,
	[emerArriboTraslado] [datetime] NULL,
	[emerFinalizacion] [datetime] NULL,
	[emerCancelacion] [datetime] NULL,
	[emerCancelacionObservacion] [nvarchar](max) NULL,
	[emerLatitud] [nvarchar](max) NULL,
	[emerLongitud] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[emerCodigoSAME] [nvarchar](50) NULL,
	[emerSalida] [datetime] NULL,
 CONSTRAINT [PK_dbo.Emergencia] PRIMARY KEY CLUSTERED 
(
	[emerCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaArchivo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaArchivo](
	[emarCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[emerCodigo] [bigint] NOT NULL,
	[emarDescripcion] [nvarchar](max) NULL,
	[emarArchivo] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EmergenciaArchivo] PRIMARY KEY CLUSTERED 
(
	[emarCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaCodigo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaCodigo](
	[emecCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[emecDescripcion] [nvarchar](max) NULL,
	[emecCodigoInterno] [nvarchar](max) NULL,
	[emecColor] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EmergenciaCodigo] PRIMARY KEY CLUSTERED 
(
	[emecCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaDestino]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaDestino](
	[emdeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[emdeDescripcion] [nvarchar](max) NULL,
	[emdeCalle] [nvarchar](200) NULL,
	[emdeAltura] [nvarchar](50) NULL,
	[locaCodigo] [bigint] NOT NULL,
	[emdeLatitud] [nvarchar](max) NULL,
	[emdeLongitud] [nvarchar](max) NULL,
	[emdeTelefono] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[emdePiso] [nvarchar](50) NULL,
	[emdeDepto] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.EmergenciaDestino] PRIMARY KEY CLUSTERED 
(
	[emdeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaPaciente]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaPaciente](
	[empaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[emerCodigo] [bigint] NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[emecCodigo] [bigint] NOT NULL,
	[pacoCodigo] [bigint] NOT NULL,
	[empaArchivo] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[empaCodigoSAME] [nvarchar](50) NULL,
	[diagCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.EmergenciaPaciente] PRIMARY KEY CLUSTERED 
(
	[empaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergenciaSintoma]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergenciaSintoma](
	[emsiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[emsiDescripcion] [nvarchar](max) NULL,
	[emsiCodigoInterno] [nvarchar](20) NULL,
	[emecCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EmergenciaSintoma] PRIMARY KEY CLUSTERED 
(
	[emsiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[emprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[emprRazonSocial] [nvarchar](100) NOT NULL,
	[emprCalle] [nvarchar](50) NULL,
	[emprAltura] [nvarchar](30) NULL,
	[emprPiso] [nvarchar](30) NULL,
	[emprDepto] [nvarchar](10) NULL,
	[emprLocalidad] [nvarchar](50) NULL,
	[provCodigo] [bigint] NOT NULL,
	[paisCodigo] [bigint] NOT NULL,
	[emprCodigoPostal] [nvarchar](50) NULL,
	[coivCodigo] [bigint] NOT NULL,
	[emprCUIT] [nvarchar](50) NULL,
	[emprIIBB] [nvarchar](50) NULL,
	[emprFechaInicio] [datetime] NOT NULL,
	[emprTelefono] [nvarchar](30) NULL,
	[emprEmail] [nvarchar](50) NULL,
	[emprWeb] [nvarchar](50) NULL,
	[emprURLFE] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[CondicionVenta_coveCodigo] [bigint] NULL,
	[emprLogo] [varbinary](max) NULL,
	[emprMarcaAgua] [varbinary](max) NULL,
	[emprTokenValidador] [nvarchar](max) NULL,
	[emprTokenAfip] [nvarchar](max) NULL,
	[emprCBU] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Empresa] PRIMARY KEY CLUSTERED 
(
	[emprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaTipoTributo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaTipoTributo](
	[emttCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
	[titrCodigo] [bigint] NOT NULL,
	[emprMinimo] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.EmpresaTipoTributo] PRIMARY KEY CLUSTERED 
(
	[emttCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaToken]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaToken](
	[emtoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
	[emtoToken] [nvarchar](max) NULL,
	[emtoSing] [nvarchar](max) NULL,
	[emtoDesde] [datetime] NOT NULL,
	[emtoHasta] [datetime] NOT NULL,
	[emtoCuit] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.EmpresaToken] PRIMARY KEY CLUSTERED 
(
	[emtoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaUbicacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaUbicacion](
	[emubCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EmpresaUbicacion] PRIMARY KEY CLUSTERED 
(
	[emubCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enfoque]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enfoque](
	[enfoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enfoDescripcion] [nvarchar](max) NULL,
	[enfoVigente] [bit] NOT NULL,
	[enfoAutomatico] [bit] NOT NULL,
	[campCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Enfoque] PRIMARY KEY CLUSTERED 
(
	[enfoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnfoqueRespuesta]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnfoqueRespuesta](
	[enreCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enfoCodigo] [bigint] NULL,
	[enreCodigoInterno] [nvarchar](max) NULL,
	[enreDescripcion] [nvarchar](max) NULL,
	[enreGeneraNuevoEvento] [bit] NOT NULL,
	[enreDiasNuevoEvento] [int] NOT NULL,
	[enfoCodigoNuevo] [bigint] NULL,
 CONSTRAINT [PK_dbo.EnfoqueRespuesta] PRIMARY KEY CLUSTERED 
(
	[enreCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnfoqueUsuario]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnfoqueUsuario](
	[enusCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enfoCodigo] [bigint] NOT NULL,
	[userId] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.EnfoqueUsuario] PRIMARY KEY CLUSTERED 
(
	[enusCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntidadFacturable]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntidadFacturable](
	[enfaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enfaRazonSocial] [nvarchar](1000) NOT NULL,
	[enfaCalle] [nvarchar](200) NULL,
	[enfaAltura] [nvarchar](30) NULL,
	[enfaPiso] [nvarchar](20) NULL,
	[enfaLocalidad] [nvarchar](100) NULL,
	[provCodigo] [bigint] NOT NULL,
	[paisCodigo] [bigint] NOT NULL,
	[coivCodigo] [bigint] NOT NULL,
	[coveCodigo] [bigint] NOT NULL,
	[tdocCodigo] [bigint] NOT NULL,
	[enfaNumeroDocumento] [nvarchar](50) NULL,
	[tperCodigo] [bigint] NOT NULL,
	[enfaVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[enfaFantasia] [nvarchar](1000) NOT NULL,
	[enfaCodigoInterno] [nvarchar](20) NULL,
	[enfaCopias] [int] NOT NULL,
	[enfaGranContribuyente] [bit] NOT NULL,
	[enfaCierreGral] [bit] NOT NULL,
	[coveCodigoPyme] [bigint] NOT NULL,
	[enfaAmbitoAtencion] [bit] NOT NULL,
	[enfaContratacion] [bit] NOT NULL,
	[enfaUbicacion] [bit] NOT NULL,
	[enfaCobertura] [bit] NOT NULL,
	[enfaAmbitoFacturacion] [bit] NOT NULL,
	[enfaAtencionesControladas] [bit] NOT NULL,
	[enfaAtencionesValidadas] [bit] NOT NULL,
	[enfaAgrupaPeriodo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.EntidadFacturable] PRIMARY KEY CLUSTERED 
(
	[enfaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntidadFacturableAlicuota]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntidadFacturableAlicuota](
	[enalCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enfaCodigo] [bigint] NOT NULL,
	[titrCodigo] [bigint] NOT NULL,
	[enfaTipo] [nvarchar](1) NULL,
	[enfaPorcentaje] [decimal](18, 2) NOT NULL,
	[enfaFechaDesde] [datetime] NOT NULL,
	[enfaFechaHasta] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.EntidadFacturableAlicuota] PRIMARY KEY CLUSTERED 
(
	[enalCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntidadFacturableExencion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntidadFacturableExencion](
	[efexCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enfaCodigo] [bigint] NOT NULL,
	[titrCodigo] [bigint] NOT NULL,
	[efexTipo] [nvarchar](1) NULL,
	[efexFechaDesde] [datetime] NOT NULL,
	[efexFechaHasta] [datetime] NOT NULL,
	[efexArchivo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.EntidadFacturableExencion] PRIMARY KEY CLUSTERED 
(
	[efexCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntidadFacturablePersona]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntidadFacturablePersona](
	[efpeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enfaCodigo] [bigint] NOT NULL,
	[persCodigo] [bigint] NOT NULL,
	[efpeVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntidadFacturablePersona] PRIMARY KEY CLUSTERED 
(
	[efpeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntidadFacturablePlantilla]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntidadFacturablePlantilla](
	[efplCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[efplTitulo] [nvarchar](max) NULL,
	[efplTexto] [nvarchar](max) NULL,
	[efplDestino] [nvarchar](max) NULL,
	[enfaCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.EntidadFacturablePlantilla] PRIMARY KEY CLUSTERED 
(
	[efplCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrada]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrada](
	[entrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[entrFecha] [datetime] NOT NULL,
	[entrEvolucion] [nvarchar](max) NULL,
	[entrEvolucionR] [nvarchar](max) NULL,
	[entrCodigoPadre] [nvarchar](max) NULL,
	[mediCodigo] [bigint] NOT NULL,
	[servCodigo] [bigint] NULL,
	[espeCodigo] [bigint] NOT NULL,
	[entrTipoAtencion] [nvarchar](2) NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[entrConsulta] [nvarchar](max) NULL,
	[entrConsultaR] [nvarchar](max) NULL,
	[entrTratamiento] [nvarchar](max) NULL,
	[entrTratamientoR] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[grtiCodigo] [bigint] NOT NULL,
	[inteCodigo] [bigint] NULL,
	[turnCodigo] [bigint] NULL,
	[entrFechaAtencion] [datetime] NOT NULL,
	[entrOdontograma] [bigint] NULL,
	[entrFechaCarga] [datetime] NOT NULL,
	[eninCodigoOrigen] [bigint] NULL,
	[qutuCodigo] [bigint] NULL,
	[tallCodigo] [bigint] NULL,
	[papuCodigo] [bigint] NULL,
	[entrAuditable] [bit] NOT NULL,
	[entrAuditada] [bit] NOT NULL,
	[mediCodigoAuditoria] [bigint] NULL,
	[entrFechaAuditoria] [datetime] NULL,
	[entrComentarioAuditoria] [nvarchar](max) NULL,
	[entrFirma] [datetime] NULL,
	[entrFirmaFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Entrada] PRIMARY KEY CLUSTERED 
(
	[entrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaBalance]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaBalance](
	[enbaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tibaCodigo] [bigint] NOT NULL,
	[entrCodigo] [bigint] NOT NULL,
	[enbaFecha] [datetime] NOT NULL,
	[enbaTipoRegistro] [nvarchar](1) NULL,
	[enbaTipo] [nvarchar](200) NULL,
	[enbaColoco] [decimal](18, 2) NOT NULL,
	[enbaValorD] [decimal](18, 2) NOT NULL,
	[enbaValorB] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntradaBalance] PRIMARY KEY CLUSTERED 
(
	[enbaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaBalanceCierre]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaBalanceCierre](
	[enbcCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[entrCodigo] [bigint] NOT NULL,
	[enbcFecha] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntradaBalanceCierre] PRIMARY KEY CLUSTERED 
(
	[enbcCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaDiagnostico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaDiagnostico](
	[endiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[diagCodigo] [bigint] NOT NULL,
	[entrCodigo] [bigint] NOT NULL,
	[endiTipo] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntradaDiagnostico] PRIMARY KEY CLUSTERED 
(
	[endiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaGrupoOpcion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaGrupoOpcion](
	[engoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[engpCodigo] [bigint] NOT NULL,
	[grpoCodigo] [bigint] NOT NULL,
	[engoObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntradaGrupoOpcion] PRIMARY KEY CLUSTERED 
(
	[engoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaGrupoPropiedad]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaGrupoPropiedad](
	[engpCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[entrCodigo] [bigint] NOT NULL,
	[engpValor] [nvarchar](max) NULL,
	[engpObservacion] [nvarchar](max) NULL,
	[grprCodigo] [bigint] NOT NULL,
	[grupCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntradaGrupoPropiedad] PRIMARY KEY CLUSTERED 
(
	[engpCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaIndicacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaIndicacion](
	[eninCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[entrCodigo] [bigint] NOT NULL,
	[indiCodigo] [bigint] NOT NULL,
	[eninHora] [datetime] NULL,
	[eninCantidad] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[eninIntervalo] [float] NOT NULL,
	[eninFin] [datetime] NULL,
	[eninEstado] [nvarchar](3) NULL,
	[eninObservacion] [nvarchar](max) NULL,
	[eninInicio] [datetime] NULL,
	[infrCodigo] [bigint] NULL,
	[eninDuracion] [int] NOT NULL,
	[eninDuracionUnidad] [nvarchar](1) NULL,
	[eninTipo] [int] NOT NULL,
	[eninOrigen] [bigint] NULL,
	[eninFechaEvento] [datetime] NULL,
	[eninUrgente] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.EntradaIndicacion] PRIMARY KEY CLUSTERED 
(
	[eninCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaIndicacionEvento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaIndicacionEvento](
	[eineCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[eninCodigo] [bigint] NOT NULL,
	[eineFecha] [datetime] NOT NULL,
	[eineObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[eineFechaAplicacion] [datetime] NOT NULL,
	[eineTipo] [int] NOT NULL,
	[mediCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.EntradaIndicacionEvento] PRIMARY KEY CLUSTERED 
(
	[eineCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaMedicamento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaMedicamento](
	[enmeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[entrCodigo] [bigint] NOT NULL,
	[geneCodigo] [bigint] NOT NULL,
	[enmeCantidad] [float] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[enmeDosis] [float] NOT NULL,
	[enmeIntervalo] [float] NOT NULL,
	[enmeHora] [datetime] NULL,
	[enmeFin] [datetime] NULL,
	[enmeEstado] [nvarchar](3) NULL,
	[enmeObservacion] [nvarchar](max) NULL,
	[enmeInicio] [datetime] NULL,
	[enmeIndice] [int] NOT NULL,
	[enmePadre] [bigint] NULL,
	[tumeCodigo] [bigint] NOT NULL,
	[meviCodigo] [bigint] NULL,
	[mefrCodigo] [bigint] NULL,
	[meesCodigo] [bigint] NULL,
	[enmeDuracion] [int] NOT NULL,
	[enmeDuracionUnidad] [nvarchar](1) NULL,
	[enmeSolucion] [bit] NOT NULL,
	[enmeOrigen] [bigint] NULL,
	[eninCodigo] [bigint] NULL,
	[enmeTipo] [int] NOT NULL,
	[enmeFechaEvento] [datetime] NULL,
	[enmeUrgente] [bit] NOT NULL,
	[enmeDia] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EntradaMedicamento] PRIMARY KEY CLUSTERED 
(
	[enmeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaMedicamentoEvento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaMedicamentoEvento](
	[emeeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enmeCodigo] [bigint] NOT NULL,
	[emeeFecha] [datetime] NOT NULL,
	[emeeObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[emeeFechaAplicacion] [datetime] NOT NULL,
	[emeeTipo] [int] NOT NULL,
	[mediCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.EntradaMedicamentoEvento] PRIMARY KEY CLUSTERED 
(
	[emeeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaMenu]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaMenu](
	[enmnCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[entrCodigo] [bigint] NOT NULL,
	[enmnFechaDesde] [datetime] NOT NULL,
	[enmnFechaHasta] [datetime] NOT NULL,
	[enmnObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntradaMenu] PRIMARY KEY CLUSTERED 
(
	[enmnCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaMenuExclusion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaMenuExclusion](
	[enmxCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enmnCodigo] [bigint] NOT NULL,
	[alimCodigo] [bigint] NULL,
	[comiCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntradaMenuExclusion] PRIMARY KEY CLUSTERED 
(
	[enmxCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaMenuItem]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaMenuItem](
	[enmiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enmnCodigo] [bigint] NOT NULL,
	[metiCodigo] [bigint] NOT NULL,
	[comiCodigo] [bigint] NOT NULL,
	[enmiCantidad] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[menuCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.EntradaMenuItem] PRIMARY KEY CLUSTERED 
(
	[enmiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaProcedimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaProcedimiento](
	[enprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[entrCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[enprHora] [datetime] NULL,
	[enprCantidad] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[enprObservacion] [nvarchar](max) NULL,
	[enprEstado] [nvarchar](1) NULL,
	[eninCodigo] [bigint] NULL,
	[paoiCodigo] [bigint] NULL,
	[servCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.EntradaProcedimiento] PRIMARY KEY CLUSTERED 
(
	[enprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaProtocoloInfusion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaProtocoloInfusion](
	[enpiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enpiFechaInicio] [datetime] NOT NULL,
	[enpiPeso] [decimal](18, 2) NOT NULL,
	[enpiTalla] [decimal](18, 2) NOT NULL,
	[enpiSupCorporal] [decimal](18, 2) NOT NULL,
	[enpiCreatinina] [decimal](18, 2) NOT NULL,
	[enpiClearence] [decimal](18, 2) NOT NULL,
	[enpiObservaciones] [nvarchar](max) NULL,
	[prinCodigo] [bigint] NOT NULL,
	[pacoCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntradaProtocoloInfusion] PRIMARY KEY CLUSTERED 
(
	[enpiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaProtocoloInfusionCiclo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaProtocoloInfusionCiclo](
	[enpcCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enpcDescripcion] [nvarchar](max) NOT NULL,
	[enpcOrden] [int] NOT NULL,
	[enpcDiaInicio] [int] NOT NULL,
	[enpiCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[enpcConsentimiento] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.EntradaProtocoloInfusionCiclo] PRIMARY KEY CLUSTERED 
(
	[enpcCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaProtocoloInfusionDia]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaProtocoloInfusionDia](
	[enpdCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[enpdDescripcion] [nvarchar](200) NOT NULL,
	[enpdDuracion] [int] NOT NULL,
	[enpdConsecutivo] [bit] NOT NULL,
	[enpdObservacion] [nvarchar](max) NULL,
	[enpdOrden] [int] NOT NULL,
	[enpdDia] [int] NOT NULL,
	[enpdMargenInicio] [int] NOT NULL,
	[enpcCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EntradaProtocoloInfusionDia] PRIMARY KEY CLUSTERED 
(
	[enpdCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaProtocoloInfusionDiaNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador](
	[epdnCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[geneCodigo] [bigint] NOT NULL,
	[epdnDosis] [decimal](18, 2) NOT NULL,
	[tumeCodigo] [bigint] NOT NULL,
	[geneCodigoSolucion] [bigint] NULL,
	[meviCodigo] [bigint] NULL,
	[mefrCodigo] [bigint] NULL,
	[epdnTiempoInfusion] [nvarchar](max) NULL,
	[epdnTipoTiempo] [nvarchar](20) NULL,
	[epdnObservacion] [nvarchar](max) NULL,
	[epdnOrden] [nvarchar](max) NULL,
	[epdnVolumen] [int] NOT NULL,
	[epdnRelacion] [nvarchar](1) NULL,
	[epdnTope] [int] NOT NULL,
	[epdnAjustaClearence] [bit] NOT NULL,
	[enpdCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[epdnPreparacion] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EntradaProtocoloInfusionDiaNomenclador] PRIMARY KEY CLUSTERED 
(
	[epdnCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntradaSnomed]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradaSnomed](
	[ensnCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[entrCodigo] [bigint] NOT NULL,
	[snomCodigo] [nvarchar](18) NULL,
	[ensnECL] [nvarchar](max) NULL,
	[ensnCategoria] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.EntradaSnomed] PRIMARY KEY CLUSTERED 
(
	[ensnCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[equiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[equiDescripcion] [nvarchar](50) NOT NULL,
	[equiCodigoInterno] [nvarchar](20) NULL,
	[equiModalidad] [nvarchar](50) NULL,
	[equiTitulo] [nvarchar](50) NULL,
	[equiUrl] [nvarchar](50) NULL,
	[equiVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[equiSoporteKg] [decimal](18, 2) NOT NULL,
	[consCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Equipo] PRIMARY KEY CLUSTERED 
(
	[equiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipoBloqueo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipoBloqueo](
	[eqblCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[equiCodigo] [bigint] NOT NULL,
	[eqblFechaDesde] [datetime] NOT NULL,
	[eqblFechaHasta] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[eqblHoraDesde] [datetime] NOT NULL,
	[eqblHoraHasta] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.EquipoBloqueo] PRIMARY KEY CLUSTERED 
(
	[eqblCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipoProcedimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipoProcedimiento](
	[equpCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[equiCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EquipoProcedimiento] PRIMARY KEY CLUSTERED 
(
	[equpCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipoQuirurgico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipoQuirurgico](
	[eqqrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[eqqrDescripcion] [nvarchar](200) NULL,
	[eqqrCodigoIterno] [nvarchar](20) NULL,
	[eqqrActivo] [bit] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.EquipoQuirurgico] PRIMARY KEY CLUSTERED 
(
	[eqqrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipoQuirurgicoTarea]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipoQuirurgicoTarea](
	[eqqtCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[quttCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[eqqrCodigo] [bigint] NOT NULL,
	[eqqtTipo] [nvarchar](100) NULL,
	[eqqtActivo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.EquipoQuirurgicoTarea] PRIMARY KEY CLUSTERED 
(
	[eqqtCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipoVariableValor]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipoVariableValor](
	[eqvvCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[equiCodigo] [bigint] NOT NULL,
	[eqvvValor] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[sivaCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.EquipoVariableValor] PRIMARY KEY CLUSTERED 
(
	[eqvvCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[espeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[espeDescripcion] [nvarchar](50) NOT NULL,
	[espeCodigoInterno] [nvarchar](50) NULL,
	[servCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[espeEdadDesde] [int] NOT NULL,
	[espeEdadHasta] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Especialidad] PRIMARY KEY CLUSTERED 
(
	[espeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadHomologacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadHomologacion](
	[eshoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[espeCodigo] [bigint] NOT NULL,
	[cobeCodigo] [bigint] NOT NULL,
	[eshoCodigoHomologado] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.EspecialidadHomologacion] PRIMARY KEY CLUSTERED 
(
	[eshoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Esquema]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Esquema](
	[esquCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[esquDescripcion] [nvarchar](max) NOT NULL,
	[esquArchivo] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Esquema] PRIMARY KEY CLUSTERED 
(
	[esquCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[evenCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NULL,
	[contCodigo] [bigint] NULL,
	[userId] [nvarchar](128) NULL,
	[evenFechaProgramada] [datetime] NOT NULL,
	[evenFecha] [datetime] NOT NULL,
	[evenTexto] [nvarchar](max) NULL,
	[evenTextoAuditoria] [nvarchar](max) NULL,
	[enfoCodigo] [bigint] NOT NULL,
	[enreCodigo] [bigint] NULL,
	[evenEstado] [nvarchar](20) NULL,
	[evenCodigoOrigen] [bigint] NULL,
	[evenOrden] [int] NOT NULL,
	[campCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[evenCodigoInterno] [nvarchar](20) NULL,
	[evenTipoCodigo] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Evento] PRIMARY KEY CLUSTERED 
(
	[evenCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expediente]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expediente](
	[expeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[expeNumero] [nvarchar](50) NOT NULL,
	[expeFecha] [datetime] NOT NULL,
	[expeObservacion] [nvarchar](max) NULL,
	[expeArchivo] [nvarchar](max) NULL,
	[expeFechaRecepcion] [datetime] NULL,
	[expeImporte] [decimal](18, 2) NOT NULL,
	[exesCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.Expediente] PRIMARY KEY CLUSTERED 
(
	[expeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteEstado]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteEstado](
	[exesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[exesDescripcion] [nvarchar](50) NOT NULL,
	[exesCodigoInterno] [nvarchar](20) NULL,
	[exesDias] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteEstado] PRIMARY KEY CLUSTERED 
(
	[exesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpedienteVenta]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpedienteVenta](
	[exveCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[expeCodigo] [bigint] NOT NULL,
	[ventCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.ExpedienteVenta] PRIMARY KEY CLUSTERED 
(
	[exveCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FETransaccion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FETransaccion](
	[tranCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tranFecha] [datetime] NOT NULL,
	[tranOperacion] [nvarchar](max) NULL,
	[tranRequest] [nvarchar](max) NULL,
	[tranResponse] [nvarchar](max) NULL,
	[tranUsuario] [nvarchar](max) NULL,
	[tranAplicacion] [nvarchar](max) NULL,
	[ventCodigo] [bigint] NULL,
	[reciCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.FETransaccion] PRIMARY KEY CLUSTERED 
(
	[tranCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FETransaccionAfip]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FETransaccionAfip](
	[trafCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[trafRequest] [nvarchar](max) NULL,
	[trafResponse] [nvarchar](max) NULL,
	[tranCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.FETransaccionAfip] PRIMARY KEY CLUSTERED 
(
	[trafCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generico](
	[geneCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[geneCodigoInterno] [nvarchar](20) NULL,
	[geneDescripcion] [nvarchar](max) NOT NULL,
	[genePresentacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tumeCodigo] [bigint] NULL,
	[geneUsoFrecuente] [bit] NOT NULL,
	[snomCodigo] [nvarchar](18) NULL,
	[geneUsoReceta] [bit] NOT NULL,
	[geneVigente] [bit] NOT NULL,
	[geneRecetaArchivada] [bit] NOT NULL,
	[geneGenerico] [bit] NOT NULL,
	[genePrincipioActivo] [bit] NOT NULL,
	[geneCodigoPadre] [bigint] NULL,
	[geneOncologia] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Generico] PRIMARY KEY CLUSTERED 
(
	[geneCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[grupCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grupDescripcion] [nvarchar](max) NOT NULL,
	[grupObservaciones] [nvarchar](max) NULL,
	[grupObligatorio] [bit] NOT NULL,
	[grupTipo] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[grupCodigoInterno] [nvarchar](20) NULL,
	[grupActivo] [bit] NOT NULL,
	[grupUltimaEntrada] [bit] NOT NULL,
	[grupMultiAmbito] [bit] NOT NULL,
	[grupUltimaEntradaInternacion] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Grupo] PRIMARY KEY CLUSTERED 
(
	[grupCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoDiagnostico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoDiagnostico](
	[grdiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grupCodigo] [bigint] NOT NULL,
	[diagCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.GrupoDiagnostico] PRIMARY KEY CLUSTERED 
(
	[grdiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoEfector]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoEfector](
	[grefCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grupCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[espeCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.GrupoEfector] PRIMARY KEY CLUSTERED 
(
	[grefCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoMedico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoMedico](
	[grmeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grupCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[grmePredeterminado] [bit] NOT NULL,
	[grmeFavorito] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.GrupoMedico] PRIMARY KEY CLUSTERED 
(
	[grmeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoPerfil]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoPerfil](
	[grpeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grupCodigo] [bigint] NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.GrupoPerfil] PRIMARY KEY CLUSTERED 
(
	[grpeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoPropiedad]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoPropiedad](
	[grprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grprDescripcion] [nvarchar](max) NOT NULL,
	[grprObligatorio] [bit] NOT NULL,
	[grprValor] [nvarchar](max) NULL,
	[grprPredeterminado] [bit] NOT NULL,
	[grprFormula] [nvarchar](max) NULL,
	[grprMuestraUltimo] [bit] NOT NULL,
	[grprMuestraHistorico] [bit] NOT NULL,
	[grtpCodigo] [bigint] NOT NULL,
	[grprObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[grprCodigoInterno] [nvarchar](20) NULL,
	[grprColorFondo] [nvarchar](20) NULL,
	[grprColorTexto] [nvarchar](20) NULL,
	[grprHelp] [nvarchar](max) NULL,
	[grprFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.GrupoPropiedad] PRIMARY KEY CLUSTERED 
(
	[grprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoPropiedadAsignada]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoPropiedadAsignada](
	[grpaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grupCodigo] [bigint] NOT NULL,
	[grprCodigo] [bigint] NOT NULL,
	[grpaOrden] [int] NOT NULL,
	[grpaFila] [int] NOT NULL,
	[grpaColumna] [int] NOT NULL,
	[grpaDescripcion] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.GrupoPropiedadAsignada] PRIMARY KEY CLUSTERED 
(
	[grpaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoPropiedadOpcion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoPropiedadOpcion](
	[grpoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grprCodigo] [bigint] NOT NULL,
	[grpoDescripcion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[grpoCodigoInterno] [nvarchar](20) NULL,
	[grpoOrden] [int] NOT NULL,
	[grpoColorFondo] [nvarchar](20) NULL,
	[grpoColorTexto] [nvarchar](20) NULL,
	[grpoObservacion] [nvarchar](3) NULL,
 CONSTRAINT [PK_dbo.GrupoPropiedadOpcion] PRIMARY KEY CLUSTERED 
(
	[grpoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoTipo](
	[grtiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grtiDescripcion] [nvarchar](max) NOT NULL,
	[grtiCodigoInterno] [nvarchar](20) NULL,
	[grtiCampoConsulta] [bit] NOT NULL,
	[grtiCampoEvolucion] [bit] NOT NULL,
	[grtiCampoTratamieno] [bit] NOT NULL,
	[grtiSolicitaDiagnostico] [bit] NOT NULL,
	[grtiValoresHistoricos] [bit] NOT NULL,
	[grtiActualizarValores] [bit] NOT NULL,
	[grtiUnico] [bit] NOT NULL,
	[grtiMedicamentos] [bit] NOT NULL,
	[grtiProcedimientos] [bit] NOT NULL,
	[grtiIndicaciones] [bit] NOT NULL,
	[grtiMostrar] [nvarchar](50) NULL,
	[grtiImagenes] [bit] NOT NULL,
	[grtiAltaMedica] [bit] NOT NULL,
	[grtiUnicoTipo] [bit] NOT NULL,
	[grtiDispensarMedicamentos] [bit] NOT NULL,
	[grtiOrden] [int] NOT NULL,
	[grtiSeccion] [nvarchar](max) NULL,
	[grtiReporte] [nvarchar](max) NULL,
	[grtiFirma] [bit] NOT NULL,
	[grtiUltimaEvolucion] [bit] NOT NULL,
	[grtiCargaAntecedentes] [bit] NOT NULL,
	[grtiCargaMedicacionHabitual] [bit] NOT NULL,
	[grtiNoCargarUltimoValor] [bit] NOT NULL,
	[grtiAsistente] [bit] NOT NULL,
	[grtiDiagnosticoObligatorio] [bit] NOT NULL,
	[grtiCambiarFecha] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.GrupoTipo] PRIMARY KEY CLUSTERED 
(
	[grtiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoTipoGrupo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoTipoGrupo](
	[grtgCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grupCodigo] [bigint] NOT NULL,
	[grtiCodigo] [bigint] NOT NULL,
	[grtgObligatorio] [bit] NOT NULL,
	[grtgDesplegado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.GrupoTipoGrupo] PRIMARY KEY CLUSTERED 
(
	[grtgCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoTipoMedico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoTipoMedico](
	[grtmCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grtiCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.GrupoTipoMedico] PRIMARY KEY CLUSTERED 
(
	[grtmCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoTipoOrden]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoTipoOrden](
	[grtiCodigo] [bigint] NULL,
	[grtiOrden] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoTipoPerfil]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoTipoPerfil](
	[gtpeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grtiCodigo] [bigint] NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.GrupoTipoPerfil] PRIMARY KEY CLUSTERED 
(
	[gtpeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrupoTipoPropiedad]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrupoTipoPropiedad](
	[grtpCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[grtpDescripcion] [nvarchar](max) NOT NULL,
	[grtpObjeto] [nvarchar](max) NOT NULL,
	[grtpUtilizaOpciones] [bit] NOT NULL,
	[grtpTipo] [nvarchar](max) NULL,
	[grtpIcono] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[grtpCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.GrupoTipoPropiedad] PRIMARY KEY CLUSTERED 
(
	[grtpCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[habiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[habiDescripcion] [nvarchar](max) NULL,
	[habiCodigoInterno] [nvarchar](20) NULL,
	[habiNroHabitacion] [nvarchar](100) NULL,
	[habiPiso] [nvarchar](100) NULL,
	[areaCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Habitacion] PRIMARY KEY CLUSTERED 
(
	[habiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[horaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mediCodigo] [bigint] NULL,
	[servCodigo] [bigint] NULL,
	[horaDiaSemana] [int] NOT NULL,
	[horaFechaDesde] [datetime] NOT NULL,
	[horaFechaHasta] [datetime] NOT NULL,
	[horaDesde] [datetime] NOT NULL,
	[horaHasta] [datetime] NOT NULL,
	[horaDias] [int] NOT NULL,
	[horaWeb] [bit] NOT NULL,
	[horaMinutos] [int] NOT NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[consCodigo] [bigint] NULL,
	[horaPacientes] [int] NOT NULL,
	[horaSobreTurnos] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[horaTipoSobreturno] [int] NOT NULL,
	[horaProgramado] [bit] NOT NULL,
	[horaEspontaneo] [bit] NOT NULL,
	[horaPacienteSimultaneos] [int] NOT NULL,
	[horaSinTurnos] [bit] NOT NULL,
	[horaConcurrencia] [nvarchar](10) NULL,
	[horaObservacion] [nvarchar](max) NULL,
	[horaOferta] [nvarchar](50) NULL,
	[horaSeRepite] [int] NOT NULL,
	[horaPresente] [bit] NOT NULL,
	[horaTodosUsuarios] [bit] NOT NULL,
	[horaTodasCoberturas] [bit] NOT NULL,
	[hotiCodigo] [bigint] NOT NULL,
	[horaSobreescribeRecurrente] [bit] NOT NULL,
	[horaTrabajaFeriado] [bit] NOT NULL,
	[horaVigente] [bit] NOT NULL,
	[horaPacientePV] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Horario] PRIMARY KEY CLUSTERED 
(
	[horaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioAvanzado]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioAvanzado](
	[horaCodigo] [bigint] NOT NULL,
	[hoavSeRepite] [nvarchar](max) NULL,
	[hoavRepetirCda] [int] NOT NULL,
	[hoavFinalizaOpcion] [int] NOT NULL,
	[hoavFinaliza] [datetime] NULL,
	[hoavFinalizaRepeticion] [int] NOT NULL,
 CONSTRAINT [PK_dbo.HorarioAvanzado] PRIMARY KEY CLUSTERED 
(
	[horaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioCobertura]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioCobertura](
	[hocoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[horaCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[hocoExcluir] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[hocoCantidad] [int] NOT NULL,
	[hocoPorcentaje] [int] NOT NULL,
 CONSTRAINT [PK_dbo.HorarioCobertura] PRIMARY KEY CLUSTERED 
(
	[hocoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioEspecialidad]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioEspecialidad](
	[hoesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[horaCodigo] [bigint] NOT NULL,
	[suesCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.HorarioEspecialidad] PRIMARY KEY CLUSTERED 
(
	[hoesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioNoAtencion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioNoAtencion](
	[honoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[honoObservacion] [nvarchar](max) NULL,
	[honoFechaDesde] [datetime] NOT NULL,
	[honoFechaHasta] [datetime] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[servCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[honoTextoMail] [nvarchar](max) NULL,
	[honoReprogramado] [bit] NOT NULL,
	[horaCodigo] [bigint] NULL,
	[recrCodigo] [bigint] NULL,
	[remoCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.HorarioNoAtencion] PRIMARY KEY CLUSTERED 
(
	[honoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioNoAtencionRemplazo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioNoAtencionRemplazo](
	[honrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[honoCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[honrFechaDesde] [datetime] NOT NULL,
	[honrFechaHasta] [datetime] NOT NULL,
	[honrAgendaDisponible] [bit] NOT NULL,
	[honrObservaciones] [nvarchar](max) NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.HorarioNoAtencionRemplazo] PRIMARY KEY CLUSTERED 
(
	[honrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioPerfil]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioPerfil](
	[hopeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[horaCodigo] [bigint] NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NULL,
	[housBloqueado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.HorarioPerfil] PRIMARY KEY CLUSTERED 
(
	[hopeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioProcedimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioProcedimiento](
	[hoprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[horaCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[meprCodigo] [bigint] NULL,
	[seprCodigo] [bigint] NULL,
	[hoprCantidad] [int] NOT NULL,
	[hoprTipo] [nvarchar](20) NULL,
	[hoprVentanaHs] [int] NOT NULL,
 CONSTRAINT [PK_dbo.HorarioProcedimiento] PRIMARY KEY CLUSTERED 
(
	[hoprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioReserva]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioReserva](
	[horeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[horaCodigo] [bigint] NOT NULL,
	[horeDesde] [datetime] NOT NULL,
	[horeHasta] [datetime] NOT NULL,
	[horeLimiteHoras] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[horeWeb] [bit] NOT NULL,
	[tcapCodigo] [bigint] NULL,
	[horeHoraDesde] [datetime] NOT NULL,
	[horeHoraHasta] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.HorarioReserva] PRIMARY KEY CLUSTERED 
(
	[horeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioReservaCobertura]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioReservaCobertura](
	[hocoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[horeCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.HorarioReservaCobertura] PRIMARY KEY CLUSTERED 
(
	[hocoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioSillon]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioSillon](
	[hosiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[horaCodigo] [bigint] NOT NULL,
	[sillCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.HorarioSillon] PRIMARY KEY CLUSTERED 
(
	[hosiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioSobreTurno]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioSobreTurno](
	[hostCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[horaCodigo] [bigint] NOT NULL,
	[hostHorario] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[hostHorarioLibre] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.HorarioSobreTurno] PRIMARY KEY CLUSTERED 
(
	[hostCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioTipo](
	[hotiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[hotiDescripcion] [nvarchar](max) NULL,
	[hotiCodigoInterno] [nvarchar](20) NULL,
	[hotiAbreviatura] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.HorarioTipo] PRIMARY KEY CLUSTERED 
(
	[hotiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HorarioUsuario]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorarioUsuario](
	[housCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[horaCodigo] [bigint] NOT NULL,
	[Id] [nvarchar](128) NULL,
	[housBloqueado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.HorarioUsuario] PRIMARY KEY CLUSTERED 
(
	[housCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Indicacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indicacion](
	[indiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[indiDescripcion] [nvarchar](max) NULL,
	[indiCodigoInterno] [nvarchar](20) NULL,
	[intiCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Indicacion] PRIMARY KEY CLUSTERED 
(
	[indiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicacionFrecuencia]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicacionFrecuencia](
	[infrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[infrDescripcion] [nvarchar](100) NULL,
	[infrCodigoInterno] [nvarchar](20) NULL,
	[infrCoeficiente] [int] NOT NULL,
	[infrHorarios] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[infrDefault] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.IndicacionFrecuencia] PRIMARY KEY CLUSTERED 
(
	[infrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicacionGrupo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicacionGrupo](
	[ingrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[indiCodigo] [bigint] NOT NULL,
	[grupCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.IndicacionGrupo] PRIMARY KEY CLUSTERED 
(
	[ingrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicacionMedicacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicacionMedicacion](
	[inmeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[indiCodigo] [bigint] NOT NULL,
	[geneCodigo] [bigint] NOT NULL,
	[inmeCantidad] [float] NOT NULL,
 CONSTRAINT [PK_dbo.IndicacionMedicacion] PRIMARY KEY CLUSTERED 
(
	[inmeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicacionPerfil]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicacionPerfil](
	[inpeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[inpeDescripcion] [nvarchar](max) NULL,
	[inpeCodigoInterno] [nvarchar](max) NULL,
	[inpeActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[paciCodigo] [bigint] NULL,
	[inptCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.IndicacionPerfil] PRIMARY KEY CLUSTERED 
(
	[inpeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicacionPerfilItem]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicacionPerfilItem](
	[ipeiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[inpeCodigo] [bigint] NULL,
	[geneCodigo] [bigint] NULL,
	[ipeiCantidad] [float] NOT NULL,
	[ipeiDosis] [float] NOT NULL,
	[ipeiIntervalo] [float] NOT NULL,
	[ipeiObservacion] [nvarchar](max) NULL,
	[ipeiDuracion] [int] NOT NULL,
	[ipeiDuracionUnidad] [nvarchar](1) NULL,
	[ipeiPadre] [bigint] NULL,
	[tumeCodigo] [bigint] NULL,
	[meviCodigo] [bigint] NULL,
	[mefrCodigo] [bigint] NULL,
	[meesCodigo] [bigint] NULL,
	[ipeiSolucion] [bit] NOT NULL,
	[infrCodigo] [bigint] NULL,
	[indiCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.IndicacionPerfilItem] PRIMARY KEY CLUSTERED 
(
	[ipeiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicacionPerfilTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicacionPerfilTipo](
	[inptCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[inptDescripcion] [nvarchar](max) NULL,
	[inptCodigoInterno] [nvarchar](20) NULL,
	[inptActivo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.IndicacionPerfilTipo] PRIMARY KEY CLUSTERED 
(
	[inptCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicacionProcedimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicacionProcedimiento](
	[inprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[indiCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[inprCantidad] [float] NOT NULL,
 CONSTRAINT [PK_dbo.IndicacionProcedimiento] PRIMARY KEY CLUSTERED 
(
	[inprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicacionTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicacionTipo](
	[intiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[intiDescripcion] [nvarchar](200) NULL,
	[intiCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.IndicacionTipo] PRIMARY KEY CLUSTERED 
(
	[intiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Internacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Internacion](
	[inteCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[pacoCodigo] [bigint] NOT NULL,
	[inteFechaIngreso] [datetime] NOT NULL,
	[inteFechaEgreso] [datetime] NULL,
	[tiinCodigo] [bigint] NOT NULL,
	[taltCodigo] [bigint] NULL,
	[motiCodigo] [bigint] NULL,
	[inteObservaciones] [nvarchar](max) NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[mediCodigo] [bigint] NULL,
	[ortuCodigo] [bigint] NULL,
	[inteCierreHC] [datetime] NULL,
	[inteCierreFacturacion] [datetime] NULL,
	[inteCierreAdministrativo] [datetime] NULL,
	[mediCodigoEnfermera] [bigint] NULL,
 CONSTRAINT [PK_dbo.Internacion] PRIMARY KEY CLUSTERED 
(
	[inteCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternacionDiagnostico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternacionDiagnostico](
	[indiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[indiTipo] [nvarchar](1) NULL,
	[indiFecha] [datetime] NOT NULL,
	[inteCodigo] [bigint] NOT NULL,
	[diagCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.InternacionDiagnostico] PRIMARY KEY CLUSTERED 
(
	[indiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternacionMovimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternacionMovimiento](
	[inmoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[inmoTipo] [nvarchar](1) NULL,
	[inmoFechaDesde] [datetime] NOT NULL,
	[inteCodigo] [bigint] NOT NULL,
	[nicuCodigo] [bigint] NULL,
	[camaCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[servCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.InternacionMovimiento] PRIMARY KEY CLUSTERED 
(
	[inmoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternacionVariableValor]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternacionVariableValor](
	[invvCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[inteCodigo] [bigint] NOT NULL,
	[sivaCodigo] [bigint] NOT NULL,
	[invvValor] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.InternacionVariableValor] PRIMARY KEY CLUSTERED 
(
	[invvCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intervalos]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intervalos](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[Intervalo] [int] NOT NULL,
	[HoraInicio] [nvarchar](5) NULL,
	[Semana] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Intervalos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IVA]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVA](
	[ivapCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ivapPorcentaje] [float] NOT NULL,
	[ivapFechaDesde] [datetime] NOT NULL,
	[ivapFechaHasta] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[ivapCodigoInterno] [nvarchar](20) NULL,
	[ivapCodigoAfip] [int] NOT NULL,
 CONSTRAINT [PK_dbo.IVA] PRIMARY KEY CLUSTERED 
(
	[ivapCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Liquidacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liquidacion](
	[liquCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[liquDescripcion] [nvarchar](100) NULL,
	[liquBaseLiquidacion] [int] NOT NULL,
	[liquFechaDesde] [datetime] NOT NULL,
	[liquFechaHasta] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[liquEstado] [nvarchar](1) NULL,
	[liquFechaCierre] [datetime] NULL,
	[liquDerivante] [bit] NOT NULL,
	[liquCargoFijo] [bit] NOT NULL,
	[liquCargaManual] [bit] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[coprCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Liquidacion] PRIMARY KEY CLUSTERED 
(
	[liquCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiquidacionConcepto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiquidacionConcepto](
	[licoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[liquCodigo] [bigint] NOT NULL,
	[mecoCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[mediCodigo] [bigint] NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[licoImporte] [decimal](18, 2) NOT NULL,
	[licoObservacion] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LiquidacionConcepto] PRIMARY KEY CLUSTERED 
(
	[licoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiquidacionVenta]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiquidacionVenta](
	[liveCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[liquCodigo] [bigint] NOT NULL,
	[ventCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.LiquidacionVenta] PRIMARY KEY CLUSTERED 
(
	[liveCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[locaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[locaDescripcion] [nvarchar](50) NOT NULL,
	[locaCodigoInterno] [nvarchar](20) NULL,
	[provCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[locaCodigoPostal] [nvarchar](20) NULL,
	[locaDefault] [bit] NOT NULL,
	[depaCodigo] [bigint] NULL,
	[locaLatitudGD] [nvarchar](50) NULL,
	[locaLongitudGD] [nvarchar](50) NULL,
	[locaLatitudGS] [nvarchar](50) NULL,
	[locaLongitudGS] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Localidad] PRIMARY KEY CLUSTERED 
(
	[locaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogFiltro]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogFiltro](
	[Filtro] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogFiltroEntrada]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogFiltroEntrada](
	[paciCodigo] [int] NULL,
	[inteCodigo] [int] NULL,
	[entrCodigo] [int] NULL,
	[mediCodigo] [int] NULL,
	[grtiCodigo] [int] NULL,
	[entrFechaDesde] [datetime] NULL,
	[entrFechaHasta] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoteFacturacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoteFacturacion](
	[lofaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[lofaDesde] [datetime] NOT NULL,
	[lofaHasta] [datetime] NOT NULL,
	[lofaObservacion] [nvarchar](max) NULL,
	[ubicCodigo] [bigint] NULL,
	[cobeCodigo] [bigint] NULL,
	[planCodigo] [bigint] NULL,
	[emprCodigo] [bigint] NOT NULL,
	[ambiCodigo] [bigint] NULL,
	[paciCodigo] [bigint] NULL,
	[tconCodigo] [bigint] NULL,
	[enfaCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[lofaFacturaPorPaciente] [bit] NOT NULL,
	[lofaTipoImporte] [nvarchar](1) NULL,
	[lofaEstado] [nvarchar](3) NULL,
	[lofaFechaCierre] [datetime] NOT NULL,
	[cierCodigo] [bigint] NULL,
	[lofaControl] [bit] NOT NULL,
	[amfaCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.LoteFacturacion] PRIMARY KEY CLUSTERED 
(
	[lofaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoteFacturacionAnexo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoteFacturacionAnexo](
	[lofaCodigo] [bigint] NOT NULL,
	[ubicCodigo] [nvarchar](max) NULL,
	[ambiCodigo] [nvarchar](max) NULL,
	[tconCodigo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LoteFacturacionAnexo] PRIMARY KEY CLUSTERED 
(
	[lofaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailDominio]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailDominio](
	[madoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[madoDescripcion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MailDominio] PRIMARY KEY CLUSTERED 
(
	[madoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatrizFacturacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatrizFacturacion](
	[matfCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[matfOrden] [bigint] NOT NULL,
	[ubicCodigo] [bigint] NULL,
	[nomeCodigo] [bigint] NULL,
	[ambiCodigo] [bigint] NULL,
	[agruCodigo] [bigint] NULL,
	[tcobCodigo] [bigint] NULL,
	[cobeCodigo] [bigint] NULL,
	[mediCodigo] [bigint] NULL,
	[emprCodigo] [bigint] NOT NULL,
	[enfaCodigo] [bigint] NULL,
	[mediCodigoOrden] [bigint] NULL,
 CONSTRAINT [PK_dbo.MatrizFacturacion] PRIMARY KEY CLUSTERED 
(
	[matfCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicamentoEspecificacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicamentoEspecificacion](
	[meesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[meesDescripcion] [nvarchar](100) NULL,
	[meesCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[meesActivo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MedicamentoEspecificacion] PRIMARY KEY CLUSTERED 
(
	[meesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicamentoFrecuencia]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicamentoFrecuencia](
	[mefrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mefrDescripcion] [nvarchar](100) NULL,
	[mefrCodigoInterno] [nvarchar](20) NULL,
	[mefrCoeficiente] [int] NOT NULL,
	[mefrHorarios] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[mefrDefault] [bit] NOT NULL,
	[mefrActivo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MedicamentoFrecuencia] PRIMARY KEY CLUSTERED 
(
	[mefrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicamentoVia]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicamentoVia](
	[meviCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[meviDescripcion] [nvarchar](100) NULL,
	[meviCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[meviActivo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MedicamentoVia] PRIMARY KEY CLUSTERED 
(
	[meviCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[mediCodigo] [bigint] NOT NULL,
	[mediCodigoInterno] [nvarchar](20) NULL,
	[mediActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[mediFirma] [varbinary](max) NULL,
	[mediAgrupaProcedimientos] [bit] NOT NULL,
	[mediDetalle] [nvarchar](max) NULL,
	[MedicoTipoDocumentacion_metdCodigo] [bigint] NULL,
	[mediAuditable] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Medico] PRIMARY KEY CLUSTERED 
(
	[mediCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoCobertura]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoCobertura](
	[mecoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[mecoFacturacionDirecta] [bit] NOT NULL,
	[mecoDetalle] [nvarchar](max) NULL,
	[mecoWeb] [bit] NOT NULL,
	[coctCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.MedicoCobertura] PRIMARY KEY CLUSTERED 
(
	[mecoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoConcepto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoConcepto](
	[mecoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[mecoFechaCarga] [datetime] NOT NULL,
	[mecoImporte] [decimal](18, 2) NOT NULL,
	[mecoFechaDesde] [datetime] NOT NULL,
	[mecoFechaHasta] [datetime] NOT NULL,
	[mecoObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MedicoConcepto] PRIMARY KEY CLUSTERED 
(
	[mecoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoDocumentacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoDocumentacion](
	[medoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[metdCodigo] [bigint] NOT NULL,
	[medoArchivo] [nvarchar](max) NULL,
	[medoFechaVencimiento] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.MedicoDocumentacion] PRIMARY KEY CLUSTERED 
(
	[medoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoEspecialidad]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoEspecialidad](
	[meesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[suesCodigo] [bigint] NOT NULL,
	[meesActiva] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[meesEdadDesde] [int] NOT NULL,
	[meesEdadHasta] [int] NOT NULL,
 CONSTRAINT [PK_dbo.MedicoEspecialidad] PRIMARY KEY CLUSTERED 
(
	[meesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoEvolucion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoEvolucion](
	[meevCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[meevDescripcion] [nvarchar](50) NULL,
	[meevEvolucion] [nvarchar](max) NULL,
	[mediCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MedicoEvolucion] PRIMARY KEY CLUSTERED 
(
	[meevCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoMatricula]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoMatricula](
	[memaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[memaNumero] [nvarchar](50) NULL,
	[provCodigo] [bigint] NOT NULL,
	[memaEstado] [nvarchar](50) NULL,
	[memaFecha] [datetime] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[tiprCodigo] [bigint] NOT NULL,
	[memaSISA] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MedicoMatricula] PRIMARY KEY CLUSTERED 
(
	[memaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoProcedimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoProcedimiento](
	[meprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[meprDefaultTurnos] [bit] NOT NULL,
	[meprTurnos] [bit] NOT NULL,
	[meprInforme] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[meprConjunto] [bit] NOT NULL,
	[meprActuantes] [int] NOT NULL,
	[meprDuracion] [int] NOT NULL,
 CONSTRAINT [PK_dbo.MedicoProcedimiento] PRIMARY KEY CLUSTERED 
(
	[meprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoProcedimientoActuante]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoProcedimientoActuante](
	[mepaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[meprCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[mepaBloqueoAgenda] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MedicoProcedimientoActuante] PRIMARY KEY CLUSTERED 
(
	[mepaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoRemplazo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoRemplazo](
	[mereCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mereFechaDesde] [datetime] NOT NULL,
	[mereFechaHasta] [datetime] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[mediCodigoRemplazado] [bigint] NOT NULL,
	[mereObservacion] [nvarchar](max) NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MedicoRemplazo] PRIMARY KEY CLUSTERED 
(
	[mereCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoRestriccion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoRestriccion](
	[mereCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[pevaCodigo] [bigint] NOT NULL,
	[merevValor] [nvarchar](max) NULL,
	[mereTipoRestriccion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MedicoRestriccion] PRIMARY KEY CLUSTERED 
(
	[mereCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoServicio]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoServicio](
	[meseCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[servCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MedicoServicio] PRIMARY KEY CLUSTERED 
(
	[meseCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoTipoDocumentacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoTipoDocumentacion](
	[metdCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[metdDescripcion] [nvarchar](max) NULL,
	[metdCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.MedicoTipoDocumentacion] PRIMARY KEY CLUSTERED 
(
	[metdCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[menuCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[menuDescripcion] [nvarchar](200) NULL,
	[menuCodigoInterno] [nvarchar](20) NULL,
	[menuDetalle] [nvarchar](max) NULL,
	[menuActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[menuCombo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Menu] PRIMARY KEY CLUSTERED 
(
	[menuCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuEsquema]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuEsquema](
	[meesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[menuCodigo] [bigint] NOT NULL,
	[metiCodigo] [bigint] NOT NULL,
	[cotiCodigo] [bigint] NOT NULL,
	[meesCantidad] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MenuEsquema] PRIMARY KEY CLUSTERED 
(
	[meesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuEsquemaItem]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuEsquemaItem](
	[meeiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[meesCodigo] [bigint] NOT NULL,
	[comiCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MenuEsquemaItem] PRIMARY KEY CLUSTERED 
(
	[meeiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuEsquemaItemTag]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuEsquemaItemTag](
	[meitCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[meeiCodigo] [bigint] NOT NULL,
	[tagCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.MenuEsquemaItemTag] PRIMARY KEY CLUSTERED 
(
	[meitCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuExclusion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuExclusion](
	[meexCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[menuCodigo] [bigint] NOT NULL,
	[alimCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.MenuExclusion] PRIMARY KEY CLUSTERED 
(
	[meexCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuFecha]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuFecha](
	[mefeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[menuCodigo] [bigint] NOT NULL,
	[mefeFecha] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MenuFecha] PRIMARY KEY CLUSTERED 
(
	[mefeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuTag]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuTag](
	[metaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[menuCodigo] [bigint] NOT NULL,
	[tagCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MenuTag] PRIMARY KEY CLUSTERED 
(
	[metaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuTipo](
	[metiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[metiDescripcion] [nvarchar](200) NULL,
	[metiCodigoInterno] [nvarchar](20) NULL,
	[metiDesde] [datetime] NOT NULL,
	[metiHasta] [datetime] NOT NULL,
	[metiOrden] [int] NOT NULL,
	[metiComidaTipo] [nvarchar](100) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[metiPreestablecido] [datetime] NOT NULL,
	[metiCamarero] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MenuTipo] PRIMARY KEY CLUSTERED 
(
	[metiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modulo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulo](
	[moduCodigo] [bigint] NOT NULL,
	[moduPosteriorAlta] [bit] NOT NULL,
	[moduMomento] [nvarchar](1) NOT NULL,
	[moduSoloDisparador] [bit] NOT NULL,
	[moduVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Modulo] PRIMARY KEY CLUSTERED 
(
	[moduCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuloAgrupamiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuloAgrupamiento](
	[moagCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moveCodigo] [bigint] NOT NULL,
	[agruCodigo] [bigint] NOT NULL,
	[moagTipo] [nvarchar](1) NULL,
	[moagTopeCantidad] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ModuloAgrupamiento] PRIMARY KEY CLUSTERED 
(
	[moagCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuloAmbito]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuloAmbito](
	[moamCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moduCodigo] [bigint] NOT NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ModuloAmbito] PRIMARY KEY CLUSTERED 
(
	[moamCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuloArticuloFamilia]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuloArticuloFamilia](
	[moafCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moveCodigo] [bigint] NOT NULL,
	[arfaCodigo] [bigint] NOT NULL,
	[asufCodigo] [bigint] NULL,
	[moafTopeCantidad] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[moafTipo] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.ModuloArticuloFamilia] PRIMARY KEY CLUSTERED 
(
	[moafCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuloArticuloGrupo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuloArticuloGrupo](
	[moagCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moveCodigo] [bigint] NOT NULL,
	[argrCodigo] [bigint] NOT NULL,
	[arsuCodigo] [bigint] NULL,
	[moagTopeCantidad] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[moagTipo] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.ModuloArticuloGrupo] PRIMARY KEY CLUSTERED 
(
	[moagCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuloDisparador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuloDisparador](
	[modiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moduCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[modiVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ModuloDisparador] PRIMARY KEY CLUSTERED 
(
	[modiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuloNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuloNomenclador](
	[monoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moveCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[monoTopeCantidad] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[monoTipo] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.ModuloNomenclador] PRIMARY KEY CLUSTERED 
(
	[monoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuloTipoPrestacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuloTipoPrestacion](
	[motpCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moveCodigo] [bigint] NOT NULL,
	[tpreCodigo] [bigint] NOT NULL,
	[motpTopeCantidad] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[motpTipo] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.ModuloTipoPrestacion] PRIMARY KEY CLUSTERED 
(
	[motpCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuloVersion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuloVersion](
	[moveCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moveDescripcion] [nvarchar](600) NOT NULL,
	[moduCodigo] [bigint] NOT NULL,
	[moveFecha] [datetime] NOT NULL,
	[moveDias] [int] NOT NULL,
	[moveTexto] [nvarchar](max) NULL,
	[moveArchivo] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ModuloVersion] PRIMARY KEY CLUSTERED 
(
	[moveCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moneda]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moneda](
	[moneCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moneDescripcion] [nvarchar](50) NULL,
	[moneSimbolo] [nvarchar](10) NULL,
	[moneDenominacion] [nvarchar](5) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Moneda] PRIMARY KEY CLUSTERED 
(
	[moneCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonedaCotizacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonedaCotizacion](
	[mocoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mocoFechaDesde] [datetime] NOT NULL,
	[mocoFechaHasta] [datetime] NOT NULL,
	[moneCodigo] [bigint] NOT NULL,
	[mocoValor] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MonedaCotizacion] PRIMARY KEY CLUSTERED 
(
	[mocoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivoDebito]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivoDebito](
	[modeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[modeDescripcion] [nvarchar](max) NULL,
	[modeCodigoInterno] [nvarchar](20) NULL,
	[modeDescuentaHonorarios] [bit] NOT NULL,
	[modtCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MotivoDebito] PRIMARY KEY CLUSTERED 
(
	[modeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivoDebitoTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivoDebitoTipo](
	[modtCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[modtDescripcion] [nvarchar](max) NULL,
	[modtCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MotivoDebitoTipo] PRIMARY KEY CLUSTERED 
(
	[modtCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivoInternacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivoInternacion](
	[motiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[motiDescripcion] [nvarchar](100) NOT NULL,
	[motiCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MotivoInternacion] PRIMARY KEY CLUSTERED 
(
	[motiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivoRefacturacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivoRefacturacion](
	[moreCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moreDescripcion] [nvarchar](max) NULL,
	[moreCodigoInterno] [nvarchar](20) NULL,
	[moreIncrementaHonorarios] [bit] NOT NULL,
	[mortCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MotivoRefacturacion] PRIMARY KEY CLUSTERED 
(
	[moreCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivoRefacturacionTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivoRefacturacionTipo](
	[mortCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[mortDescripcion] [nvarchar](max) NULL,
	[mortCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MotivoRefacturacionTipo] PRIMARY KEY CLUSTERED 
(
	[mortCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movil]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movil](
	[moviCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moviDescripcion] [nvarchar](100) NULL,
	[moviPatente] [nvarchar](10) NULL,
	[motiCodigo] [bigint] NOT NULL,
	[moviVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Movil] PRIMARY KEY CLUSTERED 
(
	[moviCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovilEvento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovilEvento](
	[moevCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moviCodigo] [bigint] NOT NULL,
	[moevDescripcion] [nvarchar](max) NULL,
	[moevCalle] [nvarchar](200) NULL,
	[moevAltura] [nvarchar](50) NULL,
	[locaCodigo] [bigint] NOT NULL,
	[moevFechaDesde] [datetime] NOT NULL,
	[moevFechaHasta] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MovilEvento] PRIMARY KEY CLUSTERED 
(
	[moevCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovilMantenimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovilMantenimiento](
	[momaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moviCodigo] [bigint] NOT NULL,
	[momaDescripcion] [nvarchar](max) NULL,
	[momaArchivo] [nvarchar](max) NULL,
	[momaVencimiento] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MovilMantenimiento] PRIMARY KEY CLUSTERED 
(
	[momaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovilOcupante]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovilOcupante](
	[moocCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moviCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[chofCodigo] [bigint] NULL,
	[moocTipo] [nvarchar](1) NULL,
	[moocFecha] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MovilOcupante] PRIMARY KEY CLUSTERED 
(
	[moocCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovilParada]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovilParada](
	[mopaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[moviCodigo] [bigint] NOT NULL,
	[mopaCalle] [nvarchar](200) NULL,
	[mopaAltura] [nvarchar](50) NULL,
	[locaCodigo] [bigint] NOT NULL,
	[mopaLatitud] [nvarchar](50) NULL,
	[mopaLongitud] [nvarchar](50) NULL,
	[mopaFecha] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MovilParada] PRIMARY KEY CLUSTERED 
(
	[mopaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovilTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovilTipo](
	[motiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[motiDescripcion] [nvarchar](100) NULL,
	[motiCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.MovilTipo] PRIMARY KEY CLUSTERED 
(
	[motiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelCuidado]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelCuidado](
	[nicuCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nicuDescripcion] [nvarchar](100) NOT NULL,
	[nicuCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[nomeCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.NivelCuidado] PRIMARY KEY CLUSTERED 
(
	[nicuCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelCuidadoCobertura]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelCuidadoCobertura](
	[niccCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nicuCodigo] [bigint] NOT NULL,
	[cobeCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.NivelCuidadoCobertura] PRIMARY KEY CLUSTERED 
(
	[niccCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nomenclador](
	[nomeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nomeDescripcion] [nvarchar](max) NOT NULL,
	[nomeCodigoInterno] [nvarchar](20) NULL,
	[tnomCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[nomeTipo] [nvarchar](1) NULL,
	[nomeActivo] [bit] NOT NULL,
	[nomePuntos] [decimal](18, 2) NOT NULL,
	[nomeCodigoHomologado] [nvarchar](20) NULL,
	[nomeCodigoSistema] [nvarchar](max) NULL,
	[Servicio_servCodigo] [bigint] NULL,
	[snomCodigo] [nvarchar](18) NULL,
	[nomeExento] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Nomenclador] PRIMARY KEY CLUSTERED 
(
	[nomeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomencladorArticulo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomencladorArticulo](
	[nomeCodigo] [bigint] NOT NULL,
	[tartCodigo] [bigint] NOT NULL,
	[tacfCodigo] [bigint] NOT NULL,
	[noarTroquel] [bigint] NOT NULL,
	[noarEquivalencia] [decimal](18, 2) NOT NULL,
	[noarVtaFraccionada] [bit] NOT NULL,
	[noarCodigoBarra] [nvarchar](max) NULL,
	[moneCodigo] [bigint] NOT NULL,
	[geneCodigo] [bigint] NULL,
	[noarCodigoFacturacion] [bigint] NOT NULL,
	[arsuCodigo] [bigint] NOT NULL,
	[asufCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[noarLote] [bit] NOT NULL,
	[noarFechaVencimiento] [bit] NOT NULL,
	[noarControlaStock] [bit] NOT NULL,
	[noarDosis] [decimal](18, 2) NOT NULL,
	[noarTempMinima] [decimal](18, 2) NOT NULL,
	[noarTempMaxima] [decimal](18, 2) NOT NULL,
	[noarTemperatura] [bit] NOT NULL,
	[tumeCodigo] [bigint] NULL,
	[meviCodigo] [bigint] NULL,
	[noarAplicacionFraccionada] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.NomencladorArticulo] PRIMARY KEY CLUSTERED 
(
	[nomeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomencladorCodigoBarra]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomencladorCodigoBarra](
	[noabCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[noabCodigoBarra] [nvarchar](500) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.NomencladorCodigoBarra] PRIMARY KEY CLUSTERED 
(
	[noabCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomencladorCompuesto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomencladorCompuesto](
	[nocoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[nocoCompuesto] [bigint] NOT NULL,
	[nocoCantidad] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.NomencladorCompuesto] PRIMARY KEY CLUSTERED 
(
	[nocoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomencladorGaleno]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomencladorGaleno](
	[nogaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[tcnoCodigo] [bigint] NOT NULL,
	[tvnoCodigo] [bigint] NOT NULL,
	[nogaValor] [decimal](18, 4) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.NomencladorGaleno] PRIMARY KEY CLUSTERED 
(
	[nogaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomencladorHomologacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomencladorHomologacion](
	[nohoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[cobeCodigo] [bigint] NOT NULL,
	[nohoCodigoHomologado] [nvarchar](20) NULL,
	[nohoDescripcion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[nohoTipoPrestacion] [nvarchar](20) NULL,
	[suesCodigo] [bigint] NULL,
	[amfaCodigo] [bigint] NULL,
	[enfaCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.NomencladorHomologacion] PRIMARY KEY CLUSTERED 
(
	[nohoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomencladorLote]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomencladorLote](
	[noloCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[noloLote] [nvarchar](100) NULL,
	[noloFechaVencimiento] [datetime] NULL,
	[arorCodigo] [bigint] NULL,
	[paciCodigo] [bigint] NULL,
	[cobeCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.NomencladorLote] PRIMARY KEY CLUSTERED 
(
	[noloCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomencladorPractica]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomencladorPractica](
	[nomeCodigo] [bigint] NOT NULL,
	[noprProcesamiento] [bit] NOT NULL,
	[noprSinCargo] [bit] NOT NULL,
	[tpreCodigo] [bigint] NOT NULL,
	[moneCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[noprPension] [bit] NOT NULL,
	[noprConsultaPendiente] [bit] NOT NULL,
	[noprDiasVencimiento] [int] NOT NULL,
	[noprOdontologica] [bit] NOT NULL,
	[amfaCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.NomencladorPractica] PRIMARY KEY CLUSTERED 
(
	[nomeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomencladorPrecio]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomencladorPrecio](
	[npreCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[npreImporte] [decimal](18, 2) NOT NULL,
	[npreFechaDesde] [datetime] NOT NULL,
	[npreFechaHasta] [datetime] NOT NULL,
	[npreTipoPrecio] [nvarchar](max) NULL,
	[cobeCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.NomencladorPrecio] PRIMARY KEY CLUSTERED 
(
	[npreCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomencladorResumen]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomencladorResumen](
	[noreCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[noreCantidad] [int] NOT NULL,
	[noreMensual] [bit] NOT NULL,
	[noreMensaje] [nvarchar](max) NULL,
	[noreRestriccion] [bit] NOT NULL,
	[noreAutorizacion] [bit] NOT NULL,
	[noreDias] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.NomencladorResumen] PRIMARY KEY CLUSTERED 
(
	[noreCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenCompra]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenCompra](
	[orcoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[orcoNumero] [nvarchar](max) NULL,
	[orcoFecha] [datetime] NOT NULL,
	[orcoObservacion] [nvarchar](max) NULL,
	[prveCodigo] [bigint] NOT NULL,
	[ubicCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.OrdenCompra] PRIMARY KEY CLUSTERED 
(
	[orcoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenCompraItem]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenCompraItem](
	[orciCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[orcoCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[orciCantidad] [decimal](18, 2) NOT NULL,
	[orciImporte] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.OrdenCompraItem] PRIMARY KEY CLUSTERED 
(
	[orciCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenTurno]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenTurno](
	[ortuCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ortuObservacion] [nvarchar](max) NULL,
	[ortuFecha] [datetime] NOT NULL,
	[ortuFechaVencimiento] [datetime] NOT NULL,
	[ortuMedico] [nvarchar](max) NULL,
	[mediCodigo] [bigint] NULL,
	[paciCodigo] [bigint] NOT NULL,
	[diagCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[ortuArchivoOrden] [nvarchar](max) NULL,
	[ortuCodigoInterno] [nvarchar](20) NULL,
	[ortuMatriculaExterno] [nvarchar](20) NULL,
	[provCodigo] [bigint] NULL,
	[ortuFechaInternacion] [datetime] NOT NULL,
	[pacoCodigo] [bigint] NULL,
	[ortuQuirurgica] [bit] NOT NULL,
	[entrCodigo] [bigint] NULL,
	[ortuInternacion] [bit] NOT NULL,
	[orttCodigo] [bigint] NOT NULL,
	[ubicCodigo] [bigint] NULL,
	[deriCodigo] [bigint] NULL,
	[ortuFechaAutorizacion] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.OrdenTurno] PRIMARY KEY CLUSTERED 
(
	[ortuCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenTurnoArchivo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenTurnoArchivo](
	[ortaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ortaFecha] [datetime] NOT NULL,
	[ortaDescripcion] [nvarchar](max) NULL,
	[ortaNombre] [nvarchar](max) NULL,
	[ortaPath] [nvarchar](max) NULL,
	[ortuCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.OrdenTurnoArchivo] PRIMARY KEY CLUSTERED 
(
	[ortaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenTurnoArticulo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenTurnoArticulo](
	[ortaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ortaObservacion] [nvarchar](max) NULL,
	[ortaFinanciador] [bit] NOT NULL,
	[ortuCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.OrdenTurnoArticulo] PRIMARY KEY CLUSTERED 
(
	[ortaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenTurnoComplemento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenTurnoComplemento](
	[ortcCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ortcEstado] [nvarchar](100) NULL,
	[ortcObservacion] [nvarchar](max) NULL,
	[ortuCodigo] [bigint] NOT NULL,
	[qutcCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.OrdenTurnoComplemento] PRIMARY KEY CLUSTERED 
(
	[ortcCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenTurnoEstado]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenTurnoEstado](
	[orteCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ortuCodigo] [bigint] NOT NULL,
	[otteCodigo] [bigint] NOT NULL,
	[orteFecha] [datetime] NOT NULL,
	[orteUsuario] [nvarchar](128) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.OrdenTurnoEstado] PRIMARY KEY CLUSTERED 
(
	[orteCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenTurnoNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenTurnoNomenclador](
	[ortnCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[orprCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[ortnAutorizacion] [nvarchar](max) NULL,
	[ortnValidacion] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.OrdenTurnoNomenclador] PRIMARY KEY CLUSTERED 
(
	[ortnCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenTurnoProcedimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenTurnoProcedimiento](
	[orprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ortuCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[orprObservaciones] [nvarchar](max) NULL,
	[orprHonorarioEspecial] [bit] NOT NULL,
	[turnCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.OrdenTurnoProcedimiento] PRIMARY KEY CLUSTERED 
(
	[orprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenTurnoTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenTurnoTipo](
	[orttCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[orttDescripcion] [nvarchar](100) NULL,
	[orttCodigoInterno] [nvarchar](20) NULL,
	[orttConfiguracion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[orttActivo] [bit] NOT NULL,
	[orttDefault] [bit] NOT NULL,
	[ambiCodigo] [bigint] NULL,
	[orttRequiereInternacion] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.OrdenTurnoTipo] PRIMARY KEY CLUSTERED 
(
	[orttCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenTurnoTipoEstado]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenTurnoTipoEstado](
	[otteCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[otteDescripcion] [nvarchar](100) NULL,
	[otteCodigoInterno] [nvarchar](20) NULL,
	[otteConfiguracion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.OrdenTurnoTipoEstado] PRIMARY KEY CLUSTERED 
(
	[otteCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdenTurnoTipoProcedimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdenTurnoTipoProcedimiento](
	[otprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[orttCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.OrdenTurnoTipoProcedimiento] PRIMARY KEY CLUSTERED 
(
	[otprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[paciCodigo] [bigint] NOT NULL,
	[paciCodigoInterno] [nvarchar](20) NULL,
	[paciHistoriaClinica] [nvarchar](20) NULL,
	[paciHistoriaClinicaAnterior] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[paciFechaAceptacion] [datetime] NULL,
	[paciFechaRechazo] [datetime] NULL,
 CONSTRAINT [PK_dbo.Paciente] PRIMARY KEY CLUSTERED 
(
	[paciCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteAislamiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteAislamiento](
	[paaiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[paaiFechaInicio] [datetime] NOT NULL,
	[paaiFechaFin] [datetime] NOT NULL,
	[paaiObservacion] [nvarchar](max) NULL,
	[paaiGermen] [nvarchar](max) NULL,
	[paaiUsuario] [nvarchar](128) NULL,
	[paaiUsuarioFin] [nvarchar](128) NULL,
	[paatCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteAislamiento] PRIMARY KEY CLUSTERED 
(
	[paaiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteAislamientoTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteAislamientoTipo](
	[paatCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paatDescripcion] [nvarchar](max) NULL,
	[paatCodigoInterno] [nvarchar](20) NULL,
	[paatDiagnostico] [bit] NOT NULL,
	[paatGermen] [bit] NOT NULL,
	[paatActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteAislamientoTipo] PRIMARY KEY CLUSTERED 
(
	[paatCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteAlerta]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteAlerta](
	[paalCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paalFecha] [datetime] NOT NULL,
	[paalObservacion] [nvarchar](max) NULL,
	[paciCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[tialCodigo] [bigint] NOT NULL,
	[paalActiva] [bit] NOT NULL,
	[inteCodigo] [bigint] NULL,
	[paalPrivada] [bit] NOT NULL,
	[suapCodigo] [bigint] NULL,
	[paalFechaHasta] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteAlerta] PRIMARY KEY CLUSTERED 
(
	[paalCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteAntecedente]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteAntecedente](
	[paanCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paanFecha] [datetime] NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[espeCodigo] [bigint] NULL,
	[snomCodigo] [nvarchar](18) NULL,
	[paanDescripcion] [nvarchar](max) NULL,
	[paanObservacion] [nvarchar](max) NULL,
	[paanVigente] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteAntecedente] PRIMARY KEY CLUSTERED 
(
	[paanCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteArchivo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteArchivo](
	[paarCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paarDescripcion] [nvarchar](max) NULL,
	[paciCodigo] [bigint] NOT NULL,
	[paarFecha] [datetime] NOT NULL,
	[paarPath] [nvarchar](max) NULL,
	[paarArchivo] [nvarchar](max) NULL,
	[tapaCodigo] [bigint] NOT NULL,
	[paarImagen] [varbinary](max) NULL,
	[paagCodigo] [bigint] NULL,
	[entrCodigo] [bigint] NULL,
	[painCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[panoCodigo] [bigint] NULL,
	[inteCodigo] [bigint] NULL,
	[qutuCodigo] [bigint] NULL,
	[paarIncluirInforme] [bit] NOT NULL,
	[turnCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.PacienteArchivo] PRIMARY KEY CLUSTERED 
(
	[paarCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteArchivoComentario]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteArchivoComentario](
	[impcCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[impcComentario] [nvarchar](max) NULL,
	[impcComentarioR] [nvarchar](max) NULL,
	[impcFecha] [datetime] NOT NULL,
	[paarCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteArchivoComentario] PRIMARY KEY CLUSTERED 
(
	[impcCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteArchivoGrupo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteArchivoGrupo](
	[paagCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paagFecha] [datetime] NOT NULL,
	[paagDescripcion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteArchivoGrupo] PRIMARY KEY CLUSTERED 
(
	[paagCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteAutorizacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteAutorizacion](
	[pacaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pacaFechaDesde] [datetime] NOT NULL,
	[pacaFechaHasta] [datetime] NOT NULL,
	[pacaAutorizacion] [nvarchar](max) NULL,
	[pacaTransaccion] [nvarchar](max) NULL,
	[pacaObservaciones] [nvarchar](max) NULL,
	[paciCodigo] [bigint] NOT NULL,
	[pacoCodigo] [bigint] NOT NULL,
	[inteCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pacaArchivo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PacienteAutorizacion] PRIMARY KEY CLUSTERED 
(
	[pacaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteAutorizacionNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteAutorizacionNomenclador](
	[paunCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pacaCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[paunFrecuencia] [nvarchar](30) NULL,
	[paunAutomatico] [bit] NOT NULL,
	[paunCantidad] [int] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[paunFrecuenciaValor] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteAutorizacionNomenclador] PRIMARY KEY CLUSTERED 
(
	[paunCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteBloqueo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteBloqueo](
	[pablCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[pablDescripcion] [nvarchar](100) NULL,
	[pablFechaDesde] [datetime] NOT NULL,
	[pablFechaHasta] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteBloqueo] PRIMARY KEY CLUSTERED 
(
	[pablCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteCategoria]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteCategoria](
	[pacaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[tcapCodigo] [bigint] NOT NULL,
	[pacaObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pacaFechaDesde] [datetime] NOT NULL,
	[pacaFechaHasta] [datetime] NOT NULL,
	[pacaActivo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteCategoria] PRIMARY KEY CLUSTERED 
(
	[pacaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteCertificado]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteCertificado](
	[paceCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[cetiCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[paceFecha] [datetime] NOT NULL,
	[paceTexto] [nvarchar](max) NULL,
	[paceArchivo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PacienteCertificado] PRIMARY KEY CLUSTERED 
(
	[paceCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteCobertura]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteCobertura](
	[pacoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[pacoAfiliado] [nvarchar](50) NULL,
	[pacoBandaMagnetica] [nvarchar](50) NULL,
	[tconCodigo] [bigint] NOT NULL,
	[pacoVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pacoCodigoSeguridad] [nvarchar](10) NULL,
	[pacoArchivo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PacienteCobertura] PRIMARY KEY CLUSTERED 
(
	[pacoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteComanda]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteComanda](
	[pacmCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[entrCodigo] [bigint] NULL,
	[pacmAcompanante] [bit] NOT NULL,
	[pacmFecha] [datetime] NOT NULL,
	[userId] [nvarchar](128) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pacmObservacion] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PacienteComanda] PRIMARY KEY CLUSTERED 
(
	[pacmCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteComandaItem]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteComandaItem](
	[pcmiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pacmCodigo] [bigint] NOT NULL,
	[menuCodigo] [bigint] NULL,
	[metiCodigo] [bigint] NOT NULL,
	[alimCodigo] [bigint] NULL,
	[comiCodigo] [bigint] NULL,
	[pcmiCantidad] [decimal](18, 2) NOT NULL,
	[pcmiImporte] [decimal](18, 2) NOT NULL,
	[pcmiEstado] [nvarchar](3) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pcmiAdicional] [bit] NOT NULL,
	[pcmiDescripcion] [nvarchar](max) NULL,
	[cotiCodigo] [bigint] NULL,
	[pcmiCodigoPadre] [bigint] NULL,
	[pcmiObservacion] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PacienteComandaItem] PRIMARY KEY CLUSTERED 
(
	[pcmiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteEsquema]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteEsquema](
	[paesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paesFecha] [datetime] NOT NULL,
	[paesDescripcion] [nvarchar](max) NULL,
	[esquCodigo] [bigint] NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[paesImagen] [varbinary](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[qutuCodigo] [bigint] NULL,
	[inteCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.PacienteEsquema] PRIMARY KEY CLUSTERED 
(
	[paesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteEsquemaItem]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteEsquemaItem](
	[peitCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[peitFecha] [datetime] NOT NULL,
	[peitDescripcion] [nvarchar](max) NULL,
	[tiesCodigo] [bigint] NOT NULL,
	[peitIndicativo] [nvarchar](5) NULL,
	[peitX] [float] NOT NULL,
	[peitY] [float] NOT NULL,
	[paesCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteEsquemaItem] PRIMARY KEY CLUSTERED 
(
	[peitCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteInforme]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteInforme](
	[painCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[painFecha] [datetime] NOT NULL,
	[painInforme] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[mediCodigo] [bigint] NOT NULL,
	[mediCodigo1] [bigint] NULL,
	[mediCodigo2] [bigint] NULL,
	[mediCodigo3] [bigint] NULL,
	[painFechaIngreso] [datetime] NULL,
	[painFechaTipeo] [datetime] NULL,
	[painFechaCompaginado] [datetime] NULL,
	[painFechaPreparado] [datetime] NULL,
	[painFechaRetirado] [datetime] NULL,
	[Medico_mediCodigo] [bigint] NULL,
	[painFechaFirmado] [datetime] NULL,
	[paciCodigo] [bigint] NOT NULL,
	[painUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PacienteInforme] PRIMARY KEY CLUSTERED 
(
	[painCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteInformeEfector]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteInformeEfector](
	[paieCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[painCodigo] [bigint] NOT NULL,
	[tcnoCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteInformeEfector] PRIMARY KEY CLUSTERED 
(
	[paieCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteInformeProcedimiento]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteInformeProcedimiento](
	[paipCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[painCodigo] [bigint] NOT NULL,
	[panoCodigo] [bigint] NOT NULL,
	[paipUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PacienteInformeProcedimiento] PRIMARY KEY CLUSTERED 
(
	[paipCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteMedicacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteMedicacion](
	[pameCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[geneCodigo] [bigint] NOT NULL,
	[arcoCodigo] [bigint] NULL,
	[mediCodigo] [bigint] NOT NULL,
	[espeCodigo] [bigint] NOT NULL,
	[diagCodigo] [bigint] NULL,
	[pameCantidad] [decimal](18, 2) NOT NULL,
	[pameTratamientoProlongado] [bit] NOT NULL,
	[pameTexto] [nvarchar](max) NULL,
	[pameVigente] [bit] NOT NULL,
	[pameFecha] [datetime] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteMedicacion] PRIMARY KEY CLUSTERED 
(
	[pameCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteMensaje]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteMensaje](
	[pameCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pameMensaje] [nvarchar](max) NULL,
	[pameFecha] [datetime] NOT NULL,
	[pameTipo] [int] NOT NULL,
	[pameFechaCumplido] [datetime] NULL,
	[pameUsuarioCumplido] [nvarchar](max) NULL,
	[paciCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteMensaje] PRIMARY KEY CLUSTERED 
(
	[pameCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteModulo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteModulo](
	[pamoCodigo] [bigint] NOT NULL,
	[pamoFechaDesde] [datetime] NOT NULL,
	[pamoFechaHasta] [datetime] NOT NULL,
	[moveCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteModulo] PRIMARY KEY CLUSTERED 
(
	[pamoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteNomenclador]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteNomenclador](
	[panoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[pacoCodigo] [bigint] NOT NULL,
	[panoFecha] [datetime] NOT NULL,
	[panoCantidad] [decimal](18, 2) NOT NULL,
	[panoAutorizacion] [nvarchar](max) NULL,
	[panoValidacion] [nvarchar](max) NULL,
	[panoImporteCobertura] [decimal](18, 2) NOT NULL,
	[panoImportePaciente] [decimal](18, 2) NOT NULL,
	[panoImporteTotal] [decimal](18, 2) NOT NULL,
	[panoFechaAtencion] [datetime] NOT NULL,
	[panoModulado] [bit] NOT NULL,
	[convCodigo] [bigint] NOT NULL,
	[turnCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cecoCodigo] [bigint] NOT NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[servCodigo] [bigint] NULL,
	[deriCodigo] [bigint] NULL,
	[tnfaCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[lofaCodigo] [bigint] NULL,
	[emprCodigo] [bigint] NOT NULL,
	[panoRetiraInforme] [datetime] NULL,
	[orprCodigo] [bigint] NULL,
	[procCodigo] [bigint] NULL,
	[inteCodigo] [bigint] NULL,
	[pacaCodigo] [bigint] NULL,
	[pamoCodigoAfectado] [bigint] NULL,
	[pritCodigo] [bigint] NULL,
	[patoCodigo] [bigint] NULL,
	[panoUsuario] [nvarchar](100) NULL,
	[panoImporteBaseCobertura] [decimal](18, 2) NOT NULL,
	[panoImporteBasePaciente] [decimal](18, 2) NOT NULL,
	[panoImporteManual] [bit] NOT NULL,
	[enmeCodigo] [bigint] NULL,
	[enprCodigo] [bigint] NULL,
	[lofaCodigoPaciente] [bigint] NULL,
	[panoPorcentaje] [decimal](18, 2) NOT NULL,
	[eninCodigo] [bigint] NULL,
	[panoFacturacionDirecta] [bit] NOT NULL,
	[tconCodigo] [bigint] NOT NULL,
	[qutuCodigo] [bigint] NULL,
	[ortnCodigo] [bigint] NULL,
	[pancCodigo] [bigint] NULL,
	[pancCodigoPaciente] [bigint] NULL,
	[panoUsuarioCierre] [nvarchar](max) NULL,
	[panoFechaCierre] [datetime] NULL,
	[tuprCodigo] [bigint] NULL,
	[reitCodigo] [bigint] NULL,
	[entrCodigo] [bigint] NULL,
	[cajaCodigo] [bigint] NULL,
	[panoUsuarioControl] [nvarchar](max) NULL,
	[panoFechaControl] [datetime] NULL,
	[panoUrl] [nvarchar](max) NULL,
	[diagCodigo] [bigint] NULL,
	[emerCodigo] [bigint] NULL,
	[panoDescuentoCobertura] [decimal](18, 2) NOT NULL,
	[arkiCodigo] [bigint] NULL,
	[panoPiezaDental] [nvarchar](20) NULL,
	[panoCaraDental] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.PacienteNomenclador] PRIMARY KEY CLUSTERED 
(
	[panoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteNomencladorCierre]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteNomencladorCierre](
	[pancCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
	[pancCodigoInterno] [nvarchar](8) NULL,
	[pancFecha] [datetime] NOT NULL,
	[pancFechaCierre] [datetime] NOT NULL,
	[pancUsuario] [nvarchar](max) NULL,
	[pancTipo] [nvarchar](20) NULL,
	[qutuCodigo] [bigint] NULL,
	[inteCodigo] [bigint] NULL,
	[paciCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pancFechaDesde] [datetime] NOT NULL,
	[pancFechaHasta] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteNomencladorCierre] PRIMARY KEY CLUSTERED 
(
	[pancCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteNomencladorDebito]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteNomencladorDebito](
	[pandCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[debiCodigo] [bigint] NOT NULL,
	[panoCodigo] [bigint] NOT NULL,
	[pandImporte] [decimal](18, 2) NOT NULL,
	[pandCantidad] [decimal](18, 2) NOT NULL,
	[pandObservacion] [nvarchar](max) NULL,
	[pandRefacturable] [bit] NOT NULL,
	[modeCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteNomencladorDebito] PRIMARY KEY CLUSTERED 
(
	[pandCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteNomencladorEfector]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteNomencladorEfector](
	[paneCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[panoCodigo] [bigint] NOT NULL,
	[tcnoCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[paneImporteLiquidacion] [decimal](18, 2) NOT NULL,
	[paneImporteManual] [bit] NOT NULL,
	[deriCodigo] [bigint] NULL,
	[liquCodigo] [bigint] NULL,
	[tnliCodigo] [bigint] NULL,
	[coprCodigo] [bigint] NULL,
	[pandCodigo] [bigint] NULL,
	[panrCodigo] [bigint] NULL,
	[paneImporteFacturacion] [decimal](18, 2) NOT NULL,
	[panePorcentaje] [decimal](18, 2) NOT NULL,
	[paneImporte] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.PacienteNomencladorEfector] PRIMARY KEY CLUSTERED 
(
	[paneCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteNomencladorEntidadFacturable]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteNomencladorEntidadFacturable](
	[pnefCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[panoCodigo] [bigint] NOT NULL,
	[enfaCodigo] [bigint] NOT NULL,
	[pnefImporte] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteNomencladorEntidadFacturable] PRIMARY KEY CLUSTERED 
(
	[pnefCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteNomencladorGasto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteNomencladorGasto](
	[pangCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[panoCodigo] [bigint] NOT NULL,
	[tgasCodigo] [bigint] NOT NULL,
	[pangImporte] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteNomencladorGasto] PRIMARY KEY CLUSTERED 
(
	[pangCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteNomencladorRefacturacion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteNomencladorRefacturacion](
	[panrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[refaCodigo] [bigint] NULL,
	[panoCodigo] [bigint] NOT NULL,
	[pandCodigo] [bigint] NULL,
	[panrImporte] [decimal](18, 2) NOT NULL,
	[panrCantidad] [decimal](18, 2) NOT NULL,
	[panrObservacion] [nvarchar](max) NULL,
	[nomeCodigo] [bigint] NULL,
	[tconCodigo] [bigint] NULL,
	[planCodigo] [bigint] NULL,
	[moreCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteNomencladorRefacturacion] PRIMARY KEY CLUSTERED 
(
	[panrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteNomencladorTransaccion]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteNomencladorTransaccion](
	[pantCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[panoCodigo] [bigint] NOT NULL,
	[pantTransaccion] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteNomencladorTransaccion] PRIMARY KEY CLUSTERED 
(
	[pantCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteOdontograma]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteOdontograma](
	[paodCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paodFecha] [datetime] NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[paodArchivo] [varbinary](max) NULL,
	[paodObservacion] [nvarchar](max) NULL,
	[mediCodigo] [bigint] NOT NULL,
	[potiCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[paodOrigen] [bigint] NULL,
	[entrCodigo] [bigint] NULL,
	[qutuCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.PacienteOdontograma] PRIMARY KEY CLUSTERED 
(
	[paodCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteOdontogramaItem]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteOdontogramaItem](
	[paoiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paodCodigo] [bigint] NOT NULL,
	[pideCodigo] [bigint] NULL,
	[mediCodigo] [bigint] NOT NULL,
	[pdobCodigo] [bigint] NULL,
	[pdmaCodigo] [bigint] NULL,
	[procCodigo] [bigint] NULL,
	[paoiPresupuesto] [bit] NOT NULL,
	[paoiSeccion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pdmoCodigo] [bigint] NULL,
	[paoiObservacion] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PacienteOdontogramaItem] PRIMARY KEY CLUSTERED 
(
	[paoiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteOdontogramaTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteOdontogramaTipo](
	[potiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pdmaDescripcion] [nvarchar](50) NULL,
	[potiCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[potiRegProcedimiento] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.PacienteOdontogramaTipo] PRIMARY KEY CLUSTERED 
(
	[potiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientePermisoEspecial]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientePermisoEspecial](
	[papeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[papeDescripcion] [nvarchar](max) NULL,
	[papeFechaDesde] [datetime] NOT NULL,
	[papeFechaHasta] [datetime] NOT NULL,
	[ppetCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.PacientePermisoEspecial] PRIMARY KEY CLUSTERED 
(
	[papeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientePermisoEspecialTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientePermisoEspecialTipo](
	[ppetCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ppetDescripcion] [nvarchar](100) NULL,
	[ppetCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacientePermisoEspecialTipo] PRIMARY KEY CLUSTERED 
(
	[ppetCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientePuesto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientePuesto](
	[papuCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[puesCodigo] [bigint] NOT NULL,
	[papuFecha] [datetime] NOT NULL,
	[userId] [nvarchar](128) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[inteCodigo] [bigint] NULL,
	[turnCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.PacientePuesto] PRIMARY KEY CLUSTERED 
(
	[papuCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteRegistroContacto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteRegistroContacto](
	[parcCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[parcFecha] [datetime] NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[parcComentario] [nvarchar](max) NULL,
	[ticoCodigo] [bigint] NOT NULL,
	[parcMedio] [nvarchar](500) NULL,
	[turnCodigo] [bigint] NULL,
	[tuauCodigo] [bigint] NULL,
	[UserId] [nvarchar](128) NULL,
	[parcOrigen] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[parcCodigoInterno] [nvarchar](max) NULL,
	[parcStatus] [nvarchar](50) NULL,
	[qutuCodigo] [bigint] NULL,
	[parcFechaStatus] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteRegistroContacto] PRIMARY KEY CLUSTERED 
(
	[parcCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientesAMigrar]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientesAMigrar](
	[paci_Codigo] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacientesAMigrar2]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacientesAMigrar2](
	[paci_CodigoInterno] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteTag]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteTag](
	[pataCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[tagCodigo] [bigint] NOT NULL,
	[pataActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteTag] PRIMARY KEY CLUSTERED 
(
	[pataCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteTaller]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteTaller](
	[pataCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[tallCodigo] [bigint] NOT NULL,
	[pataEstado] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.PacienteTaller] PRIMARY KEY CLUSTERED 
(
	[pataCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteTope]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteTope](
	[patoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[patoTipo] [nvarchar](1) NULL,
	[patoValor] [decimal](18, 2) NOT NULL,
	[patoFechaDesde] [datetime] NULL,
	[patoFechaHasta] [datetime] NULL,
	[topeCodigo] [bigint] NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[pacoCodigo] [bigint] NOT NULL,
	[inteCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PacienteTope] PRIMARY KEY CLUSTERED 
(
	[patoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteVacuna]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteVacuna](
	[pavaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[vacuCodigo] [bigint] NOT NULL,
	[vareCodigo] [bigint] NOT NULL,
	[pavaFecha] [datetime] NULL,
	[pavaLoteVacuna] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[vadoCodigo] [bigint] NOT NULL,
	[pavaTipo] [nvarchar](2) NULL,
 CONSTRAINT [PK_dbo.PacienteVacuna] PRIMARY KEY CLUSTERED 
(
	[pavaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteVinculo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteVinculo](
	[paviCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[persCodigo] [bigint] NOT NULL,
	[vipaCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[paviResponsable] [bit] NOT NULL,
	[paviVerificado] [bit] NOT NULL,
	[paviHash] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PacienteVinculo] PRIMARY KEY CLUSTERED 
(
	[paviCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[paisCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paisDescripcion] [nvarchar](50) NOT NULL,
	[paisCodigoInterno] [nvarchar](20) NULL,
	[paisFormatoCUIT] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[paisDefault] [bit] NOT NULL,
	[paisPrefijo] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Pais] PRIMARY KEY CLUSTERED 
(
	[paisCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaisCUIT]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaisCUIT](
	[pacuCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pacuCUIT] [nvarchar](50) NOT NULL,
	[paisCodigo] [bigint] NOT NULL,
	[tperCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PaisCUIT] PRIMARY KEY CLUSTERED 
(
	[pacuCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[pediCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[petiCodigo] [bigint] NOT NULL,
	[depoCodigo] [bigint] NOT NULL,
	[depoCodigoDestino] [bigint] NULL,
	[prveCodigo] [bigint] NULL,
	[paciCodigo] [bigint] NULL,
	[pediFecha] [datetime] NOT NULL,
	[pediFechaPedido] [datetime] NOT NULL,
	[pediFechaEntrega] [datetime] NULL,
	[pediObservaciones] [nvarchar](max) NULL,
	[userId] [nvarchar](128) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pediBloqueoUsuario] [nvarchar](max) NULL,
	[pediBloqueoFecha] [datetime] NULL,
	[pediCodigoInterno] [nvarchar](max) NULL,
	[servCodigo] [bigint] NULL,
	[mediCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Pedido] PRIMARY KEY CLUSTERED 
(
	[pediCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoEstado]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoEstado](
	[peesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pediCodigo] [bigint] NOT NULL,
	[peetCodigo] [bigint] NOT NULL,
	[peesFecha] [datetime] NOT NULL,
	[peesObservacion] [nvarchar](max) NULL,
	[userId] [nvarchar](128) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PedidoEstado] PRIMARY KEY CLUSTERED 
(
	[peesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoEstadoTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoEstadoTipo](
	[peetCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[peetDescripcion] [nvarchar](100) NULL,
	[peetCodigoInterno] [nvarchar](20) NULL,
	[peetConfiguracion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PedidoEstadoTipo] PRIMARY KEY CLUSTERED 
(
	[peetCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoItem]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoItem](
	[peitCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pediCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NULL,
	[geneCodigo] [bigint] NULL,
	[peitCantidad] [decimal](18, 2) NOT NULL,
	[peitEstado] [bigint] NOT NULL,
	[peitObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PedidoItem] PRIMARY KEY CLUSTERED 
(
	[peitCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoTipo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoTipo](
	[petiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[petiDescripcion] [nvarchar](100) NULL,
	[petiAbreviatura] [nvarchar](100) NULL,
	[petiCodigoInterno] [nvarchar](20) NULL,
	[petiDestino] [bit] NOT NULL,
	[petiProveedor] [bit] NOT NULL,
	[petiPaciente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[petiServicio] [bit] NOT NULL,
	[petiMedico] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.PedidoTipo] PRIMARY KEY CLUSTERED 
(
	[petiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[persCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[persApellido] [nvarchar](1000) NOT NULL,
	[persNombre] [nvarchar](1000) NOT NULL,
	[persCalle] [nvarchar](200) NULL,
	[persAltura] [nvarchar](20) NULL,
	[persPiso] [nvarchar](20) NULL,
	[persDepto] [nvarchar](20) NULL,
	[paisCodigo] [bigint] NOT NULL,
	[provCodigo] [bigint] NOT NULL,
	[locaCodigo] [bigint] NOT NULL,
	[persCodigoPostal] [nvarchar](10) NULL,
	[persMail] [nvarchar](max) NULL,
	[tdocCodigo] [bigint] NOT NULL,
	[persNroDocumento] [nvarchar](max) NULL,
	[tperCodigo] [bigint] NOT NULL,
	[persCodigoTango] [nvarchar](50) NULL,
	[persCodigoInterno] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[persTelefonoParticular] [nvarchar](50) NULL,
	[persTelefonoLaboral] [nvarchar](50) NULL,
	[persTelefonoCelular] [nvarchar](50) NULL,
	[persTelefonoOtro] [nvarchar](50) NULL,
	[persSexo] [nvarchar](1) NULL,
	[persFechaNacimiento] [datetime] NULL,
	[persTelefonoMigracion1] [nvarchar](50) NULL,
	[persTelefonoMigracion2] [nvarchar](50) NULL,
	[persCodigoPadron] [nvarchar](20) NULL,
	[persCodigoFederador] [nvarchar](20) NULL,
	[persFechaAlta] [datetime] NULL,
	[persOrigenAlta] [nvarchar](100) NULL,
	[persFoto] [varbinary](max) NULL,
 CONSTRAINT [PK_dbo.Persona] PRIMARY KEY CLUSTERED 
(
	[persCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonaContacto]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonaContacto](
	[pecoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pecoDescripcion] [nvarchar](50) NULL,
	[ticoCodigo] [bigint] NULL,
	[pecoPrincipal] [bit] NOT NULL,
	[persCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PersonaContacto] PRIMARY KEY CLUSTERED 
(
	[pecoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonaGeo]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonaGeo](
	[persCodigo] [int] NULL,
	[persDomicilio] [varchar](max) NULL,
	[persLatitud] [varchar](max) NULL,
	[persLongitud] [varchar](max) NULL,
	[persZona] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonaVariable]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonaVariable](
	[pevaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pevaDescripcion] [nvarchar](max) NOT NULL,
	[pevaRequerida] [bit] NOT NULL,
	[pevaTipo] [nvarchar](1) NOT NULL,
	[pevaEntidad] [nvarchar](max) NOT NULL,
	[pevaOpciones] [nvarchar](max) NULL,
	[pevaCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pevaUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PersonaVariable] PRIMARY KEY CLUSTERED 
(
	[pevaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonaVariableValor]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonaVariableValor](
	[pevvCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[persCodigo] [bigint] NOT NULL,
	[pevaCodigo] [bigint] NOT NULL,
	[pevvValor] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PersonaVariableValor] PRIMARY KEY CLUSTERED 
(
	[pevvCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PiezaDental]    Script Date: 23/02/2023 14:13:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PiezaDental](
	[pideCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pideDecripcion] [nvarchar](50) NULL,
	[pideCodigoInterno] [nvarchar](20) NULL,
	[pideArco] [nvarchar](3) NULL,
	[pidePosicion] [int] NOT NULL,
	[pideArchivoPieza] [nvarchar](max) NULL,
	[pideArchivoPlano] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pideInfante] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.PiezaDental] PRIMARY KEY CLUSTERED 
(
	[pideCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PiezaDentalMarca]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PiezaDentalMarca](
	[pdmaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pdmaDescripcion] [nvarchar](50) NULL,
	[pdmaCodigoInterno] [nvarchar](20) NULL,
	[pdmaColor] [nvarchar](20) NULL,
	[pdmaActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PiezaDentalMarca] PRIMARY KEY CLUSTERED 
(
	[pdmaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PiezaDentalMarcaOpcion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PiezaDentalMarcaOpcion](
	[pdmoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pdmoDescripcion] [nvarchar](50) NULL,
	[pdmoCodigoInterno] [nvarchar](20) NULL,
	[pdmoActivo] [bit] NOT NULL,
	[pdmaCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[procCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.PiezaDentalMarcaOpcion] PRIMARY KEY CLUSTERED 
(
	[pdmoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PiezaDentalObjeto]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PiezaDentalObjeto](
	[pdobCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pdobDescripcion] [nvarchar](50) NULL,
	[pdobCodigoInterno] [nvarchar](20) NULL,
	[pdobArchivo] [nvarchar](max) NULL,
	[pdobActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pdobSubCarpeta] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.PiezaDentalObjeto] PRIMARY KEY CLUSTERED 
(
	[pdobCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plan]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan](
	[planCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cobeCodigo] [bigint] NOT NULL,
	[planCodigoInterno] [nvarchar](20) NULL,
	[planDescripcion] [nvarchar](50) NOT NULL,
	[planNormasOperativas] [nvarchar](1000) NULL,
	[planFormatoAfiliado] [nvarchar](30) NULL,
	[planFormatoAfiliadoCobertura] [bit] NOT NULL,
	[planVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[planCodigoValidador] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.Plan] PRIMARY KEY CLUSTERED 
(
	[planCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantillaInforme]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantillaInforme](
	[plinCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[plinDescripcion] [nvarchar](100) NULL,
	[plinTexto] [nvarchar](max) NULL,
	[plinVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PlantillaInforme] PRIMARY KEY CLUSTERED 
(
	[plinCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantillaInformeProcedimiento]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantillaInformeProcedimiento](
	[piprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[plinCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PlantillaInformeProcedimiento] PRIMARY KEY CLUSTERED 
(
	[piprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantillaInformeRango]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantillaInformeRango](
	[plirCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[plirDescripcion] [nvarchar](max) NULL,
	[servCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PlantillaInformeRango] PRIMARY KEY CLUSTERED 
(
	[plirCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantillaInformeRangoItem]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantillaInformeRangoItem](
	[piriCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[piriHoraDesde] [datetime] NOT NULL,
	[piriHoraHasta] [datetime] NOT NULL,
	[piriHorasEntrega] [int] NOT NULL,
	[plirCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[piriHoraRetiro] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.PlantillaInformeRangoItem] PRIMARY KEY CLUSTERED 
(
	[piriCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantillaInformeVariable]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantillaInformeVariable](
	[pinvCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pinvDescripcion] [nvarchar](100) NOT NULL,
	[pinvTipo] [nvarchar](1) NOT NULL,
	[pinvDecimales] [int] NOT NULL,
	[pinvOpciones] [nvarchar](max) NULL,
	[plinCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pinvCampo] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.PlantillaInformeVariable] PRIMARY KEY CLUSTERED 
(
	[pinvCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanTipoContratacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanTipoContratacion](
	[planCodigo] [bigint] NOT NULL,
	[tconCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PlanTipoContratacion] PRIMARY KEY CLUSTERED 
(
	[planCodigo] ASC,
	[tconCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presupuesto]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presupuesto](
	[presCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[presFecha] [datetime] NOT NULL,
	[presObservaciones] [nvarchar](max) NULL,
	[presLeyendas] [nvarchar](max) NULL,
	[presFechaDesde] [datetime] NOT NULL,
	[presFechaHasta] [datetime] NOT NULL,
	[presFechaCierre] [datetime] NOT NULL,
	[pacoCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[copaCodigo] [bigint] NOT NULL,
	[presSeguimiento] [nvarchar](max) NULL,
	[presEstado] [nvarchar](1) NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[emprCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[inteCodigo] [bigint] NULL,
	[presOrigen] [nvarchar](1) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[qutuCodigo] [bigint] NULL,
	[prtiCodigo] [bigint] NOT NULL,
	[turnCodigo] [bigint] NULL,
	[presUsuarioCierre] [nvarchar](128) NULL,
	[presUsuario] [nvarchar](128) NULL,
	[ortuCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Presupuesto] PRIMARY KEY CLUSTERED 
(
	[presCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PresupuestoItem]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PresupuestoItem](
	[pritCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[presCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NULL,
	[pritCantidad] [int] NOT NULL,
	[moneCodigo] [bigint] NOT NULL,
	[pritImporteCobertura] [float] NOT NULL,
	[pritImportePaciente] [float] NOT NULL,
	[pritImporteHonorarios] [float] NOT NULL,
	[pritCodigoHomologado] [nvarchar](max) NULL,
	[moveCodigo] [bigint] NULL,
	[pritObservaciones] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[procCodigo] [bigint] NULL,
	[pritImporteBaseCobertura] [float] NOT NULL,
	[pritImporteBasePaciente] [float] NOT NULL,
 CONSTRAINT [PK_dbo.PresupuestoItem] PRIMARY KEY CLUSTERED 
(
	[pritCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PresupuestoLeyenda]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PresupuestoLeyenda](
	[prleCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[prleDescripcion] [nvarchar](100) NOT NULL,
	[prleLeyenda] [nvarchar](max) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PresupuestoLeyenda] PRIMARY KEY CLUSTERED 
(
	[prleCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PresupuestoTipo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PresupuestoTipo](
	[prtiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[prtiDescripcion] [nvarchar](500) NULL,
	[prtiCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.PresupuestoTipo] PRIMARY KEY CLUSTERED 
(
	[prtiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Procedimiento]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procedimiento](
	[procCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[procDescripcion] [nvarchar](max) NULL,
	[procEtiquetas] [nvarchar](max) NULL,
	[procCodigoInterno] [nvarchar](20) NULL,
	[procHomologacion] [nvarchar](20) NULL,
	[procActivo] [bit] NOT NULL,
	[procDuracion] [int] NOT NULL,
	[procPrioridadTurno] [int] NOT NULL,
	[procDiasInforme] [int] NOT NULL,
	[procRequiereInforme] [bit] NOT NULL,
	[procRequiereOrden] [bit] NOT NULL,
	[procConsentimiento] [bit] NOT NULL,
	[procPulsera] [bit] NOT NULL,
	[procAgendable] [bit] NOT NULL,
	[procArchivoConsentimiento] [nvarchar](100) NULL,
	[procArchivoPreparacion] [nvarchar](100) NULL,
	[procTextoPreparacion] [nvarchar](max) NULL,
	[prsgCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[procCodigoSistema] [nvarchar](20) NULL,
	[procQuirurgico] [bit] NOT NULL,
	[procInternacion] [bit] NOT NULL,
	[snomCodigo] [nvarchar](18) NULL,
	[procDetalle] [nvarchar](max) NULL,
	[procTiempoEspera] [int] NOT NULL,
	[procOcultoWeb] [bit] NOT NULL,
	[procMultiple] [bit] NOT NULL,
	[procEdadDesde] [int] NOT NULL,
	[procEdadHasta] [int] NOT NULL,
	[procSexo] [nvarchar](max) NULL,
	[procVirtual] [bit] NOT NULL,
	[procTemplateCancelacion] [nvarchar](max) NULL,
	[procInfusion] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Procedimiento] PRIMARY KEY CLUSTERED 
(
	[procCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoCombo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoCombo](
	[prcoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[procCodigoPadre] [bigint] NOT NULL,
	[procCodigoHijo] [bigint] NOT NULL,
	[prcoCantidad] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProcedimientoCombo] PRIMARY KEY CLUSTERED 
(
	[prcoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoComplemento]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoComplemento](
	[prcoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[qutcCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.ProcedimientoComplemento] PRIMARY KEY CLUSTERED 
(
	[prcoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoGrupo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoGrupo](
	[prgrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[prgrDescripcion] [nvarchar](max) NULL,
	[prgrCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProcedimientoGrupo] PRIMARY KEY CLUSTERED 
(
	[prgrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoHomologacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoHomologacion](
	[prhoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[cobeCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[prhoCodigoHomologado] [nvarchar](20) NULL,
	[prhoDescripcionHomologado] [nvarchar](500) NULL,
	[prhoCodigoEspecialidad] [nvarchar](20) NULL,
	[prhoDescripcionEspecialidad] [nvarchar](500) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProcedimientoHomologacion] PRIMARY KEY CLUSTERED 
(
	[prhoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoNomenclador]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoNomenclador](
	[prnoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[prnoCantidad] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cobeCodigo] [bigint] NULL,
	[ambiCodigo] [bigint] NULL,
	[prnoMinutosDesde] [int] NOT NULL,
	[prnoMinutosHasta] [int] NOT NULL,
	[prnoNoConvenida] [bit] NOT NULL,
	[ubicCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.ProcedimientoNomenclador] PRIMARY KEY CLUSTERED 
(
	[prnoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoPerfil]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoPerfil](
	[prpeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[prpeDescripcion] [nvarchar](100) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProcedimientoPerfil] PRIMARY KEY CLUSTERED 
(
	[prpeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoPerfilApplicationGroup]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoPerfilApplicationGroup](
	[ppagCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[prpeCodigo] [bigint] NOT NULL,
	[AppGroupId] [nvarchar](128) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProcedimientoPerfilApplicationGroup] PRIMARY KEY CLUSTERED 
(
	[ppagCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoPerfilItem]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoPerfilItem](
	[prpiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[prpeCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProcedimientoPerfilItem] PRIMARY KEY CLUSTERED 
(
	[prpiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoPreparacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoPreparacion](
	[prprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[prprEdadDesde] [int] NOT NULL,
	[prprEdadHasta] [int] NOT NULL,
	[prprSexo] [nvarchar](1) NULL,
	[ubicCodigo] [bigint] NULL,
	[prprTextoPreparacion] [nvarchar](max) NULL,
	[prprArchivoPreparacion] [nvarchar](100) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[prprHoraDesde] [datetime] NOT NULL,
	[prprHoraHasta] [datetime] NOT NULL,
	[nomeCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.ProcedimientoPreparacion] PRIMARY KEY CLUSTERED 
(
	[prprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoSubGrupo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoSubGrupo](
	[prsgCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[prsgDescripcion] [nvarchar](max) NULL,
	[prsgCodigoInterno] [nvarchar](20) NULL,
	[prgrCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProcedimientoSubGrupo] PRIMARY KEY CLUSTERED 
(
	[prsgCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedimientoTipoTarea]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedimientoTipoTarea](
	[prttCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[quttCodigo] [bigint] NOT NULL,
	[grupCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.ProcedimientoTipoTarea] PRIMARY KEY CLUSTERED 
(
	[prttCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProtocoloInfusion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProtocoloInfusion](
	[prinCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[prinDescripcion] [nvarchar](max) NULL,
	[prinCiclo] [nvarchar](max) NULL,
	[prinObservacion] [nvarchar](max) NULL,
	[prinIndicacion] [nvarchar](max) NULL,
	[procCodigo] [bigint] NOT NULL,
	[servCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProtocoloInfusion] PRIMARY KEY CLUSTERED 
(
	[prinCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProtocoloInfusionCiclo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProtocoloInfusionCiclo](
	[pricCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pricDescripcion] [nvarchar](max) NOT NULL,
	[pricOrden] [int] NOT NULL,
	[prinCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pricDiaInicio] [int] NOT NULL,
	[pricConsentimiento] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ProtocoloInfusionCiclo] PRIMARY KEY CLUSTERED 
(
	[pricCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProtocoloInfusionDia]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProtocoloInfusionDia](
	[pridCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[pridDescripcion] [nvarchar](200) NOT NULL,
	[pridDuracion] [int] NOT NULL,
	[pridConsecutivo] [bit] NOT NULL,
	[pridObservacion] [nvarchar](max) NULL,
	[pridOrden] [int] NOT NULL,
	[pricCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[pridDia] [int] NOT NULL,
	[pridMargenInicio] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProtocoloInfusionDia] PRIMARY KEY CLUSTERED 
(
	[pridCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProtocoloInfusionDiagnostico]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProtocoloInfusionDiagnostico](
	[prdiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[prinCodigo] [bigint] NOT NULL,
	[diagCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ProtocoloInfusionDiagnostico] PRIMARY KEY CLUSTERED 
(
	[prdiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProtocoloInfusionDiaNomenclador]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProtocoloInfusionDiaNomenclador](
	[prdnCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[geneCodigo] [bigint] NOT NULL,
	[prdnDosis] [decimal](18, 2) NOT NULL,
	[tumeCodigo] [bigint] NOT NULL,
	[geneCodigoSolucion] [bigint] NULL,
	[meviCodigo] [bigint] NULL,
	[mefrCodigo] [bigint] NULL,
	[prdnTiempoInfusion] [nvarchar](max) NULL,
	[prdnTipoTiempo] [nvarchar](20) NULL,
	[prdnObservacion] [nvarchar](max) NULL,
	[prdnOrden] [nvarchar](max) NULL,
	[pridCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[prdnVolumen] [int] NOT NULL,
	[prdnRelacion] [nvarchar](1) NULL,
	[prdnTope] [int] NOT NULL,
	[prdnAjustaClearence] [bit] NOT NULL,
	[prdnPreparacion] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ProtocoloInfusionDiaNomenclador] PRIMARY KEY CLUSTERED 
(
	[prdnCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[prveCodigo] [bigint] NOT NULL,
	[prveCodigoInterno] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Proveedor] PRIMARY KEY CLUSTERED 
(
	[prveCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[provCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[provDescripcion] [nvarchar](50) NOT NULL,
	[provCodigoInterno] [nvarchar](20) NULL,
	[paisCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[provDefault] [bit] NOT NULL,
	[provPrefijo] [int] NOT NULL,
	[provLatitudGD] [nvarchar](50) NULL,
	[provLongitudGD] [nvarchar](50) NULL,
	[provLatitudGS] [nvarchar](50) NULL,
	[provLongitudGS] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Provincia] PRIMARY KEY CLUSTERED 
(
	[provCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[puesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[puesDescripcion] [nvarchar](500) NULL,
	[ubicCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Puesto] PRIMARY KEY CLUSTERED 
(
	[puesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PuestoGrupo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PuestoGrupo](
	[pugrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[puesCodigo] [bigint] NOT NULL,
	[grupCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.PuestoGrupo] PRIMARY KEY CLUSTERED 
(
	[pugrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quirofano]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quirofano](
	[quirCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[quirDescripcion] [nvarchar](200) NULL,
	[quirAbreviatura] [nvarchar](20) NULL,
	[quirCodigoInterno] [nvarchar](20) NULL,
	[quirActivo] [bit] NOT NULL,
	[quirAgendaLibre] [bit] NOT NULL,
	[quirIntervalo] [int] NOT NULL,
	[quirHrDesde] [datetime] NULL,
	[quirHrHasta] [datetime] NULL,
	[servCodigo] [bigint] NOT NULL,
	[depoCodigo] [bigint] NOT NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[quirDuracion] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Quirofano] PRIMARY KEY CLUSTERED 
(
	[quirCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoAuditoriaMotivo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoAuditoriaMotivo](
	[quamCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[quamDescripcion] [nvarchar](300) NULL,
	[quamCodigoInterno] [nvarchar](20) NULL,
	[quamDefinitivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.QuirofanoAuditoriaMotivo] PRIMARY KEY CLUSTERED 
(
	[quamCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoHorario]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoHorario](
	[quhoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[quhoDiaSemana] [int] NOT NULL,
	[quhoFechaDesde] [datetime] NOT NULL,
	[quhoFechaHasta] [datetime] NOT NULL,
	[quhoDias] [int] NOT NULL,
	[quhoHoraDesde] [datetime] NOT NULL,
	[quhoHoraHasta] [datetime] NOT NULL,
	[quhoIntervalo] [int] NOT NULL,
	[quirCodigo] [bigint] NOT NULL,
	[quhoObservacion] [nvarchar](max) NULL,
	[quhoColor] [nvarchar](20) NULL,
	[quhoSoloMedicosAsignados] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.QuirofanoHorario] PRIMARY KEY CLUSTERED 
(
	[quhoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoHorarioBloqueo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoHorarioBloqueo](
	[qhblCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[qhblFechaDesde] [datetime] NOT NULL,
	[qhblFechaHasta] [datetime] NOT NULL,
	[qhblHrDesde] [datetime] NOT NULL,
	[qhblHrHasta] [datetime] NOT NULL,
	[qhblObservacion] [nvarchar](max) NULL,
	[quirCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.QuirofanoHorarioBloqueo] PRIMARY KEY CLUSTERED 
(
	[qhblCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoHorarioMedico]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoHorarioMedico](
	[quhmCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[quhoCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.QuirofanoHorarioMedico] PRIMARY KEY CLUSTERED 
(
	[quhmCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoHorarioProcedimiento]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoHorarioProcedimiento](
	[quhpCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[quhoCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.QuirofanoHorarioProcedimiento] PRIMARY KEY CLUSTERED 
(
	[quhpCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoTipoComplemento]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoTipoComplemento](
	[qutcCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[qutcDescripcion] [nvarchar](200) NULL,
	[qutcCodigoInterno] [nvarchar](20) NULL,
	[qutcAbreviatura] [nvarchar](20) NULL,
	[qutcRequiereTarea] [bit] NOT NULL,
	[qutcMail] [nvarchar](200) NULL,
	[qutcActivo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.QuirofanoTipoComplemento] PRIMARY KEY CLUSTERED 
(
	[qutcCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoTipoTarea]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoTipoTarea](
	[quttCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[quttDescripcion] [nvarchar](200) NULL,
	[quttCodigoInterno] [nvarchar](20) NULL,
	[quttOrden] [int] NOT NULL,
	[quttActivo] [bit] NOT NULL,
	[grupCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.QuirofanoTipoTarea] PRIMARY KEY CLUSTERED 
(
	[quttCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoTurno]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoTurno](
	[qutuCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[qutuFecha] [datetime] NOT NULL,
	[qutuHoraDesde] [datetime] NOT NULL,
	[qutuHoraHasta] [datetime] NOT NULL,
	[qutuUsuarioAsignado] [nvarchar](128) NULL,
	[qutuFechaAsignado] [datetime] NOT NULL,
	[qutuObservaciones] [nvarchar](200) NULL,
	[ortuCodigo] [bigint] NULL,
	[quhoCodigo] [bigint] NULL,
	[paciCodigo] [bigint] NULL,
	[pacoCodigo] [bigint] NULL,
	[mediCodigo] [bigint] NULL,
	[quirCodigo] [bigint] NOT NULL,
	[inteCodigo] [bigint] NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[quteCodigo] [bigint] NOT NULL,
	[quirUserDock] [nvarchar](max) NULL,
	[qutuLlegada] [datetime] NULL,
	[qutuUsuarioAdmision] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[turnCodigo] [bigint] NULL,
	[quirCodigoRealizado] [bigint] NULL,
 CONSTRAINT [PK_dbo.QuirofanoTurno] PRIMARY KEY CLUSTERED 
(
	[qutuCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoTurnoAuditoria]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoTurnoAuditoria](
	[qutaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[qutuFecha] [datetime] NOT NULL,
	[qutuHoraDesde] [datetime] NOT NULL,
	[qutuHoraHasta] [datetime] NOT NULL,
	[qutuUsuarioAsignado] [nvarchar](128) NULL,
	[qutuFechaAsignado] [datetime] NOT NULL,
	[qutuObservaciones] [nvarchar](200) NULL,
	[ortuCodigo] [bigint] NULL,
	[quhoCodigo] [bigint] NULL,
	[paciCodigo] [bigint] NULL,
	[pacoCodigo] [bigint] NULL,
	[mediCodigo] [bigint] NULL,
	[quirCodigo] [bigint] NOT NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[quteCodigo] [bigint] NOT NULL,
	[quamCodigo] [bigint] NOT NULL,
	[qutuUsuarioAuditoria] [nvarchar](128) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.QuirofanoTurnoAuditoria] PRIMARY KEY CLUSTERED 
(
	[qutaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoTurnoEstado]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoTurnoEstado](
	[quteCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[quteDescripcion] [nvarchar](100) NULL,
	[quteCodigoInterno] [nvarchar](20) NULL,
	[quteColor] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.QuirofanoTurnoEstado] PRIMARY KEY CLUSTERED 
(
	[quteCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoTurnoMedico]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoTurnoMedico](
	[qutmCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[qutuCodigo] [bigint] NOT NULL,
	[quttCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[mediCodigoEfector] [bigint] NOT NULL,
	[qutmConfirmado] [bit] NOT NULL,
	[qutmFechaCorreo] [datetime] NULL,
	[qutmFechaRespuesta] [datetime] NULL,
	[qutmRespuesta] [nvarchar](10) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.QuirofanoTurnoMedico] PRIMARY KEY CLUSTERED 
(
	[qutmCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuirofanoTurnoVariableValor]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuirofanoTurnoVariableValor](
	[qtvvCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[qutuCodigo] [bigint] NOT NULL,
	[sivaCodigo] [bigint] NOT NULL,
	[qtvvValor] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.QuirofanoTurnoVariableValor] PRIMARY KEY CLUSTERED 
(
	[qtvvCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rango]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rango](
	[rangCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[rangHora] [nvarchar](5) NULL,
	[rangMinuto] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Rango] PRIMARY KEY CLUSTERED 
(
	[rangCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receta](
	[receCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[receFecha] [datetime] NOT NULL,
	[receFechaVencimiento] [datetime] NOT NULL,
	[receMedico] [nvarchar](max) NULL,
	[diagCodigo] [bigint] NULL,
	[receInidicacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[entrCodigo] [bigint] NULL,
	[pacoCodigo] [bigint] NULL,
	[reweCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[receCoberturaTexto] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Receta] PRIMARY KEY CLUSTERED 
(
	[receCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaItem]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaItem](
	[reitCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[receCodigo] [bigint] NOT NULL,
	[geneCodigo] [bigint] NULL,
	[reitGenerico] [nvarchar](max) NULL,
	[reitPosologia] [nvarchar](max) NULL,
	[reitCantidad] [nvarchar](max) NULL,
	[reitProlongado] [bit] NOT NULL,
	[diagCodigo] [bigint] NULL,
	[arcoCodigo] [bigint] NULL,
	[reitImpresionIndividual] [bit] NOT NULL,
	[reitCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.RecetaItem] PRIMARY KEY CLUSTERED 
(
	[reitCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaWeb]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaWeb](
	[reweCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[reweFecha] [datetime] NOT NULL,
	[reweApellido] [nvarchar](50) NULL,
	[reweNombre] [nvarchar](50) NULL,
	[reweNroDocumento] [nvarchar](20) NULL,
	[reweEmail] [nvarchar](max) NULL,
	[reweCobertura] [nvarchar](500) NULL,
	[reweAfiliado] [nvarchar](50) NULL,
	[mediCodigo] [bigint] NULL,
	[reweTexto] [nvarchar](max) NULL,
	[reweCumplida] [datetime] NULL,
	[reweRechazada] [datetime] NULL,
	[reweObservacion] [nvarchar](max) NULL,
	[reweRetirada] [datetime] NULL,
	[paciCodigo] [bigint] NULL,
	[pacoCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[reweFechaSolicitud] [datetime] NOT NULL,
	[mediCodigoSolicitud] [bigint] NULL,
	[reweEnviaMail] [bit] NOT NULL,
	[reweFechaEnvio] [datetime] NULL,
 CONSTRAINT [PK_dbo.RecetaWeb] PRIMARY KEY CLUSTERED 
(
	[reweCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recibo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recibo](
	[reciCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[trecCodigo] [bigint] NOT NULL,
	[reciMascara] [nvarchar](4) NULL,
	[reciNumero] [nvarchar](8) NULL,
	[reciFecha] [datetime] NOT NULL,
	[reciImporte] [decimal](18, 2) NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
	[persCodigo] [bigint] NULL,
	[enfaCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cajaCodigo] [bigint] NULL,
	[reciObservacion] [nvarchar](max) NULL,
	[ubicCodigo] [bigint] NULL,
	[taloCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Recibo] PRIMARY KEY CLUSTERED 
(
	[reciCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReciboCancelacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReciboCancelacion](
	[recaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[reciCodigo] [bigint] NOT NULL,
	[reciCodigoCancela] [bigint] NOT NULL,
	[recaImporte] [decimal](18, 2) NOT NULL,
	[recaFecha] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ReciboCancelacion] PRIMARY KEY CLUSTERED 
(
	[recaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReciboCupon]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReciboCupon](
	[reitCodigo] [bigint] NOT NULL,
	[recuFecha] [datetime] NOT NULL,
	[recuImporte] [decimal](18, 2) NOT NULL,
	[recuNumero] [nvarchar](max) NULL,
	[recuTarjeta] [nvarchar](max) NULL,
	[recuObservacion] [nvarchar](max) NULL,
	[recuCuotas] [int] NOT NULL,
	[recuFechaEstado] [datetime] NOT NULL,
	[recuEstado] [int] NOT NULL,
	[bancCodigo] [bigint] NULL,
	[cubaCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ReciboCupon] PRIMARY KEY CLUSTERED 
(
	[reitCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReciboItem]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReciboItem](
	[reitCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[reciCodigo] [bigint] NOT NULL,
	[tfopCodigo] [bigint] NOT NULL,
	[reitDescripcion] [nvarchar](max) NULL,
	[reitImporte] [decimal](18, 2) NOT NULL,
	[cheqCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ReciboItem] PRIMARY KEY CLUSTERED 
(
	[reitCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReciboTributo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReciboTributo](
	[reitCodigo] [bigint] NOT NULL,
	[retrNumero] [nvarchar](max) NULL,
	[retrFecha] [datetime] NOT NULL,
	[retrPorciento] [decimal](18, 2) NOT NULL,
	[retrImporteBase] [decimal](18, 2) NOT NULL,
	[retrImporteTributo] [decimal](18, 2) NOT NULL,
	[titrCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ReciboTributo] PRIMARY KEY CLUSTERED 
(
	[reitCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReciboVenta]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReciboVenta](
	[reveCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[reciCodigo] [bigint] NOT NULL,
	[ventCodigo] [bigint] NOT NULL,
	[reveFecha] [datetime] NOT NULL,
	[reveImporte] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.ReciboVenta] PRIMARY KEY CLUSTERED 
(
	[reveCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Refacturacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Refacturacion](
	[refaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[refaFecha] [datetime] NOT NULL,
	[refaObservacion] [nvarchar](max) NULL,
	[refaEstado] [nvarchar](10) NULL,
	[refaUsuario] [nvarchar](128) NULL,
	[refaTextoFactura] [nvarchar](max) NULL,
	[enfaCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.Refacturacion] PRIMARY KEY CLUSTERED 
(
	[refaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Remito]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remito](
	[remiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[retiCodigo] [bigint] NOT NULL,
	[depoCodigo] [bigint] NOT NULL,
	[depoCodigoDestino] [bigint] NULL,
	[remiFecha] [datetime] NOT NULL,
	[remiObservaciones] [nvarchar](max) NULL,
	[paciCodigo] [bigint] NULL,
	[remiOrdenCompra] [nvarchar](max) NULL,
	[remiRemitoProveedor] [nvarchar](max) NULL,
	[prveCodigo] [bigint] NULL,
	[userId] [nvarchar](128) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[remiHash] [nvarchar](max) NULL,
	[servCodigo] [bigint] NULL,
	[mediCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Remito] PRIMARY KEY CLUSTERED 
(
	[remiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemitoEstado]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemitoEstado](
	[reesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[remiCodigo] [bigint] NOT NULL,
	[reetCodigo] [bigint] NOT NULL,
	[reesFecha] [datetime] NOT NULL,
	[reesObservacion] [nvarchar](max) NULL,
	[userId] [nvarchar](128) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.RemitoEstado] PRIMARY KEY CLUSTERED 
(
	[reesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemitoEstadoTipo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemitoEstadoTipo](
	[reetCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[reetDescripcion] [nvarchar](100) NULL,
	[reetCodigoInterno] [nvarchar](20) NULL,
	[reetConfiguracion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[reetContabiliza] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.RemitoEstadoTipo] PRIMARY KEY CLUSTERED 
(
	[reetCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemitoItem]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemitoItem](
	[reitCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[remiCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NULL,
	[noloCodigo] [bigint] NULL,
	[peitCodigo] [bigint] NULL,
	[reitCantidad] [decimal](18, 2) NOT NULL,
	[reitCosto] [decimal](18, 2) NOT NULL,
	[reitObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[enmeCodigo] [bigint] NULL,
	[reciCodigo] [bigint] NULL,
	[reitHash] [nvarchar](max) NULL,
	[arorCodigo] [bigint] NULL,
	[orciCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.RemitoItem] PRIMARY KEY CLUSTERED 
(
	[reitCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemitoTipo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemitoTipo](
	[retiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[retiDescripcion] [nvarchar](100) NULL,
	[retiCodigoInterno] [nvarchar](20) NULL,
	[retiTipo] [int] NOT NULL,
	[retiCoeficienteOrigen] [decimal](18, 2) NOT NULL,
	[retiCoeficienteDestino] [decimal](18, 2) NOT NULL,
	[retiConfirmacion] [bit] NOT NULL,
	[retiMultiplicaCantidad] [bit] NOT NULL,
	[retiDestino] [bit] NOT NULL,
	[retiProveedor] [bit] NOT NULL,
	[retiPaciente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[retiServicio] [bit] NOT NULL,
	[retiMedico] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.RemitoTipo] PRIMARY KEY CLUSTERED 
(
	[retiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReporteSSRS]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReporteSSRS](
	[rssrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[rssrNombre] [nvarchar](100) NULL,
	[rssrFormato] [nvarchar](100) NULL,
	[rssrDescripcion] [nvarchar](100) NULL,
	[rssrOrigen] [nvarchar](100) NULL,
	[rssrUrl] [nvarchar](max) NULL,
	[rssrModulo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ReporteSSRS] PRIMARY KEY CLUSTERED 
(
	[rssrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReprogramacionCriterio]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReprogramacionCriterio](
	[recrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[recrDescripcion] [nvarchar](500) NULL,
	[recrCodigoInterno] [nvarchar](20) NULL,
	[recrActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[recrEnviaMail] [bit] NOT NULL,
	[recrEnviaWhatsApp] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.ReprogramacionCriterio] PRIMARY KEY CLUSTERED 
(
	[recrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReprogramacionMotivo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReprogramacionMotivo](
	[remoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[remoDescripcion] [nvarchar](500) NULL,
	[remoCodigoInterno] [nvarchar](20) NULL,
	[remoActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ReprogramacionMotivo] PRIMARY KEY CLUSTERED 
(
	[remoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sala]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sala](
	[salaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[salaDescripcion] [nvarchar](100) NOT NULL,
	[salaCodigoInterno] [nvarchar](20) NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[salaPin] [nvarchar](100) NULL,
	[salaVigente] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Sala] PRIMARY KEY CLUSTERED 
(
	[salaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaEspera]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaEspera](
	[saesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[saesDescripcion] [nvarchar](max) NULL,
	[saesCodigoInterno] [nvarchar](20) NULL,
	[saesFiltroProfesional] [bit] NOT NULL,
	[saesFiltroServicio] [bit] NOT NULL,
	[saesFiltroProcedimiento] [bit] NOT NULL,
	[saesPorMi] [bit] NOT NULL,
	[saesPorMiDefault] [bit] NOT NULL,
	[saesEfector] [bit] NOT NULL,
	[saesEfectorDefault] [bit] NOT NULL,
	[saesFiltroQuirofano] [bit] NOT NULL,
	[saesFiltroUbicacion] [bit] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[servCodigo] [bigint] NULL,
	[procCodigo] [bigint] NULL,
	[quirCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[saesTipo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SalaEspera] PRIMARY KEY CLUSTERED 
(
	[saesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaEsperaApplicationGroup]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaEsperaApplicationGroup](
	[saapCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NULL,
	[saesCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.SalaEsperaApplicationGroup] PRIMARY KEY CLUSTERED 
(
	[saapCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaEsperaEventoTipo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaEsperaEventoTipo](
	[saevCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[saesCodigo] [bigint] NOT NULL,
	[tevtCodigo] [bigint] NOT NULL,
	[saevOrden] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.SalaEsperaEventoTipo] PRIMARY KEY CLUSTERED 
(
	[saevCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[servCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[servDescripcion] [nvarchar](50) NOT NULL,
	[servCodigoInterno] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[cecoCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Servicio] PRIMARY KEY CLUSTERED 
(
	[servCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicioCobertura]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicioCobertura](
	[secoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[servCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ServicioCobertura] PRIMARY KEY CLUSTERED 
(
	[secoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicioProcedimiento]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicioProcedimiento](
	[seprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[servCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[seprDefaultTurnos] [bit] NOT NULL,
	[seprTurnos] [bit] NOT NULL,
	[seprInforme] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.ServicioProcedimiento] PRIMARY KEY CLUSTERED 
(
	[seprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sillon]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sillon](
	[sillCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[sillDescripcion] [nvarchar](max) NULL,
	[sillCodigoInterno] [nvarchar](20) NULL,
	[sillOrden] [int] NOT NULL,
	[sillAbreviatura] [nvarchar](20) NULL,
	[sillColor] [nvarchar](20) NULL,
	[sillVigente] [bit] NOT NULL,
	[sillTodosProtocolos] [bit] NOT NULL,
	[servCodigo] [bigint] NOT NULL,
	[ubicCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.Sillon] PRIMARY KEY CLUSTERED 
(
	[sillCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SillonProtocolo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SillonProtocolo](
	[siprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[sillCodigo] [bigint] NOT NULL,
	[prinCodigo] [bigint] NOT NULL,
	[siprTipoRelacion] [nvarchar](3) NULL,
 CONSTRAINT [PK_dbo.SillonProtocolo] PRIMARY KEY CLUSTERED 
(
	[siprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SistemaLog]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemaLog](
	[siloCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[siloFecha] [datetime] NOT NULL,
	[siloOrigen] [nvarchar](500) NULL,
	[siloError] [nvarchar](max) NULL,
	[siloTipo] [nvarchar](10) NULL,
	[siloUserName] [nvarchar](100) NULL,
	[siloAplicacion] [nvarchar](100) NULL,
	[siloVersion] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.SistemaLog] PRIMARY KEY CLUSTERED 
(
	[siloCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SistemaVariable]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemaVariable](
	[sivaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[sivaDescripcion] [nvarchar](max) NOT NULL,
	[sivaRequerida] [bit] NOT NULL,
	[sivaTipo] [nvarchar](10) NOT NULL,
	[sivaOpciones] [nvarchar](max) NULL,
	[sivaCodigoInterno] [nvarchar](20) NULL,
	[sivaResultado] [nvarchar](max) NULL,
	[sivaModulo] [nvarchar](max) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[sivaOrden] [int] NOT NULL,
	[sivaSoloLectura] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SistemaVariable] PRIMARY KEY CLUSTERED 
(
	[sivaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SistemaVersion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemaVersion](
	[siveCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[siveVersion] [nvarchar](50) NULL,
	[siveFecha] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.SistemaVersion] PRIMARY KEY CLUSTERED 
(
	[siveCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SistemaVinculado]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemaVinculado](
	[siviCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[siviDescripcion] [nvarchar](100) NULL,
	[siviEndpoint] [nvarchar](max) NULL,
	[siviToken] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.SistemaVinculado] PRIMARY KEY CLUSTERED 
(
	[siviCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SistemaVinculadoEntidad]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemaVinculadoEntidad](
	[siveCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[siveEntidad] [nvarchar](100) NULL,
	[siviCodigo] [bigint] NOT NULL,
	[siveEndpoint] [nvarchar](max) NULL,
	[siveActivo] [bit] NOT NULL,
	[siveTipo] [nvarchar](20) NULL,
	[siveCredenciales] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SistemaVinculadoEntidad] PRIMARY KEY CLUSTERED 
(
	[siveCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SistemaVinculadoMapeo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemaVinculadoMapeo](
	[sivmCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[sivmEntidad] [nvarchar](100) NULL,
	[sivmEntidadId] [bigint] NOT NULL,
	[sivmHomologado] [nvarchar](50) NULL,
	[siviCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.SistemaVinculadoMapeo] PRIMARY KEY CLUSTERED 
(
	[sivmCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Snomed]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Snomed](
	[snomCodigo] [nvarchar](18) NOT NULL,
	[snomDescripcion] [nvarchar](max) NULL,
	[snomeffectiveTime] [nvarchar](8) NULL,
	[snomMapTarget] [nvarchar](18) NULL,
 CONSTRAINT [PK_dbo.Snomed] PRIMARY KEY CLUSTERED 
(
	[snomCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[stocCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[depoCodigo] [bigint] NOT NULL,
	[nomeCodigo] [bigint] NULL,
	[noloCodigo] [bigint] NULL,
	[stocCantidad] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[arorCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Stock] PRIMARY KEY CLUSTERED 
(
	[stocCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubEspecialidad]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubEspecialidad](
	[suesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[suesDescripcion] [nvarchar](50) NOT NULL,
	[suesCodigoInterno] [nvarchar](50) NULL,
	[espeCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[suesEdadDesde] [int] NOT NULL,
	[suesEdadHasta] [int] NOT NULL,
 CONSTRAINT [PK_dbo.SubEspecialidad] PRIMARY KEY CLUSTERED 
(
	[suesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubTipoAlertaPaciente]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubTipoAlertaPaciente](
	[suapCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[suapDescripcion] [nvarchar](200) NULL,
	[suapCodigoInterno] [nvarchar](20) NULL,
	[tialCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.SubTipoAlertaPaciente] PRIMARY KEY CLUSTERED 
(
	[suapCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TablaOMSPercentil]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TablaOMSPercentil](
	[tompCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tomsCodigo] [bigint] NOT NULL,
	[tompEdad] [bigint] NOT NULL,
	[tompL] [float] NOT NULL,
	[tompM] [float] NOT NULL,
	[tompS] [float] NOT NULL,
	[tompSD] [float] NOT NULL,
	[tomp1] [float] NOT NULL,
	[tomp3] [float] NOT NULL,
	[tomp5] [float] NOT NULL,
	[tomp15] [float] NOT NULL,
	[tomp25] [float] NOT NULL,
	[tomp50] [float] NOT NULL,
	[tomp75] [float] NOT NULL,
	[tomp85] [float] NOT NULL,
	[tomp95] [float] NOT NULL,
	[tomp97] [float] NOT NULL,
	[tomp99] [float] NOT NULL,
 CONSTRAINT [PK_dbo.TablaOMSPercentil] PRIMARY KEY CLUSTERED 
(
	[tompCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TablaOMSZscore]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TablaOMSZscore](
	[tomzCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tomsCodigo] [bigint] NOT NULL,
	[tomzEdad] [float] NOT NULL,
	[tomzL] [float] NOT NULL,
	[tomzM] [float] NOT NULL,
	[tomzS] [float] NOT NULL,
	[tomzSD] [float] NOT NULL,
	[tomzm4] [float] NOT NULL,
	[tomzm3] [float] NOT NULL,
	[tomzm2] [float] NOT NULL,
	[tomzm1] [float] NOT NULL,
	[tomzmedia] [float] NOT NULL,
	[tomz1] [float] NOT NULL,
	[tomz2] [float] NOT NULL,
	[tomz3] [float] NOT NULL,
	[tomz4] [float] NOT NULL,
 CONSTRAINT [PK_dbo.TablaOMSZscore] PRIMARY KEY CLUSTERED 
(
	[tomzCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TablaTipoOMS]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TablaTipoOMS](
	[tomsCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tomsDescripcion] [nvarchar](max) NULL,
	[tomsSexo] [nvarchar](1) NULL,
	[tomsDesde] [int] NOT NULL,
	[tomsHasta] [int] NOT NULL,
	[tomsTipo] [nvarchar](1) NULL,
	[tomsTipoCalculo] [int] NULL,
 CONSTRAINT [PK_dbo.TablaTipoOMS] PRIMARY KEY CLUSTERED 
(
	[tomsCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[tagCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tagDescripcion] [nvarchar](max) NULL,
	[tagCodigoInterno] [nvarchar](max) NULL,
	[tagActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tagBloqueaCarga] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Tag] PRIMARY KEY CLUSTERED 
(
	[tagCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taller]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taller](
	[tallCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tallFecha] [datetime] NOT NULL,
	[tallFechaDesde] [datetime] NOT NULL,
	[tallFechaHasta] [datetime] NOT NULL,
	[tallDescripcion] [nvarchar](100) NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[servCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[tatiCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tallObservacion] [nvarchar](max) NULL,
	[tallUbicacion] [nvarchar](100) NULL,
	[tallEstablecimientoSalud] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Taller] PRIMARY KEY CLUSTERED 
(
	[tallCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TallerMedico]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TallerMedico](
	[tameCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tallCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TallerMedico] PRIMARY KEY CLUSTERED 
(
	[tameCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TallerTipo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TallerTipo](
	[tatiCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tatiDescripcion] [nvarchar](100) NULL,
	[tatiCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TallerTipo] PRIMARY KEY CLUSTERED 
(
	[tatiCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Talonario]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Talonario](
	[taloCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[taloMascara] [nvarchar](4) NOT NULL,
	[taloCopias] [int] NOT NULL,
	[taloElectronico] [bit] NOT NULL,
	[taloLibroIva] [bit] NOT NULL,
	[taloInterno] [bit] NOT NULL,
	[taloActivo] [bit] NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
	[tcveCodigo] [bigint] NULL,
	[trecCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[taloReporte] [nvarchar](max) NULL,
	[taloSector] [nvarchar](100) NULL,
	[taloNumeracionAfip] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Talonario] PRIMARY KEY CLUSTERED 
(
	[taloCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TalonarioFechaBloqueo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TalonarioFechaBloqueo](
	[tafbCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[taloCodigo] [bigint] NOT NULL,
	[tafbFechaBloqueo] [datetime] NULL,
	[tafbPemiteDiferida] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tafbNoValidar] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TalonarioFechaBloqueo] PRIMARY KEY CLUSTERED 
(
	[tafbCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempHT]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempHT](
	[turn_Codigo] [int] NOT NULL,
	[turn_ANo] [smallint] NOT NULL,
	[turn_Llegada] [datetime] NULL,
	[turn_COnsultorio] [datetime] NULL,
	[turn_Salida] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateHC]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateHC](
	[tehcCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tehcDescripcion] [nvarchar](50) NULL,
	[tehcCodigoInterno] [nvarchar](max) NULL,
	[techMostrar] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[techEstilo] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.TemplateHC] PRIMARY KEY CLUSTERED 
(
	[tehcCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateHCComponente]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateHCComponente](
	[thccCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[thcoCodigo] [bigint] NOT NULL,
	[thciCodigo] [bigint] NULL,
	[grupCodigo] [bigint] NULL,
	[thccFila] [int] NOT NULL,
	[thccColumna] [int] NOT NULL,
	[thccColspan] [int] NOT NULL,
	[thccCollapse] [bit] NOT NULL,
	[thccTitulo] [nvarchar](50) NULL,
	[thccClass] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[grprCodigo] [bigint] NULL,
	[thccParametros] [nvarchar](200) NULL,
	[thccOrden] [nvarchar](4) NULL,
 CONSTRAINT [PK_dbo.TemplateHCComponente] PRIMARY KEY CLUSTERED 
(
	[thccCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateHcContenedor]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateHcContenedor](
	[thcoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[thcoTitulo] [nvarchar](50) NULL,
	[thcoTipo] [nvarchar](20) NULL,
	[thcoCollapse] [bit] NOT NULL,
	[thcoOrden] [int] NOT NULL,
	[tehcCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[thcoFilas] [int] NOT NULL,
	[thcoColumnas] [int] NOT NULL,
	[thcoCollapsado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TemplateHcContenedor] PRIMARY KEY CLUSTERED 
(
	[thcoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateHcFiltro]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateHcFiltro](
	[thcfCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[thcfDescripcion] [nvarchar](100) NULL,
	[thcfValor] [nvarchar](20) NULL,
	[thchTipo] [nvarchar](3) NULL,
	[thchAmbulatorio] [bit] NOT NULL,
	[thchInternado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TemplateHcFiltro] PRIMARY KEY CLUSTERED 
(
	[thcfCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateHcItem]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateHcItem](
	[thciCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[thciDescripcion] [nvarchar](50) NULL,
	[thciCodigoInterno] [nvarchar](20) NULL,
	[thciVista] [nvarchar](50) NULL,
	[thciParametros] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[thciUnico] [bit] NOT NULL,
	[thciTipo] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TemplateHcItem] PRIMARY KEY CLUSTERED 
(
	[thciCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateHCPerfil]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateHCPerfil](
	[thcpCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tehcCodigo] [bigint] NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.TemplateHCPerfil] PRIMARY KEY CLUSTERED 
(
	[thcpCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAccionFarmacologica]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAccionFarmacologica](
	[tacfCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tacfDescripcion] [nvarchar](50) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tacfCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.TipoAccionFarmacologica] PRIMARY KEY CLUSTERED 
(
	[tacfCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAlertaPaciente]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAlertaPaciente](
	[tialCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tialDescripcion] [nvarchar](200) NULL,
	[tialColor] [nvarchar](20) NULL,
	[tialModulo] [nvarchar](100) NULL,
	[tialConfiguracion] [nvarchar](max) NULL,
	[tialCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.TipoAlertaPaciente] PRIMARY KEY CLUSTERED 
(
	[tialCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAlta]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAlta](
	[taltCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[taltDescripcion] [nvarchar](100) NOT NULL,
	[taltCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoAlta] PRIMARY KEY CLUSTERED 
(
	[taltCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoArchivoPaciente]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoArchivoPaciente](
	[tapaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tapaDescripcion] [nvarchar](max) NULL,
	[tapaHistoriaClinica] [bit] NOT NULL,
	[tapaGuardaByte] [bit] NOT NULL,
	[tapaMuestraPerfil] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tapaCodigoInterno] [nvarchar](20) NULL,
	[tapaMuestraPortal] [bit] NOT NULL,
	[tapaWebService] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TipoArchivoPaciente] PRIMARY KEY CLUSTERED 
(
	[tapaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoArticulo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoArticulo](
	[tartCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tartDescripcion] [nvarchar](50) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tartCodigoInterno] [nvarchar](20) NULL,
	[tartRango] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TipoArticulo] PRIMARY KEY CLUSTERED 
(
	[tartCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAutorizacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAutorizacion](
	[tiauCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tiauDescripcion] [nvarchar](max) NULL,
	[tiauCodigoInterno] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoAutorizacion] PRIMARY KEY CLUSTERED 
(
	[tiauCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCategoriaPaciente]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCategoriaPaciente](
	[tcapCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tcapDescripcion] [nvarchar](50) NOT NULL,
	[tcapPuntaje] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tcapSinCopagos] [bit] NOT NULL,
	[tcapSinPagoAnticipado] [bit] NOT NULL,
	[tcapVip] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TipoCategoriaPaciente] PRIMARY KEY CLUSTERED 
(
	[tcapCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCobertura]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCobertura](
	[tcobCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tcobDescripcion] [nvarchar](50) NULL,
	[tcobCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoCobertura] PRIMARY KEY CLUSTERED 
(
	[tcobCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoColumnaNomenclador]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoColumnaNomenclador](
	[tcnoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tcnoDescripcion] [nvarchar](50) NULL,
	[tgasCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tcnoCodigoInterno] [nvarchar](20) NULL,
	[tcnoInforme] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TipoColumnaNomenclador] PRIMARY KEY CLUSTERED 
(
	[tcnoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoComprobanteVenta]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoComprobanteVenta](
	[tcveCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tcveDescripcion] [nvarchar](100) NULL,
	[tcveAbreviatura] [nvarchar](3) NULL,
	[tcveIndicativo] [nvarchar](1) NULL,
	[tcveCodigoAfip] [int] NOT NULL,
	[tcveCodigoInterno] [nvarchar](20) NULL,
	[tcveDebeHaber] [nvarchar](1) NULL,
	[tcveComprobanteCredito] [bit] NOT NULL,
	[tcveImporteMaximo] [decimal](18, 2) NOT NULL,
	[tcveCodigoCredito] [bigint] NULL,
	[titrCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.TipoComprobanteVenta] PRIMARY KEY CLUSTERED 
(
	[tcveCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoConfiguracion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoConfiguracion](
	[tcofCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tcofDescripcion] [nvarchar](50) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoConfiguracion] PRIMARY KEY CLUSTERED 
(
	[tcofCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoContacto]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContacto](
	[ticoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ticoDescripcion] [nvarchar](50) NOT NULL,
	[ticoTipo] [nvarchar](2) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[ticoCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.TipoContacto] PRIMARY KEY CLUSTERED 
(
	[ticoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoContratacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContratacion](
	[tconCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tconDescripcion] [nvarchar](50) NULL,
	[tconCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[ivapCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.TipoContratacion] PRIMARY KEY CLUSTERED 
(
	[tconCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDependencia]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDependencia](
	[tideCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tideDescripcion] [nvarchar](255) NOT NULL,
	[tideCodigoInterno] [nvarchar](20) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoDependencia] PRIMARY KEY CLUSTERED 
(
	[tideCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDerivador]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDerivador](
	[tderCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tderDescripcion] [nvarchar](50) NOT NULL,
	[tderCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoDerivador] PRIMARY KEY CLUSTERED 
(
	[tderCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[tdocCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tdocDescripcion] [nvarchar](50) NOT NULL,
	[tdocCodigoAfip] [int] NOT NULL,
	[tdocCodigoInterno] [nvarchar](20) NULL,
	[tdocTipoValor] [nvarchar](1) NOT NULL,
	[tdocLongitudMaxima] [int] NOT NULL,
	[tdocLongitudMinima] [int] NOT NULL,
	[tdocNumeroDesde] [nvarchar](max) NULL,
	[tdocNumeroHasta] [nvarchar](max) NULL,
	[tdocVigente] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[tdocCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoEstadoTurno]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEstadoTurno](
	[tetuCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tetuDescripcion] [nvarchar](50) NULL,
	[tetuCodigoInterno] [nvarchar](20) NULL,
	[tetuColor] [nvarchar](10) NULL,
 CONSTRAINT [PK_dbo.TipoEstadoTurno] PRIMARY KEY CLUSTERED 
(
	[tetuCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoFormaPago]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFormaPago](
	[tfopCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tfpoDescripcion] [nvarchar](50) NOT NULL,
	[tfpoTipo] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tfpoCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.TipoFormaPago] PRIMARY KEY CLUSTERED 
(
	[tfopCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoGastoNomenclador]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoGastoNomenclador](
	[tgasCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tgasDescripcion] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tgasCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.TipoGastoNomenclador] PRIMARY KEY CLUSTERED 
(
	[tgasCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoInternacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoInternacion](
	[tiinCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tiinDescripcion] [nvarchar](100) NOT NULL,
	[tiinCodigoInterno] [nvarchar](20) NULL,
	[ambiCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoInternacion] PRIMARY KEY CLUSTERED 
(
	[tiinCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoItemBalance]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoItemBalance](
	[tibaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tibaDescripcion] [nvarchar](500) NULL,
	[tibaCodigoInterno] [nvarchar](20) NULL,
	[tibaTipo] [nvarchar](1) NULL,
	[tibaUsaTipo] [bit] NOT NULL,
	[tibaUsaColoco] [bit] NOT NULL,
	[tibaSeccion] [nvarchar](200) NULL,
	[tibaTipoValor] [nvarchar](100) NULL,
	[tibaOrden] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tibaHelp] [nvarchar](max) NULL,
	[tibaFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TipoItemBalance] PRIMARY KEY CLUSTERED 
(
	[tibaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoItemEsquema]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoItemEsquema](
	[tiesCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tiesDescripcion] [nvarchar](max) NOT NULL,
	[tiesArchivo] [nvarchar](max) NULL,
	[tiesIcono] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoItemEsquema] PRIMARY KEY CLUSTERED 
(
	[tiesCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoItemInclusion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoItemInclusion](
	[tiinCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tiinDescripcion] [nvarchar](max) NULL,
	[tiinTipo] [nvarchar](max) NULL,
	[tiinTabla] [nvarchar](max) NULL,
	[tiinTipoCampo] [nvarchar](max) NULL,
	[tiinCampoCodigo] [nvarchar](max) NULL,
	[tiinCampoDescripcion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoItemInclusion] PRIMARY KEY CLUSTERED 
(
	[tiinCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoNoFacturacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoNoFacturacion](
	[tnfaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tnfaDescripcion] [nvarchar](50) NOT NULL,
	[tnfaDefinitiva] [bit] NOT NULL,
	[tnfaLiquidable] [bit] NOT NULL,
	[tnfaActivo] [bit] NOT NULL,
	[tnfaMostrar] [bit] NOT NULL,
	[ambiCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoNoFacturacion] PRIMARY KEY CLUSTERED 
(
	[tnfaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoNoLiquidacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoNoLiquidacion](
	[tnliCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tnliDescripcion] [nvarchar](50) NOT NULL,
	[tnliDefinitiva] [bit] NOT NULL,
	[tnliActivo] [bit] NOT NULL,
	[tnliMostrar] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoNoLiquidacion] PRIMARY KEY CLUSTERED 
(
	[tnliCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoNomenclador]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoNomenclador](
	[tnomCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tnomDescripcion] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tnomTipo] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.TipoNomenclador] PRIMARY KEY CLUSTERED 
(
	[tnomCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPersona]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPersona](
	[tperCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tperDescripcion] [nvarchar](50) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoPersona] PRIMARY KEY CLUSTERED 
(
	[tperCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPrestacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPrestacion](
	[tpreCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tpreDescripcion] [nvarchar](100) NULL,
	[tpreAbreviatura] [nvarchar](20) NULL,
	[tpreCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoPrestacion] PRIMARY KEY CLUSTERED 
(
	[tpreCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoProfesion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoProfesion](
	[tiprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tiprDescripcion] [nvarchar](100) NOT NULL,
	[tiprCodigoInterno] [nvarchar](20) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TipoProfesion] PRIMARY KEY CLUSTERED 
(
	[tiprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoRecibo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoRecibo](
	[trecCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[trecDescripcion] [nvarchar](50) NULL,
	[trecAbreviatura] [nvarchar](3) NULL,
	[trecIndicativo] [nvarchar](1) NULL,
	[trecCodigoAfip] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[trecCaja] [bit] NOT NULL,
	[trecDebeHaber] [nvarchar](1) NULL,
	[trecReciboContado] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TipoRecibo] PRIMARY KEY CLUSTERED 
(
	[trecCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTributo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTributo](
	[titrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[titrDescripcion] [nvarchar](100) NULL,
	[titrCodigoAfip] [int] NOT NULL,
	[titrCodigoInterno] [nvarchar](20) NULL,
	[titrTipo] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.TipoTributo] PRIMARY KEY CLUSTERED 
(
	[titrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUnidadMedida]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUnidadMedida](
	[tumeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tumeDescripcion] [nvarchar](100) NULL,
	[tumeCodigoInterno] [nvarchar](20) NULL,
	[tumeAbreviatura] [nvarchar](100) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tumeActivo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TipoUnidadMedida] PRIMARY KEY CLUSTERED 
(
	[tumeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoValorNomenclador]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoValorNomenclador](
	[tvnoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tvnoDescripcion] [nvarchar](50) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tvnoCodigoInterno] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.TipoValorNomenclador] PRIMARY KEY CLUSTERED 
(
	[tvnoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tope]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tope](
	[topeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[topeDescripcion] [nvarchar](100) NOT NULL,
	[topeCodigoInterno] [nvarchar](20) NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.Tope] PRIMARY KEY CLUSTERED 
(
	[topeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackEntidad]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackEntidad](
	[trenCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[trenEntidad] [nvarchar](100) NULL,
	[trenInformaLog] [bit] NOT NULL,
	[trenInformaNovedad] [bit] NOT NULL,
	[trenInformaApi] [bit] NOT NULL,
	[trenConsumeApi] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TrackEntidad] PRIMARY KEY CLUSTERED 
(
	[trenCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackLog]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackLog](
	[trloCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[trloEntidad] [nvarchar](100) NULL,
	[trloClave] [nvarchar](50) NULL,
	[trloPropiedad] [nvarchar](100) NULL,
	[trloValorViejo] [nvarchar](max) NULL,
	[trloValorNuevo] [nvarchar](max) NULL,
	[trloFecha] [datetime] NOT NULL,
	[trloUsuario] [nvarchar](100) NULL,
	[trloTipo] [nvarchar](100) NULL,
	[trnoCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.TrackLog] PRIMARY KEY CLUSTERED 
(
	[trloCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackNovedad]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackNovedad](
	[trnoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[trnoReferencia] [nvarchar](100) NULL,
	[trnoEntidad] [nvarchar](100) NULL,
	[trnoEstado] [nvarchar](10) NULL,
	[trnoTipo] [nvarchar](100) NULL,
	[trnoFecha] [datetime] NOT NULL,
	[trnoFechaInforme] [datetime] NULL,
	[trnoUsuario] [nvarchar](100) NULL,
	[trnoObservacion] [nvarchar](max) NULL,
	[trnoJson] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TrackNovedad] PRIMARY KEY CLUSTERED 
(
	[trnoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrackNovedadSistemaVinculado]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrackNovedadSistemaVinculado](
	[tnsvCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[trnoCodigo] [bigint] NULL,
	[siviCodigo] [bigint] NOT NULL,
	[tnsvFecha] [datetime] NOT NULL,
	[tnsvEstado] [nvarchar](20) NULL,
	[tnsvCodigoInterno] [nvarchar](50) NULL,
	[tnsvLog] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TrackNovedadSistemaVinculado] PRIMARY KEY CLUSTERED 
(
	[tnsvCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[turnCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[turnFecha] [datetime] NOT NULL,
	[turnFechaInicio] [datetime] NOT NULL,
	[turnFechaFin] [datetime] NOT NULL,
	[turnObservacion] [nvarchar](max) NULL,
	[turnSobreTurno] [bit] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[suesCodigo] [bigint] NULL,
	[servCodigo] [bigint] NULL,
	[paciCodigo] [bigint] NULL,
	[equiCodigo] [bigint] NULL,
	[planCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[horaCodigo] [bigint] NULL,
	[turnReprogramar] [bit] NOT NULL,
	[tetuCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[turnCodigoPadre] [bigint] NOT NULL,
	[turnLlegada] [datetime] NULL,
	[turnConsultorio] [datetime] NULL,
	[turnEspera] [datetime] NULL,
	[turnSalida] [datetime] NULL,
	[turnEntregaOrden] [bit] NOT NULL,
	[ortuCodigo] [bigint] NULL,
	[procCodigo] [bigint] NULL,
	[turnBloqueado] [bit] NOT NULL,
	[turnFueraHora] [bit] NOT NULL,
	[turnEspontaneo] [bit] NOT NULL,
	[turnHorarioLibre] [bit] NOT NULL,
	[turnUsuario] [nvarchar](max) NULL,
	[turnFechaAsignado] [datetime] NULL,
	[turnUsuarioAdmision] [nvarchar](max) NULL,
	[mediCodigoEfector] [bigint] NULL,
	[tuauCodigo] [bigint] NULL,
	[turnCodigoInterno] [nvarchar](20) NULL,
	[tublCodigo] [bigint] NULL,
	[tuprCodigo] [bigint] NULL,
	[turnLlamadasDisplay] [int] NOT NULL,
	[turnAusente] [datetime] NULL,
	[turnUltimoLlamado] [datetime] NULL,
	[turnGuid] [uniqueidentifier] NOT NULL,
	[turnOrigen] [nvarchar](100) NULL,
	[turnConfirmado] [datetime] NULL,
	[turnUsuarioConfirmado] [nvarchar](max) NULL,
	[turnCodigoOrigen] [bigint] NULL,
	[tummCodigo] [bigint] NULL,
	[sillCodigo] [bigint] NULL,
	[enpdCodigo] [bigint] NULL,
	[agruCodigo] [bigint] NULL,
	[tusoCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.Turno] PRIMARY KEY CLUSTERED 
(
	[turnCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoAuditoria]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoAuditoria](
	[tuauCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[turnCodigo] [bigint] NOT NULL,
	[turnFecha] [datetime] NOT NULL,
	[turnFechaInicio] [datetime] NOT NULL,
	[turnFechaFin] [datetime] NOT NULL,
	[turnObservacion] [nvarchar](max) NULL,
	[turnSobreTurno] [bit] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[suesCodigo] [bigint] NULL,
	[servCodigo] [bigint] NULL,
	[paciCodigo] [bigint] NULL,
	[equiCodigo] [bigint] NULL,
	[planCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[horaCodigo] [bigint] NULL,
	[turnReprogramar] [bit] NOT NULL,
	[tetuCodigo] [bigint] NOT NULL,
	[turnCodigoPadre] [bigint] NOT NULL,
	[procCodigo] [bigint] NULL,
	[turnBloqueado] [bit] NOT NULL,
	[turnFueraHora] [bit] NOT NULL,
	[turnEspontaneo] [bit] NOT NULL,
	[turnHorarioLibre] [bit] NOT NULL,
	[turnUsuario] [nvarchar](max) NULL,
	[turnFechaAsignado] [datetime] NULL,
	[turnUsuarioAdmision] [nvarchar](max) NULL,
	[turnFechaAuditoria] [datetime] NOT NULL,
	[turnUsuarioAuditoria] [nvarchar](max) NULL,
	[turnReprogramado] [bit] NOT NULL,
	[tuauGuid] [uniqueidentifier] NOT NULL,
	[turnConfirmado] [datetime] NULL,
	[turnUsuarioConfirmado] [nvarchar](max) NULL,
	[turnOrigen] [nvarchar](max) NULL,
	[enpdCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.TurnoAuditoria] PRIMARY KEY CLUSTERED 
(
	[tuauCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoBloqueo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoBloqueo](
	[tublCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ubicCodigo] [bigint] NULL,
	[mediCodigo] [bigint] NULL,
	[servCodigo] [bigint] NULL,
	[tublFechaDesde] [datetime] NOT NULL,
	[tublFechaHasta] [datetime] NOT NULL,
	[tublDiaSemana] [int] NOT NULL,
	[tublHoraDesde] [datetime] NOT NULL,
	[tublHoraHasta] [datetime] NOT NULL,
	[tublObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[horaCodigo] [bigint] NULL,
	[tublHsLiberacion] [int] NOT NULL,
	[tubtCodigo] [bigint] NOT NULL,
	[recrCodigo] [bigint] NULL,
	[remoCodigo] [bigint] NULL,
	[tubtInactivo] [bit] NOT NULL,
	[sillCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.TurnoBloqueo] PRIMARY KEY CLUSTERED 
(
	[tublCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoBloqueoDG]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoBloqueoDG](
	[turnCodigo] [bigint] NOT NULL,
	[turnFecha] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoBloqueoTipo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoBloqueoTipo](
	[tubtCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tubtDescripcion] [nvarchar](max) NULL,
	[tubtCodigoInterno] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TurnoBloqueoTipo] PRIMARY KEY CLUSTERED 
(
	[tubtCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoEvento]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoEvento](
	[tuevCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tuevFecha] [datetime] NOT NULL,
	[tuevObservacion] [nvarchar](max) NULL,
	[tevtCodigo] [bigint] NOT NULL,
	[turnCodigo] [bigint] NOT NULL,
	[userId] [nvarchar](128) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[saesCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.TurnoEvento] PRIMARY KEY CLUSTERED 
(
	[tuevCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoEventoTipo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoEventoTipo](
	[tevtCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tevtDescripcion] [nvarchar](max) NULL,
	[tevtCodigoInterno] [nvarchar](20) NULL,
	[tevtColor] [nvarchar](10) NULL,
	[tevtColorLetra] [nvarchar](10) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tevtObservacion] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TurnoEventoTipo] PRIMARY KEY CLUSTERED 
(
	[tevtCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoMigracionMotivo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoMigracionMotivo](
	[tummCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tummDescripcion] [nvarchar](100) NULL,
	[tummCodigoInterno] [nvarchar](20) NULL,
	[tummActivo] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TurnoMigracionMotivo] PRIMARY KEY CLUSTERED 
(
	[tummCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoPrioridad]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoPrioridad](
	[tuprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tuprCodigoInterno] [nvarchar](20) NULL,
	[tuprDescripcion] [nvarchar](100) NULL,
	[tuprColor] [nvarchar](50) NULL,
	[tuprOrden] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TurnoPrioridad] PRIMARY KEY CLUSTERED 
(
	[tuprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoProcedimiento]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoProcedimiento](
	[tuprCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[turnCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.TurnoProcedimiento] PRIMARY KEY CLUSTERED 
(
	[tuprCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoSolicitud]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoSolicitud](
	[tusoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tusoFecha] [datetime] NOT NULL,
	[tusoFechaTurno] [datetime] NOT NULL,
	[paciCodigo] [bigint] NOT NULL,
	[planCodigo] [bigint] NOT NULL,
	[mediCodigo] [bigint] NULL,
	[suesCodigo] [bigint] NULL,
	[servCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[tusoGuid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.TurnoSolicitud] PRIMARY KEY CLUSTERED 
(
	[tusoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoSolicitudProcedimiento]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoSolicitudProcedimiento](
	[tuspCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tusoCodigo] [bigint] NOT NULL,
	[procCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.TurnoSolicitudProcedimiento] PRIMARY KEY CLUSTERED 
(
	[tuspCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[ubicCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ubicDescripcion] [nvarchar](100) NOT NULL,
	[ubicDescripcionAlternativa] [nvarchar](100) NULL,
	[ubicCodigoInterno] [nvarchar](20) NULL,
	[ubicCalle] [nvarchar](100) NULL,
	[ubicAltura] [int] NOT NULL,
	[ubicLocalidad] [nvarchar](50) NULL,
	[ubicCodigoPostal] [nvarchar](50) NULL,
	[ubicCodigoProvincia] [nvarchar](3) NULL,
	[ubicCodigoHPGD] [nvarchar](40) NULL,
	[ubicRegionSanitaria] [nvarchar](5) NULL,
	[ubicTelefono] [nvarchar](50) NULL,
	[ubicResolucion] [nvarchar](5) NULL,
	[ubicCodigoFacturacion] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[locaCodigo] [bigint] NULL,
	[ubicDescripcionAbreviada] [nvarchar](100) NULL,
	[ubicPublica] [bit] NOT NULL,
	[tideCodigo] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.Ubicacion] PRIMARY KEY CLUSTERED 
(
	[ubicCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UbicacionCodigoPcia]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UbicacionCodigoPcia](
	[ubicCodigo] [bigint] NOT NULL,
	[ubicDescripcion] [nvarchar](100) NOT NULL,
	[ubicCodigoProvincia] [varchar](8) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UbicacionLocalidad]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UbicacionLocalidad](
	[ubloCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[locaCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.UbicacionLocalidad] PRIMARY KEY CLUSTERED 
(
	[ubloCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioAcceso]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioAcceso](
	[usacCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](128) NULL,
	[acceCodigo] [bigint] NOT NULL,
	[usacFavorito] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.UsuarioAcceso] PRIMARY KEY CLUSTERED 
(
	[usacCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioJson]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioJson](
	[usjsCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](128) NULL,
	[usjsObjeto] [nvarchar](500) NULL,
	[usjsJson] [nvarchar](max) NULL,
	[usjsFecha] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.UsuarioJson] PRIMARY KEY CLUSTERED 
(
	[usjsCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioLog]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioLog](
	[usloCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](128) NULL,
	[ubicCodigo] [bigint] NOT NULL,
	[usloFecha] [datetime] NOT NULL,
	[usloTipo] [nvarchar](1) NULL,
	[usloIP] [nvarchar](20) NULL,
	[consCodigo] [bigint] NULL,
	[areaCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.UsuarioLog] PRIMARY KEY CLUSTERED 
(
	[usloCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioPuntoVenta]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioPuntoVenta](
	[uspuCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[usubCodigo] [bigint] NOT NULL,
	[uspuMascara] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UsuarioPuntoVenta] PRIMARY KEY CLUSTERED 
(
	[uspuCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioUbicacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioUbicacion](
	[usubCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ubicCodigo] [bigint] NULL,
	[Id] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.UsuarioUbicacion] PRIMARY KEY CLUSTERED 
(
	[usubCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacuna]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacuna](
	[vacuCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[vacuDescripcion] [nvarchar](200) NULL,
	[vacuObservacion] [nvarchar](max) NULL,
	[vacuOrden] [int] NOT NULL,
	[vacuInactiva] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[vacuCodigoInterno] [nvarchar](20) NULL,
	[vacuCalendario] [bit] NOT NULL,
	[snomCodigo] [nvarchar](18) NULL,
	[vacuNomivac] [nvarchar](10) NULL,
 CONSTRAINT [PK_dbo.Vacuna] PRIMARY KEY CLUSTERED 
(
	[vacuCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacunaDosis]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacunaDosis](
	[vadoDosis] [nvarchar](100) NULL,
	[vadoObservacion] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[vadoCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[vadoCodigoInterno] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.VacunaDosis] PRIMARY KEY CLUSTERED 
(
	[vadoCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacunaDosisEtario]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacunaDosisEtario](
	[vadeCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[vacuCodigo] [bigint] NOT NULL,
	[vareCodigo] [bigint] NOT NULL,
	[vadoCodigo] [bigint] NOT NULL,
	[vadeObservacion] [nvarchar](max) NULL,
	[vadeNormal] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[vadoNomivac] [nvarchar](10) NULL,
 CONSTRAINT [PK_dbo.VacunaDosisEtario] PRIMARY KEY CLUSTERED 
(
	[vadeCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VacunaRangoEtario]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VacunaRangoEtario](
	[vareCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[vareDescripcion] [nvarchar](max) NULL,
	[vareOrden] [int] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[vareCodigoInterno] [nvarchar](20) NULL,
	[vareMesDesde] [int] NOT NULL,
	[vareMesHasta] [int] NOT NULL,
	[vareSexo] [nvarchar](1) NULL,
 CONSTRAINT [PK_dbo.VacunaRangoEtario] PRIMARY KEY CLUSTERED 
(
	[vareCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VariableCalculo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VariableCalculo](
	[varcCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[varcVariable] [nvarchar](50) NULL,
	[varcCampo] [nvarchar](50) NULL,
	[varcCampoDescripcion] [nvarchar](50) NULL,
	[varcTabla] [nvarchar](100) NULL,
	[varcURLServicio] [nvarchar](400) NULL,
	[varcDescripcion] [nvarchar](200) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.VariableCalculo] PRIMARY KEY CLUSTERED 
(
	[varcCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[ventCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[tcveCodigo] [bigint] NOT NULL,
	[ventMascara] [nvarchar](4) NULL,
	[ventNumero] [nvarchar](8) NULL,
	[ventFecha] [datetime] NOT NULL,
	[ventFechaVencimiento] [datetime] NOT NULL,
	[ventImporteBruto] [decimal](18, 2) NOT NULL,
	[ventImporteIva] [decimal](18, 2) NOT NULL,
	[ventImporteTributos] [decimal](18, 2) NOT NULL,
	[ventDescuento] [decimal](18, 2) NOT NULL,
	[ventImporteNoGravado] [decimal](18, 2) NOT NULL,
	[ventImporteTotal] [decimal](18, 2) NOT NULL,
	[ventObservaciones] [nvarchar](max) NULL,
	[ventCAE] [nvarchar](100) NULL,
	[ventCAEVencimiento] [datetime] NOT NULL,
	[ventCodigoBarra] [nvarchar](200) NULL,
	[ventDesdeServicio] [datetime] NOT NULL,
	[ventHastaServicio] [datetime] NOT NULL,
	[emprCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[persCodigo] [bigint] NULL,
	[coveCodigo] [bigint] NOT NULL,
	[enfaCodigo] [bigint] NULL,
	[cajaCodigo] [bigint] NULL,
	[taloCodigo] [bigint] NULL,
	[ubicCodigo] [bigint] NULL,
	[ventEmisionDiferida] [bit] NOT NULL,
	[ventFechaPresentacion] [datetime] NULL,
 CONSTRAINT [PK_dbo.Venta] PRIMARY KEY CLUSTERED 
(
	[ventCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaAnexo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaAnexo](
	[ventCodigo] [bigint] NOT NULL,
	[veanRazonSocial] [nvarchar](max) NULL,
	[veanTipoDocumento] [nvarchar](max) NULL,
	[veanNroDocumento] [nvarchar](max) NULL,
	[veanDomicilio] [nvarchar](max) NULL,
	[veanLocalidad] [nvarchar](max) NULL,
	[veanCondicionIva] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.VentaAnexo] PRIMARY KEY CLUSTERED 
(
	[ventCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaArchivo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaArchivo](
	[vearCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ventCodigo] [bigint] NOT NULL,
	[vearFecha] [datetime] NOT NULL,
	[vearDescripcion] [nvarchar](max) NULL,
	[vearArchivo] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.VentaArchivo] PRIMARY KEY CLUSTERED 
(
	[vearCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaCancelacion]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaCancelacion](
	[vecaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ventCodigo] [bigint] NOT NULL,
	[ventCodigoCancela] [bigint] NOT NULL,
	[vecaImporte] [decimal](18, 2) NOT NULL,
	[vecaFecha] [datetime] NOT NULL,
	[vecaRelacion] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.VentaCancelacion] PRIMARY KEY CLUSTERED 
(
	[vecaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaItem]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaItem](
	[veitCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ventCodigo] [bigint] NOT NULL,
	[veitCantidad] [decimal](18, 2) NOT NULL,
	[veitImpBrutoUnit] [decimal](18, 2) NOT NULL,
	[veitImpBrutoTotal] [decimal](18, 2) NOT NULL,
	[ivapCodigo] [bigint] NOT NULL,
	[veitImpIVATotal] [decimal](18, 2) NOT NULL,
	[veitImporteNoGravado] [decimal](18, 2) NOT NULL,
	[veitImporteTotal] [decimal](18, 2) NOT NULL,
	[veitPorcientoDescuento] [decimal](18, 2) NOT NULL,
	[veitObservacion] [nvarchar](max) NULL,
	[moneCodigo] [bigint] NULL,
	[veitImporteExtranjero] [decimal](18, 2) NOT NULL,
	[nomeCodigo] [bigint] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[panoCodigo] [bigint] NULL,
	[panrCodigo] [bigint] NULL,
	[pnefCodigo] [bigint] NULL,
 CONSTRAINT [PK_dbo.VentaItem] PRIMARY KEY CLUSTERED 
(
	[veitCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaIva]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaIva](
	[veiv_Codigo] [bigint] IDENTITY(1,1) NOT NULL,
	[ventCodigo] [bigint] NOT NULL,
	[ivapCodigo] [bigint] NOT NULL,
	[veivImpBase] [decimal](18, 2) NOT NULL,
	[veivImpIVA] [decimal](18, 2) NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.VentaIva] PRIMARY KEY CLUSTERED 
(
	[veiv_Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaTributo]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaTributo](
	[ventCodigo] [bigint] NOT NULL,
	[titrCodigo] [bigint] NOT NULL,
	[vetrImporteBase] [decimal](18, 2) NOT NULL,
	[vetrPorcientoImpuesto] [decimal](18, 2) NOT NULL,
	[vetrImporteImpuesto] [decimal](18, 2) NOT NULL,
	[vetrNumeroImpuesto] [nvarchar](max) NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
	[vetrCodigo] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.VentaTributo] PRIMARY KEY CLUSTERED 
(
	[vetrCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VinculoPaciente]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VinculoPaciente](
	[vipaCodigo] [bigint] IDENTITY(1,1) NOT NULL,
	[vipaDescripcion] [nvarchar](100) NULL,
	[vipaBusqueda] [bit] NOT NULL,
	[audiCreadoPor] [nvarchar](max) NULL,
	[audiCreado] [datetime] NULL,
	[audiModificadoPor] [nvarchar](max) NULL,
	[audiModificado] [datetime] NULL,
 CONSTRAINT [PK_dbo.VinculoPaciente] PRIMARY KEY CLUSTERED 
(
	[vipaCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VMAT_TurnosBloqueados]    Script Date: 23/02/2023 14:13:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMAT_TurnosBloqueados](
	[turnCodigo] [bigint] NOT NULL,
	[turnFecha] [datetime] NOT NULL,
	[actualizado] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Acceso] ADD  DEFAULT ((0)) FOR [acceOrden]
GO
ALTER TABLE [dbo].[Acceso] ADD  DEFAULT ((0)) FOR [acceMenuLateral]
GO
ALTER TABLE [dbo].[Acceso] ADD  DEFAULT ((0)) FOR [acceAccesoEntrada]
GO
ALTER TABLE [dbo].[Acceso] ADD  DEFAULT ((0)) FOR [acceSinAutorizacion]
GO
ALTER TABLE [dbo].[AccesoItem] ADD  DEFAULT ((0)) FOR [acitOrden]
GO
ALTER TABLE [dbo].[AccesoItem] ADD  DEFAULT ((0)) FOR [acitSeparador]
GO
ALTER TABLE [dbo].[Agrupamiento] ADD  DEFAULT ((0)) FOR [agtiCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoProcedimiento] ADD  DEFAULT ((0)) FOR [agprPrioridad]
GO
ALTER TABLE [dbo].[AgrupamientoSistemaVariable] ADD  DEFAULT ((0)) FOR [agsvOrden]
GO
ALTER TABLE [dbo].[Alimento] ADD  DEFAULT ((0)) FOR [alimCalorias]
GO
ALTER TABLE [dbo].[ApiKey] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [apikFecha]
GO
ALTER TABLE [dbo].[ApiKey] ADD  DEFAULT ((0)) FOR [apikVigente]
GO
ALTER TABLE [dbo].[Archivo] ADD  DEFAULT ((0)) FOR [artiCodigo]
GO
ALTER TABLE [dbo].[Area] ADD  DEFAULT ((0)) FOR [cecoCodigo]
GO
ALTER TABLE [dbo].[Area] ADD  DEFAULT ((0)) FOR [areaVigente]
GO
ALTER TABLE [dbo].[Autorizacion] ADD  DEFAULT ((0)) FOR [autoHorasGestion]
GO
ALTER TABLE [dbo].[Caja] ADD  DEFAULT ((0)) FOR [ubicCodigo]
GO
ALTER TABLE [dbo].[Cobertura] ADD  DEFAULT ((0)) FOR [cobeSolicitarAutorizacion]
GO
ALTER TABLE [dbo].[Cobertura] ADD  DEFAULT ((0)) FOR [cobeDiasVtoOrden]
GO
ALTER TABLE [dbo].[Cobertura] ADD  DEFAULT ((0)) FOR [cobeDiasVtoFacturacion]
GO
ALTER TABLE [dbo].[Cobertura] ADD  DEFAULT ((0)) FOR [cobeDiasVtoRefacturacion]
GO
ALTER TABLE [dbo].[Cobertura] ADD  DEFAULT ((0)) FOR [cobePublicaWeb]
GO
ALTER TABLE [dbo].[Cobertura] ADD  DEFAULT ((0)) FOR [cobeRecetaWeb]
GO
ALTER TABLE [dbo].[Consultorio] ADD  DEFAULT ((0)) FOR [depoCodigo]
GO
ALTER TABLE [dbo].[Consultorio] ADD  DEFAULT ((0)) FOR [cecoCodigo]
GO
ALTER TABLE [dbo].[Consultorio] ADD  DEFAULT ((0)) FOR [ambiCodigo]
GO
ALTER TABLE [dbo].[Convenio] ADD  DEFAULT ((0)) FOR [convConvenioBase]
GO
ALTER TABLE [dbo].[ConvenioNomenclador] ADD  DEFAULT ((0)) FOR [conoPorcentaje]
GO
ALTER TABLE [dbo].[ConvenioNomenclador] ADD  DEFAULT ((0)) FOR [conoRemplazaValor]
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivo] ADD  DEFAULT ((0)) FOR [tnomCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorPlan] ADD  DEFAULT ((0)) FOR [conpPorcentaje]
GO
ALTER TABLE [dbo].[ConvenioPlan] ADD  DEFAULT ((0)) FOR [ambiCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalMedico] ADD  DEFAULT ((0)) FOR [copmPorcentaje]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] ADD  DEFAULT ((0)) FOR [copnTopeMinimo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] ADD  DEFAULT ((0)) FOR [copnTopeMaximo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] ADD  DEFAULT ((0)) FOR [copnSinValor]
GO
ALTER TABLE [dbo].[Cuadro] ADD  DEFAULT ((0)) FOR [cuadGrafico]
GO
ALTER TABLE [dbo].[Cuadro] ADD  DEFAULT ((0)) FOR [cuadTotales]
GO
ALTER TABLE [dbo].[Cuadro] ADD  DEFAULT ((0)) FOR [cuadUsuario]
GO
ALTER TABLE [dbo].[Deposito] ADD  DEFAULT ((0)) FOR [ubicCodigo]
GO
ALTER TABLE [dbo].[Deposito] ADD  DEFAULT ((0)) FOR [depoStockNegativo]
GO
ALTER TABLE [dbo].[Deposito] ADD  DEFAULT ((0)) FOR [depoVigente]
GO
ALTER TABLE [dbo].[Derivador] ADD  DEFAULT ((0)) FOR [deriActivo]
GO
ALTER TABLE [dbo].[Diagnostico] ADD  DEFAULT ((0)) FOR [diagActivo]
GO
ALTER TABLE [dbo].[Diagnostico] ADD  DEFAULT ((0)) FOR [diagAlerta]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ('') FOR [enfaFantasia]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaCopias]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaGranContribuyente]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaCierreGral]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [coveCodigoPyme]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaAmbitoAtencion]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaContratacion]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaUbicacion]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaCobertura]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaAmbitoFacturacion]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaAtencionesControladas]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaAtencionesValidadas]
GO
ALTER TABLE [dbo].[EntidadFacturable] ADD  DEFAULT ((0)) FOR [enfaAgrupaPeriodo]
GO
ALTER TABLE [dbo].[Entrada] ADD  DEFAULT ((0)) FOR [grtiCodigo]
GO
ALTER TABLE [dbo].[Entrada] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [entrFechaAtencion]
GO
ALTER TABLE [dbo].[Entrada] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [entrFechaCarga]
GO
ALTER TABLE [dbo].[Entrada] ADD  DEFAULT ((0)) FOR [entrAuditable]
GO
ALTER TABLE [dbo].[Entrada] ADD  DEFAULT ((0)) FOR [entrAuditada]
GO
ALTER TABLE [dbo].[EntradaIndicacion] ADD  DEFAULT ((0)) FOR [eninIntervalo]
GO
ALTER TABLE [dbo].[EntradaIndicacion] ADD  DEFAULT ((0)) FOR [eninDuracion]
GO
ALTER TABLE [dbo].[EntradaIndicacion] ADD  DEFAULT ((0)) FOR [eninTipo]
GO
ALTER TABLE [dbo].[EntradaIndicacion] ADD  DEFAULT ((0)) FOR [eninUrgente]
GO
ALTER TABLE [dbo].[EntradaIndicacionEvento] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [eineFechaAplicacion]
GO
ALTER TABLE [dbo].[EntradaIndicacionEvento] ADD  DEFAULT ((0)) FOR [eineTipo]
GO
ALTER TABLE [dbo].[EntradaMedicamento] ADD  DEFAULT ((0)) FOR [enmeDosis]
GO
ALTER TABLE [dbo].[EntradaMedicamento] ADD  DEFAULT ((0)) FOR [enmeIntervalo]
GO
ALTER TABLE [dbo].[EntradaMedicamento] ADD  DEFAULT ((0)) FOR [enmeIndice]
GO
ALTER TABLE [dbo].[EntradaMedicamento] ADD  DEFAULT ((0)) FOR [tumeCodigo]
GO
ALTER TABLE [dbo].[EntradaMedicamento] ADD  DEFAULT ((0)) FOR [enmeDuracion]
GO
ALTER TABLE [dbo].[EntradaMedicamento] ADD  DEFAULT ((0)) FOR [enmeSolucion]
GO
ALTER TABLE [dbo].[EntradaMedicamento] ADD  DEFAULT ((0)) FOR [enmeTipo]
GO
ALTER TABLE [dbo].[EntradaMedicamento] ADD  DEFAULT ((0)) FOR [enmeUrgente]
GO
ALTER TABLE [dbo].[EntradaMedicamento] ADD  DEFAULT ((0)) FOR [enmeDia]
GO
ALTER TABLE [dbo].[EntradaMedicamentoEvento] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [emeeFechaAplicacion]
GO
ALTER TABLE [dbo].[EntradaMedicamentoEvento] ADD  DEFAULT ((0)) FOR [emeeTipo]
GO
ALTER TABLE [dbo].[EntradaMenuItem] ADD  DEFAULT ((0)) FOR [menuCodigo]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador] ADD  DEFAULT ((0)) FOR [epdnPreparacion]
GO
ALTER TABLE [dbo].[Equipo] ADD  DEFAULT ((0)) FOR [equiSoporteKg]
GO
ALTER TABLE [dbo].[EquipoBloqueo] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [eqblHoraDesde]
GO
ALTER TABLE [dbo].[EquipoBloqueo] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [eqblHoraHasta]
GO
ALTER TABLE [dbo].[EquipoVariableValor] ADD  DEFAULT ((0)) FOR [sivaCodigo]
GO
ALTER TABLE [dbo].[Especialidad] ADD  DEFAULT ((0)) FOR [espeEdadDesde]
GO
ALTER TABLE [dbo].[Especialidad] ADD  DEFAULT ((0)) FOR [espeEdadHasta]
GO
ALTER TABLE [dbo].[Expediente] ADD  DEFAULT ((0)) FOR [expeImporte]
GO
ALTER TABLE [dbo].[Expediente] ADD  DEFAULT ((0)) FOR [exesCodigo]
GO
ALTER TABLE [dbo].[Generico] ADD  DEFAULT ((0)) FOR [geneUsoFrecuente]
GO
ALTER TABLE [dbo].[Generico] ADD  DEFAULT ((0)) FOR [geneUsoReceta]
GO
ALTER TABLE [dbo].[Generico] ADD  DEFAULT ((0)) FOR [geneVigente]
GO
ALTER TABLE [dbo].[Generico] ADD  DEFAULT ((0)) FOR [geneRecetaArchivada]
GO
ALTER TABLE [dbo].[Generico] ADD  DEFAULT ((0)) FOR [geneGenerico]
GO
ALTER TABLE [dbo].[Generico] ADD  DEFAULT ((0)) FOR [genePrincipioActivo]
GO
ALTER TABLE [dbo].[Generico] ADD  DEFAULT ((0)) FOR [geneOncologia]
GO
ALTER TABLE [dbo].[Grupo] ADD  DEFAULT ((0)) FOR [grupActivo]
GO
ALTER TABLE [dbo].[Grupo] ADD  DEFAULT ((0)) FOR [grupUltimaEntrada]
GO
ALTER TABLE [dbo].[Grupo] ADD  DEFAULT ((0)) FOR [grupMultiAmbito]
GO
ALTER TABLE [dbo].[Grupo] ADD  DEFAULT ((0)) FOR [grupUltimaEntradaInternacion]
GO
ALTER TABLE [dbo].[GrupoPropiedadOpcion] ADD  DEFAULT ((0)) FOR [grpoOrden]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiUnico]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiMedicamentos]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiProcedimientos]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiIndicaciones]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiImagenes]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiAltaMedica]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiUnicoTipo]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiDispensarMedicamentos]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiOrden]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiFirma]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiUltimaEvolucion]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiCargaAntecedentes]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiCargaMedicacionHabitual]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiNoCargarUltimoValor]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiAsistente]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiDiagnosticoObligatorio]
GO
ALTER TABLE [dbo].[GrupoTipo] ADD  DEFAULT ((0)) FOR [grtiCambiarFecha]
GO
ALTER TABLE [dbo].[GrupoTipoGrupo] ADD  DEFAULT ((0)) FOR [grtgObligatorio]
GO
ALTER TABLE [dbo].[GrupoTipoGrupo] ADD  DEFAULT ((0)) FOR [grtgDesplegado]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaTipoSobreturno]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaProgramado]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaEspontaneo]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaPacienteSimultaneos]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaSinTurnos]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaSeRepite]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaPresente]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaTodosUsuarios]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaTodasCoberturas]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [hotiCodigo]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaSobreescribeRecurrente]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaTrabajaFeriado]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaVigente]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ((0)) FOR [horaPacientePV]
GO
ALTER TABLE [dbo].[HorarioCobertura] ADD  DEFAULT ((0)) FOR [hocoCantidad]
GO
ALTER TABLE [dbo].[HorarioCobertura] ADD  DEFAULT ((0)) FOR [hocoPorcentaje]
GO
ALTER TABLE [dbo].[HorarioNoAtencion] ADD  DEFAULT ((0)) FOR [honoReprogramado]
GO
ALTER TABLE [dbo].[HorarioProcedimiento] ADD  DEFAULT ((0)) FOR [hoprCantidad]
GO
ALTER TABLE [dbo].[HorarioProcedimiento] ADD  DEFAULT ((0)) FOR [hoprVentanaHs]
GO
ALTER TABLE [dbo].[HorarioReserva] ADD  DEFAULT ((0)) FOR [horeWeb]
GO
ALTER TABLE [dbo].[HorarioReserva] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [horeHoraDesde]
GO
ALTER TABLE [dbo].[HorarioReserva] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [horeHoraHasta]
GO
ALTER TABLE [dbo].[HorarioSobreTurno] ADD  DEFAULT ((0)) FOR [hostHorarioLibre]
GO
ALTER TABLE [dbo].[HorarioUsuario] ADD  DEFAULT ((0)) FOR [housBloqueado]
GO
ALTER TABLE [dbo].[IndicacionFrecuencia] ADD  DEFAULT ((0)) FOR [infrDefault]
GO
ALTER TABLE [dbo].[IndicacionPerfil] ADD  DEFAULT ((0)) FOR [inptCodigo]
GO
ALTER TABLE [dbo].[Intervalos] ADD  DEFAULT ((0)) FOR [Semana]
GO
ALTER TABLE [dbo].[IVA] ADD  DEFAULT ((0)) FOR [ivapCodigoAfip]
GO
ALTER TABLE [dbo].[Liquidacion] ADD  DEFAULT ((0)) FOR [liquDerivante]
GO
ALTER TABLE [dbo].[Liquidacion] ADD  DEFAULT ((0)) FOR [liquCargoFijo]
GO
ALTER TABLE [dbo].[Liquidacion] ADD  DEFAULT ((0)) FOR [liquCargaManual]
GO
ALTER TABLE [dbo].[LiquidacionConcepto] ADD  DEFAULT ((0)) FOR [nomeCodigo]
GO
ALTER TABLE [dbo].[LiquidacionConcepto] ADD  DEFAULT ((0)) FOR [licoImporte]
GO
ALTER TABLE [dbo].[Localidad] ADD  DEFAULT ((0)) FOR [locaDefault]
GO
ALTER TABLE [dbo].[LoteFacturacion] ADD  DEFAULT ((0)) FOR [lofaFacturaPorPaciente]
GO
ALTER TABLE [dbo].[LoteFacturacion] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [lofaFechaCierre]
GO
ALTER TABLE [dbo].[LoteFacturacion] ADD  DEFAULT ((0)) FOR [lofaControl]
GO
ALTER TABLE [dbo].[MedicamentoEspecificacion] ADD  DEFAULT ((0)) FOR [meesActivo]
GO
ALTER TABLE [dbo].[MedicamentoFrecuencia] ADD  DEFAULT ((0)) FOR [mefrDefault]
GO
ALTER TABLE [dbo].[MedicamentoFrecuencia] ADD  DEFAULT ((0)) FOR [mefrActivo]
GO
ALTER TABLE [dbo].[MedicamentoVia] ADD  DEFAULT ((0)) FOR [meviActivo]
GO
ALTER TABLE [dbo].[Medico] ADD  DEFAULT ((0)) FOR [mediAgrupaProcedimientos]
GO
ALTER TABLE [dbo].[Medico] ADD  DEFAULT ((0)) FOR [mediAuditable]
GO
ALTER TABLE [dbo].[MedicoCobertura] ADD  DEFAULT ((0)) FOR [mecoFacturacionDirecta]
GO
ALTER TABLE [dbo].[MedicoCobertura] ADD  DEFAULT ((0)) FOR [mecoWeb]
GO
ALTER TABLE [dbo].[MedicoEspecialidad] ADD  DEFAULT ((0)) FOR [meesEdadDesde]
GO
ALTER TABLE [dbo].[MedicoEspecialidad] ADD  DEFAULT ((0)) FOR [meesEdadHasta]
GO
ALTER TABLE [dbo].[MedicoMatricula] ADD  DEFAULT ((0)) FOR [tiprCodigo]
GO
ALTER TABLE [dbo].[MedicoMatricula] ADD  DEFAULT ((0)) FOR [memaSISA]
GO
ALTER TABLE [dbo].[MedicoProcedimiento] ADD  DEFAULT ((0)) FOR [meprConjunto]
GO
ALTER TABLE [dbo].[MedicoProcedimiento] ADD  DEFAULT ((0)) FOR [meprActuantes]
GO
ALTER TABLE [dbo].[MedicoProcedimiento] ADD  DEFAULT ((0)) FOR [meprDuracion]
GO
ALTER TABLE [dbo].[Menu] ADD  DEFAULT ((0)) FOR [menuCombo]
GO
ALTER TABLE [dbo].[MenuTipo] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [metiPreestablecido]
GO
ALTER TABLE [dbo].[MenuTipo] ADD  DEFAULT ((0)) FOR [metiCamarero]
GO
ALTER TABLE [dbo].[Nomenclador] ADD  DEFAULT ((0)) FOR [nomeActivo]
GO
ALTER TABLE [dbo].[Nomenclador] ADD  DEFAULT ((0)) FOR [nomePuntos]
GO
ALTER TABLE [dbo].[Nomenclador] ADD  DEFAULT ((0)) FOR [nomeExento]
GO
ALTER TABLE [dbo].[NomencladorArticulo] ADD  DEFAULT ((0)) FOR [noarLote]
GO
ALTER TABLE [dbo].[NomencladorArticulo] ADD  DEFAULT ((0)) FOR [noarFechaVencimiento]
GO
ALTER TABLE [dbo].[NomencladorArticulo] ADD  DEFAULT ((0)) FOR [noarControlaStock]
GO
ALTER TABLE [dbo].[NomencladorArticulo] ADD  DEFAULT ((0)) FOR [noarDosis]
GO
ALTER TABLE [dbo].[NomencladorArticulo] ADD  DEFAULT ((0)) FOR [noarTempMinima]
GO
ALTER TABLE [dbo].[NomencladorArticulo] ADD  DEFAULT ((0)) FOR [noarTempMaxima]
GO
ALTER TABLE [dbo].[NomencladorArticulo] ADD  DEFAULT ((0)) FOR [noarTemperatura]
GO
ALTER TABLE [dbo].[NomencladorArticulo] ADD  DEFAULT ((0)) FOR [noarAplicacionFraccionada]
GO
ALTER TABLE [dbo].[NomencladorPractica] ADD  DEFAULT ((0)) FOR [noprPension]
GO
ALTER TABLE [dbo].[NomencladorPractica] ADD  DEFAULT ((0)) FOR [noprConsultaPendiente]
GO
ALTER TABLE [dbo].[NomencladorPractica] ADD  DEFAULT ((0)) FOR [noprDiasVencimiento]
GO
ALTER TABLE [dbo].[NomencladorPractica] ADD  DEFAULT ((0)) FOR [noprOdontologica]
GO
ALTER TABLE [dbo].[OrdenTurno] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [ortuFechaInternacion]
GO
ALTER TABLE [dbo].[OrdenTurno] ADD  DEFAULT ((0)) FOR [ortuQuirurgica]
GO
ALTER TABLE [dbo].[OrdenTurno] ADD  DEFAULT ((0)) FOR [ortuInternacion]
GO
ALTER TABLE [dbo].[OrdenTurno] ADD  DEFAULT ((0)) FOR [orttCodigo]
GO
ALTER TABLE [dbo].[OrdenTurno] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [ortuFechaAutorizacion]
GO
ALTER TABLE [dbo].[OrdenTurnoProcedimiento] ADD  DEFAULT ((0)) FOR [orprHonorarioEspecial]
GO
ALTER TABLE [dbo].[OrdenTurnoTipo] ADD  DEFAULT ((0)) FOR [orttActivo]
GO
ALTER TABLE [dbo].[OrdenTurnoTipo] ADD  DEFAULT ((0)) FOR [orttDefault]
GO
ALTER TABLE [dbo].[OrdenTurnoTipo] ADD  DEFAULT ((0)) FOR [orttRequiereInternacion]
GO
ALTER TABLE [dbo].[PacienteAlerta] ADD  DEFAULT ((0)) FOR [paalPrivada]
GO
ALTER TABLE [dbo].[PacienteAlerta] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [paalFechaHasta]
GO
ALTER TABLE [dbo].[PacienteArchivo] ADD  DEFAULT ((0)) FOR [paarIncluirInforme]
GO
ALTER TABLE [dbo].[PacienteAutorizacionNomenclador] ADD  DEFAULT ((0)) FOR [paunFrecuenciaValor]
GO
ALTER TABLE [dbo].[PacienteCategoria] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [pacaFechaDesde]
GO
ALTER TABLE [dbo].[PacienteCategoria] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [pacaFechaHasta]
GO
ALTER TABLE [dbo].[PacienteCategoria] ADD  DEFAULT ((0)) FOR [pacaActivo]
GO
ALTER TABLE [dbo].[PacienteComandaItem] ADD  DEFAULT ((0)) FOR [pcmiAdicional]
GO
ALTER TABLE [dbo].[PacienteInforme] ADD  DEFAULT ((0)) FOR [mediCodigo]
GO
ALTER TABLE [dbo].[PacienteInforme] ADD  DEFAULT ((0)) FOR [paciCodigo]
GO
ALTER TABLE [dbo].[PacienteMedicacion] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [pameFecha]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((0)) FOR [cecoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((0)) FOR [ambiCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((0)) FOR [ubicCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((0)) FOR [emprCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((0)) FOR [panoImporteBaseCobertura]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((0)) FOR [panoImporteBasePaciente]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((0)) FOR [panoImporteManual]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((100)) FOR [panoPorcentaje]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((0)) FOR [panoFacturacionDirecta]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((0)) FOR [tconCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador] ADD  DEFAULT ((0)) FOR [panoDescuentoCobertura]
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [pancFechaDesde]
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [pancFechaHasta]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] ADD  DEFAULT ((0)) FOR [paneImporteLiquidacion]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] ADD  DEFAULT ((0)) FOR [paneImporteManual]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] ADD  DEFAULT ((0)) FOR [paneImporteFacturacion]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] ADD  DEFAULT ((0)) FOR [panePorcentaje]
GO
ALTER TABLE [dbo].[PacienteOdontogramaTipo] ADD  DEFAULT ((0)) FOR [potiRegProcedimiento]
GO
ALTER TABLE [dbo].[PacientePermisoEspecial] ADD  DEFAULT ((0)) FOR [ppetCodigo]
GO
ALTER TABLE [dbo].[PacienteVacuna] ADD  DEFAULT ((0)) FOR [vadoCodigo]
GO
ALTER TABLE [dbo].[PacienteVinculo] ADD  DEFAULT ((0)) FOR [paviResponsable]
GO
ALTER TABLE [dbo].[PacienteVinculo] ADD  DEFAULT ((0)) FOR [paviVerificado]
GO
ALTER TABLE [dbo].[Pais] ADD  DEFAULT ((0)) FOR [paisDefault]
GO
ALTER TABLE [dbo].[Pais] ADD  DEFAULT ((0)) FOR [paisPrefijo]
GO
ALTER TABLE [dbo].[PedidoTipo] ADD  DEFAULT ((0)) FOR [petiServicio]
GO
ALTER TABLE [dbo].[PedidoTipo] ADD  DEFAULT ((0)) FOR [petiMedico]
GO
ALTER TABLE [dbo].[PiezaDental] ADD  DEFAULT ((0)) FOR [pideInfante]
GO
ALTER TABLE [dbo].[PiezaDentalObjeto] ADD  DEFAULT ((0)) FOR [pdobSubCarpeta]
GO
ALTER TABLE [dbo].[PlantillaInformeRangoItem] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [piriHoraRetiro]
GO
ALTER TABLE [dbo].[Presupuesto] ADD  DEFAULT ((0)) FOR [prtiCodigo]
GO
ALTER TABLE [dbo].[PresupuestoItem] ADD  DEFAULT ((0)) FOR [pritImporteBaseCobertura]
GO
ALTER TABLE [dbo].[PresupuestoItem] ADD  DEFAULT ((0)) FOR [pritImporteBasePaciente]
GO
ALTER TABLE [dbo].[Procedimiento] ADD  DEFAULT ((0)) FOR [procQuirurgico]
GO
ALTER TABLE [dbo].[Procedimiento] ADD  DEFAULT ((0)) FOR [procInternacion]
GO
ALTER TABLE [dbo].[Procedimiento] ADD  DEFAULT ((0)) FOR [procTiempoEspera]
GO
ALTER TABLE [dbo].[Procedimiento] ADD  DEFAULT ((0)) FOR [procOcultoWeb]
GO
ALTER TABLE [dbo].[Procedimiento] ADD  DEFAULT ((0)) FOR [procMultiple]
GO
ALTER TABLE [dbo].[Procedimiento] ADD  DEFAULT ((0)) FOR [procEdadDesde]
GO
ALTER TABLE [dbo].[Procedimiento] ADD  DEFAULT ((0)) FOR [procEdadHasta]
GO
ALTER TABLE [dbo].[Procedimiento] ADD  DEFAULT ((0)) FOR [procVirtual]
GO
ALTER TABLE [dbo].[Procedimiento] ADD  DEFAULT ((0)) FOR [procInfusion]
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador] ADD  DEFAULT ((0)) FOR [prnoMinutosDesde]
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador] ADD  DEFAULT ((0)) FOR [prnoMinutosHasta]
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador] ADD  DEFAULT ((0)) FOR [prnoNoConvenida]
GO
ALTER TABLE [dbo].[ProcedimientoPreparacion] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [prprHoraDesde]
GO
ALTER TABLE [dbo].[ProcedimientoPreparacion] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [prprHoraHasta]
GO
ALTER TABLE [dbo].[ProtocoloInfusionCiclo] ADD  DEFAULT ((0)) FOR [pricDiaInicio]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDia] ADD  DEFAULT ((0)) FOR [pridDia]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDia] ADD  DEFAULT ((0)) FOR [pridMargenInicio]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador] ADD  DEFAULT ((0)) FOR [prdnVolumen]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador] ADD  DEFAULT ((0)) FOR [prdnTope]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador] ADD  DEFAULT ((0)) FOR [prdnAjustaClearence]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador] ADD  DEFAULT ((0)) FOR [prdnPreparacion]
GO
ALTER TABLE [dbo].[Provincia] ADD  DEFAULT ((0)) FOR [provDefault]
GO
ALTER TABLE [dbo].[Provincia] ADD  DEFAULT ((0)) FOR [provPrefijo]
GO
ALTER TABLE [dbo].[Quirofano] ADD  DEFAULT ((0)) FOR [quirDuracion]
GO
ALTER TABLE [dbo].[QuirofanoHorario] ADD  DEFAULT ((0)) FOR [quhoSoloMedicosAsignados]
GO
ALTER TABLE [dbo].[QuirofanoTurno] ADD  DEFAULT ((0)) FOR [quteCodigo]
GO
ALTER TABLE [dbo].[RecetaItem] ADD  DEFAULT ((0)) FOR [reitProlongado]
GO
ALTER TABLE [dbo].[RecetaItem] ADD  DEFAULT ((0)) FOR [reitImpresionIndividual]
GO
ALTER TABLE [dbo].[RecetaWeb] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [reweFechaSolicitud]
GO
ALTER TABLE [dbo].[RecetaWeb] ADD  DEFAULT ((0)) FOR [reweEnviaMail]
GO
ALTER TABLE [dbo].[RemitoEstadoTipo] ADD  DEFAULT ((0)) FOR [reetContabiliza]
GO
ALTER TABLE [dbo].[RemitoTipo] ADD  DEFAULT ((0)) FOR [retiServicio]
GO
ALTER TABLE [dbo].[RemitoTipo] ADD  DEFAULT ((0)) FOR [retiMedico]
GO
ALTER TABLE [dbo].[ReprogramacionCriterio] ADD  DEFAULT ((0)) FOR [recrEnviaMail]
GO
ALTER TABLE [dbo].[ReprogramacionCriterio] ADD  DEFAULT ((0)) FOR [recrEnviaWhatsApp]
GO
ALTER TABLE [dbo].[Sala] ADD  DEFAULT ((0)) FOR [salaVigente]
GO
ALTER TABLE [dbo].[SistemaVariable] ADD  DEFAULT ((0)) FOR [sivaOrden]
GO
ALTER TABLE [dbo].[SistemaVariable] ADD  DEFAULT ((0)) FOR [sivaSoloLectura]
GO
ALTER TABLE [dbo].[SistemaVinculadoEntidad] ADD  DEFAULT ((0)) FOR [siveActivo]
GO
ALTER TABLE [dbo].[SubEspecialidad] ADD  DEFAULT ((0)) FOR [suesEdadDesde]
GO
ALTER TABLE [dbo].[SubEspecialidad] ADD  DEFAULT ((0)) FOR [suesEdadHasta]
GO
ALTER TABLE [dbo].[Tag] ADD  DEFAULT ((0)) FOR [tagBloqueaCarga]
GO
ALTER TABLE [dbo].[Taller] ADD  DEFAULT ((0)) FOR [tallEstablecimientoSalud]
GO
ALTER TABLE [dbo].[Talonario] ADD  DEFAULT ((0)) FOR [ubicCodigo]
GO
ALTER TABLE [dbo].[Talonario] ADD  DEFAULT ((0)) FOR [taloNumeracionAfip]
GO
ALTER TABLE [dbo].[TalonarioFechaBloqueo] ADD  DEFAULT ((0)) FOR [tafbNoValidar]
GO
ALTER TABLE [dbo].[TemplateHcContenedor] ADD  DEFAULT ((0)) FOR [thcoFilas]
GO
ALTER TABLE [dbo].[TemplateHcContenedor] ADD  DEFAULT ((0)) FOR [thcoColumnas]
GO
ALTER TABLE [dbo].[TemplateHcContenedor] ADD  DEFAULT ((0)) FOR [thcoCollapsado]
GO
ALTER TABLE [dbo].[TemplateHcFiltro] ADD  DEFAULT ((0)) FOR [thchAmbulatorio]
GO
ALTER TABLE [dbo].[TemplateHcFiltro] ADD  DEFAULT ((0)) FOR [thchInternado]
GO
ALTER TABLE [dbo].[TemplateHcItem] ADD  DEFAULT ((0)) FOR [thciUnico]
GO
ALTER TABLE [dbo].[TipoArchivoPaciente] ADD  DEFAULT ((0)) FOR [tapaMuestraPortal]
GO
ALTER TABLE [dbo].[TipoArchivoPaciente] ADD  DEFAULT ((0)) FOR [tapaWebService]
GO
ALTER TABLE [dbo].[TipoArticulo] ADD  DEFAULT ((0)) FOR [tartRango]
GO
ALTER TABLE [dbo].[TipoCategoriaPaciente] ADD  DEFAULT ((0)) FOR [tcapSinCopagos]
GO
ALTER TABLE [dbo].[TipoCategoriaPaciente] ADD  DEFAULT ((0)) FOR [tcapSinPagoAnticipado]
GO
ALTER TABLE [dbo].[TipoCategoriaPaciente] ADD  DEFAULT ((0)) FOR [tcapVip]
GO
ALTER TABLE [dbo].[TipoColumnaNomenclador] ADD  DEFAULT ((0)) FOR [tcnoInforme]
GO
ALTER TABLE [dbo].[TipoComprobanteVenta] ADD  DEFAULT ((0)) FOR [tcveComprobanteCredito]
GO
ALTER TABLE [dbo].[TipoComprobanteVenta] ADD  DEFAULT ((0)) FOR [tcveImporteMaximo]
GO
ALTER TABLE [dbo].[TipoContratacion] ADD  DEFAULT ((0)) FOR [ivapCodigo]
GO
ALTER TABLE [dbo].[TipoRecibo] ADD  DEFAULT ((0)) FOR [trecCaja]
GO
ALTER TABLE [dbo].[TipoRecibo] ADD  DEFAULT ((0)) FOR [trecReciboContado]
GO
ALTER TABLE [dbo].[TipoUnidadMedida] ADD  DEFAULT ((0)) FOR [tumeActivo]
GO
ALTER TABLE [dbo].[TrackEntidad] ADD  DEFAULT ((0)) FOR [trenInformaApi]
GO
ALTER TABLE [dbo].[TrackEntidad] ADD  DEFAULT ((0)) FOR [trenConsumeApi]
GO
ALTER TABLE [dbo].[Turno] ADD  DEFAULT ((0)) FOR [turnCodigoPadre]
GO
ALTER TABLE [dbo].[Turno] ADD  DEFAULT ((0)) FOR [turnEntregaOrden]
GO
ALTER TABLE [dbo].[Turno] ADD  DEFAULT ((0)) FOR [turnBloqueado]
GO
ALTER TABLE [dbo].[Turno] ADD  DEFAULT ((0)) FOR [turnFueraHora]
GO
ALTER TABLE [dbo].[Turno] ADD  DEFAULT ((0)) FOR [turnEspontaneo]
GO
ALTER TABLE [dbo].[Turno] ADD  DEFAULT ((0)) FOR [turnHorarioLibre]
GO
ALTER TABLE [dbo].[Turno] ADD  DEFAULT ((0)) FOR [turnLlamadasDisplay]
GO
ALTER TABLE [dbo].[Turno] ADD  DEFAULT (newid()) FOR [turnGuid]
GO
ALTER TABLE [dbo].[TurnoAuditoria] ADD  DEFAULT ((0)) FOR [turnBloqueado]
GO
ALTER TABLE [dbo].[TurnoAuditoria] ADD  DEFAULT ((0)) FOR [turnFueraHora]
GO
ALTER TABLE [dbo].[TurnoAuditoria] ADD  DEFAULT ((0)) FOR [turnEspontaneo]
GO
ALTER TABLE [dbo].[TurnoAuditoria] ADD  DEFAULT ((0)) FOR [turnHorarioLibre]
GO
ALTER TABLE [dbo].[TurnoAuditoria] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [turnFechaAuditoria]
GO
ALTER TABLE [dbo].[TurnoAuditoria] ADD  DEFAULT ((0)) FOR [turnReprogramado]
GO
ALTER TABLE [dbo].[TurnoAuditoria] ADD  DEFAULT (newid()) FOR [tuauGuid]
GO
ALTER TABLE [dbo].[TurnoBloqueo] ADD  DEFAULT ((0)) FOR [tublHsLiberacion]
GO
ALTER TABLE [dbo].[TurnoBloqueo] ADD  DEFAULT ((0)) FOR [tubtCodigo]
GO
ALTER TABLE [dbo].[TurnoBloqueo] ADD  DEFAULT ((0)) FOR [tubtInactivo]
GO
ALTER TABLE [dbo].[TurnoEventoTipo] ADD  DEFAULT ((0)) FOR [tevtObservacion]
GO
ALTER TABLE [dbo].[TurnoSolicitud] ADD  DEFAULT (newid()) FOR [tusoGuid]
GO
ALTER TABLE [dbo].[Ubicacion] ADD  DEFAULT ((0)) FOR [ubicPublica]
GO
ALTER TABLE [dbo].[Ubicacion] ADD  DEFAULT ((0)) FOR [tideCodigo]
GO
ALTER TABLE [dbo].[UsuarioAcceso] ADD  DEFAULT ((0)) FOR [usacFavorito]
GO
ALTER TABLE [dbo].[Vacuna] ADD  DEFAULT ((0)) FOR [vacuCalendario]
GO
ALTER TABLE [dbo].[VacunaRangoEtario] ADD  DEFAULT ((0)) FOR [vareMesDesde]
GO
ALTER TABLE [dbo].[VacunaRangoEtario] ADD  DEFAULT ((0)) FOR [vareMesHasta]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT ((0)) FOR [coveCodigo]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT ((0)) FOR [ventEmisionDiferida]
GO
ALTER TABLE [dbo].[VentaCancelacion] ADD  DEFAULT ((0)) FOR [vecaRelacion]
GO
ALTER TABLE [dbo].[VentaItem] ADD  DEFAULT ((0)) FOR [nomeCodigo]
GO
ALTER TABLE [dbo].[Acceso]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Acceso_dbo.SistemaVinculado_siviCodigo] FOREIGN KEY([siviCodigo])
REFERENCES [dbo].[SistemaVinculado] ([siviCodigo])
GO
ALTER TABLE [dbo].[Acceso] CHECK CONSTRAINT [FK_dbo.Acceso_dbo.SistemaVinculado_siviCodigo]
GO
ALTER TABLE [dbo].[AccesoIdioma]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccesoIdioma_dbo.Acceso_acceCodigo] FOREIGN KEY([acceCodigo])
REFERENCES [dbo].[Acceso] ([acceCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccesoIdioma] CHECK CONSTRAINT [FK_dbo.AccesoIdioma_dbo.Acceso_acceCodigo]
GO
ALTER TABLE [dbo].[AccesoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccesoItem_dbo.Acceso_acceCodigoHijo] FOREIGN KEY([acceCodigoHijo])
REFERENCES [dbo].[Acceso] ([acceCodigo])
GO
ALTER TABLE [dbo].[AccesoItem] CHECK CONSTRAINT [FK_dbo.AccesoItem_dbo.Acceso_acceCodigoHijo]
GO
ALTER TABLE [dbo].[AccesoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AccesoItem_dbo.Acceso_acceCodigoPadre] FOREIGN KEY([acceCodigo])
REFERENCES [dbo].[Acceso] ([acceCodigo])
GO
ALTER TABLE [dbo].[AccesoItem] CHECK CONSTRAINT [FK_dbo.AccesoItem_dbo.Acceso_acceCodigoPadre]
GO
ALTER TABLE [dbo].[Agrupamiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Agrupamiento_dbo.AgrupamientoTipo_agtiCodigo] FOREIGN KEY([agtiCodigo])
REFERENCES [dbo].[AgrupamientoTipo] ([agtiCodigo])
GO
ALTER TABLE [dbo].[Agrupamiento] CHECK CONSTRAINT [FK_dbo.Agrupamiento_dbo.AgrupamientoTipo_agtiCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoCobertura_dbo.Agrupamiento_agruCodigo] FOREIGN KEY([agruCodigo])
REFERENCES [dbo].[Agrupamiento] ([agruCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgrupamientoCobertura] CHECK CONSTRAINT [FK_dbo.AgrupamientoCobertura_dbo.Agrupamiento_agruCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoCobertura_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgrupamientoCobertura] CHECK CONSTRAINT [FK_dbo.AgrupamientoCobertura_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoDiagnostico_dbo.Agrupamiento_agruCodigo] FOREIGN KEY([agruCodigo])
REFERENCES [dbo].[Agrupamiento] ([agruCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgrupamientoDiagnostico] CHECK CONSTRAINT [FK_dbo.AgrupamientoDiagnostico_dbo.Agrupamiento_agruCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoDiagnostico_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgrupamientoDiagnostico] CHECK CONSTRAINT [FK_dbo.AgrupamientoDiagnostico_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoGenerico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoGenerico_dbo.Agrupamiento_agruCodigo] FOREIGN KEY([agruCodigo])
REFERENCES [dbo].[Agrupamiento] ([agruCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgrupamientoGenerico] CHECK CONSTRAINT [FK_dbo.AgrupamientoGenerico_dbo.Agrupamiento_agruCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoGenerico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoGenerico_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[AgrupamientoGenerico] CHECK CONSTRAINT [FK_dbo.AgrupamientoGenerico_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoNomenclador_dbo.Agrupamiento_agruCodigo] FOREIGN KEY([agruCodigo])
REFERENCES [dbo].[Agrupamiento] ([agruCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgrupamientoNomenclador] CHECK CONSTRAINT [FK_dbo.AgrupamientoNomenclador_dbo.Agrupamiento_agruCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[AgrupamientoNomenclador] CHECK CONSTRAINT [FK_dbo.AgrupamientoNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoProcedimiento_dbo.Agrupamiento_agruCodigo] FOREIGN KEY([agruCodigo])
REFERENCES [dbo].[Agrupamiento] ([agruCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgrupamientoProcedimiento] CHECK CONSTRAINT [FK_dbo.AgrupamientoProcedimiento_dbo.Agrupamiento_agruCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[AgrupamientoProcedimiento] CHECK CONSTRAINT [FK_dbo.AgrupamientoProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoSistemaVariable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoSistemaVariable_dbo.Agrupamiento_agruCodigo] FOREIGN KEY([agruCodigo])
REFERENCES [dbo].[Agrupamiento] ([agruCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgrupamientoSistemaVariable] CHECK CONSTRAINT [FK_dbo.AgrupamientoSistemaVariable_dbo.Agrupamiento_agruCodigo]
GO
ALTER TABLE [dbo].[AgrupamientoSistemaVariable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AgrupamientoSistemaVariable_dbo.SistemaVariable_sivaCodigo] FOREIGN KEY([sivaCodigo])
REFERENCES [dbo].[SistemaVariable] ([sivaCodigo])
GO
ALTER TABLE [dbo].[AgrupamientoSistemaVariable] CHECK CONSTRAINT [FK_dbo.AgrupamientoSistemaVariable_dbo.SistemaVariable_sivaCodigo]
GO
ALTER TABLE [dbo].[Alimento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Alimento_dbo.AlimentoTipo_altiCodigo] FOREIGN KEY([altiCodigo])
REFERENCES [dbo].[AlimentoTipo] ([altiCodigo])
GO
ALTER TABLE [dbo].[Alimento] CHECK CONSTRAINT [FK_dbo.Alimento_dbo.AlimentoTipo_altiCodigo]
GO
ALTER TABLE [dbo].[AlimentoTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AlimentoTag_dbo.Alimento_alimCodigo] FOREIGN KEY([alimCodigo])
REFERENCES [dbo].[Alimento] ([alimCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AlimentoTag] CHECK CONSTRAINT [FK_dbo.AlimentoTag_dbo.Alimento_alimCodigo]
GO
ALTER TABLE [dbo].[AlimentoTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AlimentoTag_dbo.Tag_tagCodigo] FOREIGN KEY([tagCodigo])
REFERENCES [dbo].[Tag] ([tagCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AlimentoTag] CHECK CONSTRAINT [FK_dbo.AlimentoTag_dbo.Tag_tagCodigo]
GO
ALTER TABLE [dbo].[ApplicationExternalLoginClaim]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationExternalLoginClaim_dbo.ApplicationExternalLogin_IdExternalLogin] FOREIGN KEY([IdExternalLogin])
REFERENCES [dbo].[ApplicationExternalLogin] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationExternalLoginClaim] CHECK CONSTRAINT [FK_dbo.ApplicationExternalLoginClaim_dbo.ApplicationExternalLogin_IdExternalLogin]
GO
ALTER TABLE [dbo].[ApplicationGroupAcceso]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGroupAcceso_dbo.Acceso_acceCodigo] FOREIGN KEY([acceCodigo])
REFERENCES [dbo].[Acceso] ([acceCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationGroupAcceso] CHECK CONSTRAINT [FK_dbo.ApplicationGroupAcceso_dbo.Acceso_acceCodigo]
GO
ALTER TABLE [dbo].[ApplicationGroupAcceso]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGroupAcceso_dbo.AccesoItem_acitCodigo] FOREIGN KEY([acitCodigo])
REFERENCES [dbo].[AccesoItem] ([acitCodigo])
GO
ALTER TABLE [dbo].[ApplicationGroupAcceso] CHECK CONSTRAINT [FK_dbo.ApplicationGroupAcceso_dbo.AccesoItem_acitCodigo]
GO
ALTER TABLE [dbo].[ApplicationGroupAcceso]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGroupAcceso_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
GO
ALTER TABLE [dbo].[ApplicationGroupAcceso] CHECK CONSTRAINT [FK_dbo.ApplicationGroupAcceso_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[ApplicationGroupReporte]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGroupReporte_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
GO
ALTER TABLE [dbo].[ApplicationGroupReporte] CHECK CONSTRAINT [FK_dbo.ApplicationGroupReporte_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[ApplicationGroupReporte]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGroupReporte_dbo.ReporteSSRS_rssrCodigo] FOREIGN KEY([rssrCodigo])
REFERENCES [dbo].[ReporteSSRS] ([rssrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationGroupReporte] CHECK CONSTRAINT [FK_dbo.ApplicationGroupReporte_dbo.ReporteSSRS_rssrCodigo]
GO
ALTER TABLE [dbo].[ApplicationGroupRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGroupRole_dbo.AspNetRoles_ApplicationRoleId] FOREIGN KEY([ApplicationRoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationGroupRole] CHECK CONSTRAINT [FK_dbo.ApplicationGroupRole_dbo.AspNetRoles_ApplicationRoleId]
GO
ALTER TABLE [dbo].[ApplicationGroupRole]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGroupRoles_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationGroupRole] CHECK CONSTRAINT [FK_dbo.ApplicationGroupRoles_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[ApplicationGrupoComplemento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGrupoComplemento_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationGrupoComplemento] CHECK CONSTRAINT [FK_dbo.ApplicationGrupoComplemento_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[ApplicationGrupoComplemento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGrupoComplemento_dbo.QuirofanoTipoComplemento_qutcCodigo] FOREIGN KEY([qutcCodigo])
REFERENCES [dbo].[QuirofanoTipoComplemento] ([qutcCodigo])
GO
ALTER TABLE [dbo].[ApplicationGrupoComplemento] CHECK CONSTRAINT [FK_dbo.ApplicationGrupoComplemento_dbo.QuirofanoTipoComplemento_qutcCodigo]
GO
ALTER TABLE [dbo].[ApplicationGrupoPlantillaInforme]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGrupoPlantillaInforme_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
GO
ALTER TABLE [dbo].[ApplicationGrupoPlantillaInforme] CHECK CONSTRAINT [FK_dbo.ApplicationGrupoPlantillaInforme_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[ApplicationGrupoPlantillaInforme]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGrupoPlantillaInforme_dbo.PlantillaInforme_plinCodigo] FOREIGN KEY([plinCodigo])
REFERENCES [dbo].[PlantillaInforme] ([plinCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationGrupoPlantillaInforme] CHECK CONSTRAINT [FK_dbo.ApplicationGrupoPlantillaInforme_dbo.PlantillaInforme_plinCodigo]
GO
ALTER TABLE [dbo].[ApplicationUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserGroup_dbo.AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationUserGroup] CHECK CONSTRAINT [FK_dbo.ApplicationUserGroup_dbo.AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ApplicationUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserGroups_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationUserGroup] CHECK CONSTRAINT [FK_dbo.ApplicationUserGroups_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[Archivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Archivo_dbo.ArchivoTipo_artiCodigo] FOREIGN KEY([artiCodigo])
REFERENCES [dbo].[ArchivoTipo] ([artiCodigo])
GO
ALTER TABLE [dbo].[Archivo] CHECK CONSTRAINT [FK_dbo.Archivo_dbo.ArchivoTipo_artiCodigo]
GO
ALTER TABLE [dbo].[Archivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Archivo_dbo.AspNetUsers_archUsuario] FOREIGN KEY([archUsuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Archivo] CHECK CONSTRAINT [FK_dbo.Archivo_dbo.AspNetUsers_archUsuario]
GO
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Area_dbo.CentroCosto_cecoCodigo] FOREIGN KEY([cecoCodigo])
REFERENCES [dbo].[CentroCosto] ([cecoCodigo])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_dbo.Area_dbo.CentroCosto_cecoCodigo]
GO
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Area_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_dbo.Area_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Area_dbo.Sala_salaCodigo] FOREIGN KEY([salaCodigo])
REFERENCES [dbo].[Sala] ([salaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_dbo.Area_dbo.Sala_salaCodigo]
GO
ALTER TABLE [dbo].[ArticuloComercial]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloComercial_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[ArticuloComercial] CHECK CONSTRAINT [FK_dbo.ArticuloComercial_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[ArticuloComercial]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloComercial_dbo.Snomed_snomCodigo] FOREIGN KEY([snomCodigo])
REFERENCES [dbo].[Snomed] ([snomCodigo])
GO
ALTER TABLE [dbo].[ArticuloComercial] CHECK CONSTRAINT [FK_dbo.ArticuloComercial_dbo.Snomed_snomCodigo]
GO
ALTER TABLE [dbo].[ArticuloKitCompuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloKitCompuesto_dbo.ArticuloKit_arkiCodigo] FOREIGN KEY([arkiCodigo])
REFERENCES [dbo].[ArticuloKit] ([arkiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ArticuloKitCompuesto] CHECK CONSTRAINT [FK_dbo.ArticuloKitCompuesto_dbo.ArticuloKit_arkiCodigo]
GO
ALTER TABLE [dbo].[ArticuloKitCompuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloKitCompuesto_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[ArticuloKitCompuesto] CHECK CONSTRAINT [FK_dbo.ArticuloKitCompuesto_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[ArticuloKitCompuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloKitCompuesto_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[ArticuloKitCompuesto] CHECK CONSTRAINT [FK_dbo.ArticuloKitCompuesto_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[ArticuloSubFamilia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloSubFamilia_dbo.ArticuloFamilia_arfaCodigo] FOREIGN KEY([arfaCodigo])
REFERENCES [dbo].[ArticuloFamilia] ([arfaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ArticuloSubFamilia] CHECK CONSTRAINT [FK_dbo.ArticuloSubFamilia_dbo.ArticuloFamilia_arfaCodigo]
GO
ALTER TABLE [dbo].[ArticuloSubGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ArticuloSubGrupo_dbo.ArticuloGrupo_argrCodigo] FOREIGN KEY([argrCodigo])
REFERENCES [dbo].[ArticuloGrupo] ([argrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ArticuloSubGrupo] CHECK CONSTRAINT [FK_dbo.ArticuloSubGrupo_dbo.ArticuloGrupo_argrCodigo]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUsers_dbo.Persona_persCodigo] FOREIGN KEY([persCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_dbo.AspNetUsers_dbo.Persona_persCodigo]
GO
ALTER TABLE [dbo].[AutorizacionNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AutorizacionNomenclador_dbo.Autorizacion_autoCodigo] FOREIGN KEY([autoCodigo])
REFERENCES [dbo].[Autorizacion] ([autoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AutorizacionNomenclador] CHECK CONSTRAINT [FK_dbo.AutorizacionNomenclador_dbo.Autorizacion_autoCodigo]
GO
ALTER TABLE [dbo].[AutorizacionNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AutorizacionNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AutorizacionNomenclador] CHECK CONSTRAINT [FK_dbo.AutorizacionNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[AutorizacionNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AutorizacionNomenclador_dbo.TipoAutorizacion_tiauCodigo] FOREIGN KEY([tiauCodigo])
REFERENCES [dbo].[TipoAutorizacion] ([tiauCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AutorizacionNomenclador] CHECK CONSTRAINT [FK_dbo.AutorizacionNomenclador_dbo.TipoAutorizacion_tiauCodigo]
GO
ALTER TABLE [dbo].[AutorizacionPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AutorizacionPlan_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AutorizacionPlan] CHECK CONSTRAINT [FK_dbo.AutorizacionPlan_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[AutorizacionPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AutorizacionPlan_dbo.Autorizacion_autoCodigo] FOREIGN KEY([autoCodigo])
REFERENCES [dbo].[Autorizacion] ([autoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AutorizacionPlan] CHECK CONSTRAINT [FK_dbo.AutorizacionPlan_dbo.Autorizacion_autoCodigo]
GO
ALTER TABLE [dbo].[AutorizacionPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AutorizacionPlan_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AutorizacionPlan] CHECK CONSTRAINT [FK_dbo.AutorizacionPlan_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[Caja]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Caja_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Caja] CHECK CONSTRAINT [FK_dbo.Caja_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[Cama]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cama_dbo.Area_areaCodigo] FOREIGN KEY([areaCodigo])
REFERENCES [dbo].[Area] ([areaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cama] CHECK CONSTRAINT [FK_dbo.Cama_dbo.Area_areaCodigo]
GO
ALTER TABLE [dbo].[Cama]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cama_dbo.Habitacion_habiCodigo] FOREIGN KEY([habiCodigo])
REFERENCES [dbo].[Habitacion] ([habiCodigo])
GO
ALTER TABLE [dbo].[Cama] CHECK CONSTRAINT [FK_dbo.Cama_dbo.Habitacion_habiCodigo]
GO
ALTER TABLE [dbo].[Cama]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cama_dbo.NivelCuidado_nicuCodigo] FOREIGN KEY([nicuCodigo])
REFERENCES [dbo].[NivelCuidado] ([nicuCodigo])
GO
ALTER TABLE [dbo].[Cama] CHECK CONSTRAINT [FK_dbo.Cama_dbo.NivelCuidado_nicuCodigo]
GO
ALTER TABLE [dbo].[Cama]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cama_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[Cama] CHECK CONSTRAINT [FK_dbo.Cama_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[CamaBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CamaBloqueo_dbo.Cama_camaCodigo] FOREIGN KEY([camaCodigo])
REFERENCES [dbo].[Cama] ([camaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CamaBloqueo] CHECK CONSTRAINT [FK_dbo.CamaBloqueo_dbo.Cama_camaCodigo]
GO
ALTER TABLE [dbo].[CamaBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CamaBloqueo_dbo.CamaBloqueoMotivo_cabmCodigo] FOREIGN KEY([cabmCodigo])
REFERENCES [dbo].[CamaBloqueoMotivo] ([cabmCodigo])
GO
ALTER TABLE [dbo].[CamaBloqueo] CHECK CONSTRAINT [FK_dbo.CamaBloqueo_dbo.CamaBloqueoMotivo_cabmCodigo]
GO
ALTER TABLE [dbo].[CentroCostoConfiguracion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CentroCostoConfiguracion_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CentroCostoConfiguracion] CHECK CONSTRAINT [FK_dbo.CentroCostoConfiguracion_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[CentroCostoConfiguracion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CentroCostoConfiguracion_dbo.CentroCosto_cecoCodigo] FOREIGN KEY([cecoCodigo])
REFERENCES [dbo].[CentroCosto] ([cecoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CentroCostoConfiguracion] CHECK CONSTRAINT [FK_dbo.CentroCostoConfiguracion_dbo.CentroCosto_cecoCodigo]
GO
ALTER TABLE [dbo].[CentroCostoConfiguracion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CentroCostoConfiguracion_dbo.Especialidad_espeCodigo] FOREIGN KEY([espeCodigo])
REFERENCES [dbo].[Especialidad] ([espeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CentroCostoConfiguracion] CHECK CONSTRAINT [FK_dbo.CentroCostoConfiguracion_dbo.Especialidad_espeCodigo]
GO
ALTER TABLE [dbo].[Cheque]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cheque_dbo.Banco_bancCodigo] FOREIGN KEY([bancCodigo])
REFERENCES [dbo].[Banco] ([bancCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cheque] CHECK CONSTRAINT [FK_dbo.Cheque_dbo.Banco_bancCodigo]
GO
ALTER TABLE [dbo].[Cheque]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cheque_dbo.CuentaBancaria_cubaCodigo] FOREIGN KEY([cubaCodigo])
REFERENCES [dbo].[CuentaBancaria] ([cubaCodigo])
GO
ALTER TABLE [dbo].[Cheque] CHECK CONSTRAINT [FK_dbo.Cheque_dbo.CuentaBancaria_cubaCodigo]
GO
ALTER TABLE [dbo].[Cheque]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cheque_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cheque] CHECK CONSTRAINT [FK_dbo.Cheque_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[Cheque]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cheque_dbo.Persona_persCodigo] FOREIGN KEY([persCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[Cheque] CHECK CONSTRAINT [FK_dbo.Cheque_dbo.Persona_persCodigo]
GO
ALTER TABLE [dbo].[Chofer]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Chofer_dbo.Persona_chofCodigo] FOREIGN KEY([chofCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[Chofer] CHECK CONSTRAINT [FK_dbo.Chofer_dbo.Persona_chofCodigo]
GO
ALTER TABLE [dbo].[Cierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cierre_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[Cierre] CHECK CONSTRAINT [FK_dbo.Cierre_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[Cierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cierre_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[Cierre] CHECK CONSTRAINT [FK_dbo.Cierre_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[Cierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cierre_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
GO
ALTER TABLE [dbo].[Cierre] CHECK CONSTRAINT [FK_dbo.Cierre_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[Cierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cierre_dbo.TipoContratacion_tconCodigo] FOREIGN KEY([tconCodigo])
REFERENCES [dbo].[TipoContratacion] ([tconCodigo])
GO
ALTER TABLE [dbo].[Cierre] CHECK CONSTRAINT [FK_dbo.Cierre_dbo.TipoContratacion_tconCodigo]
GO
ALTER TABLE [dbo].[Cierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cierre_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Cierre] CHECK CONSTRAINT [FK_dbo.Cierre_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[Cobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cobertura_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cobertura] CHECK CONSTRAINT [FK_dbo.Cobertura_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[Cobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cobertura_dbo.Persona_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[Cobertura] CHECK CONSTRAINT [FK_dbo.Cobertura_dbo.Persona_cobeCodigo]
GO
ALTER TABLE [dbo].[Cobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cobertura_dbo.TipoCobertura_tcobCodigo] FOREIGN KEY([tcobCodigo])
REFERENCES [dbo].[TipoCobertura] ([tcobCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cobertura] CHECK CONSTRAINT [FK_dbo.Cobertura_dbo.TipoCobertura_tcobCodigo]
GO
ALTER TABLE [dbo].[Cobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cobertura_dbo.TipoNomenclador_tnomCodigo] FOREIGN KEY([tnomCodigo])
REFERENCES [dbo].[TipoNomenclador] ([tnomCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cobertura] CHECK CONSTRAINT [FK_dbo.Cobertura_dbo.TipoNomenclador_tnomCodigo]
GO
ALTER TABLE [dbo].[CoberturaAmbitoFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CoberturaAmbitoFacturacion_dbo.AmbitoFacturacion_amfaCodigo] FOREIGN KEY([amfaCodigo])
REFERENCES [dbo].[AmbitoFacturacion] ([amfaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CoberturaAmbitoFacturacion] CHECK CONSTRAINT [FK_dbo.CoberturaAmbitoFacturacion_dbo.AmbitoFacturacion_amfaCodigo]
GO
ALTER TABLE [dbo].[CoberturaAmbitoFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CoberturaAmbitoFacturacion_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CoberturaAmbitoFacturacion] CHECK CONSTRAINT [FK_dbo.CoberturaAmbitoFacturacion_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[Comida]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comida_dbo.ComidaTipo_cotiCodigo] FOREIGN KEY([cotiCodigo])
REFERENCES [dbo].[ComidaTipo] ([cotiCodigo])
GO
ALTER TABLE [dbo].[Comida] CHECK CONSTRAINT [FK_dbo.Comida_dbo.ComidaTipo_cotiCodigo]
GO
ALTER TABLE [dbo].[ComidaAlimento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ComidaAlimento_dbo.Alimento_alimCodigo] FOREIGN KEY([alimCodigo])
REFERENCES [dbo].[Alimento] ([alimCodigo])
GO
ALTER TABLE [dbo].[ComidaAlimento] CHECK CONSTRAINT [FK_dbo.ComidaAlimento_dbo.Alimento_alimCodigo]
GO
ALTER TABLE [dbo].[ComidaAlimento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ComidaAlimento_dbo.Comida_comiCodigo] FOREIGN KEY([comiCodigo])
REFERENCES [dbo].[Comida] ([comiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ComidaAlimento] CHECK CONSTRAINT [FK_dbo.ComidaAlimento_dbo.Comida_comiCodigo]
GO
ALTER TABLE [dbo].[ComidaTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ComidaTag_dbo.Comida_comiCodigo] FOREIGN KEY([comiCodigo])
REFERENCES [dbo].[Comida] ([comiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ComidaTag] CHECK CONSTRAINT [FK_dbo.ComidaTag_dbo.Comida_comiCodigo]
GO
ALTER TABLE [dbo].[ComidaTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ComidaTag_dbo.Tag_tagCodigo] FOREIGN KEY([tagCodigo])
REFERENCES [dbo].[Tag] ([tagCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ComidaTag] CHECK CONSTRAINT [FK_dbo.ComidaTag_dbo.Tag_tagCodigo]
GO
ALTER TABLE [dbo].[CondicionIVA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CondicionIVA_dbo.TipoDocumento_tdocCodigo] FOREIGN KEY([tdocCodigo])
REFERENCES [dbo].[TipoDocumento] ([tdocCodigo])
GO
ALTER TABLE [dbo].[CondicionIVA] CHECK CONSTRAINT [FK_dbo.CondicionIVA_dbo.TipoDocumento_tdocCodigo]
GO
ALTER TABLE [dbo].[Configuracion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Configuracion_dbo.TipoConfiguracion_tcofCodigo] FOREIGN KEY([tcofCodigo])
REFERENCES [dbo].[TipoConfiguracion] ([tcofCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Configuracion] CHECK CONSTRAINT [FK_dbo.Configuracion_dbo.TipoConfiguracion_tcofCodigo]
GO
ALTER TABLE [dbo].[Consultorio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Consultorio_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[Consultorio] CHECK CONSTRAINT [FK_dbo.Consultorio_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[Consultorio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Consultorio_dbo.CentroCosto_cecoCodigo] FOREIGN KEY([cecoCodigo])
REFERENCES [dbo].[CentroCosto] ([cecoCodigo])
GO
ALTER TABLE [dbo].[Consultorio] CHECK CONSTRAINT [FK_dbo.Consultorio_dbo.CentroCosto_cecoCodigo]
GO
ALTER TABLE [dbo].[Consultorio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Consultorio_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Consultorio] CHECK CONSTRAINT [FK_dbo.Consultorio_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[Consultorio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Consultorio_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Consultorio] CHECK CONSTRAINT [FK_dbo.Consultorio_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Contacto_dbo.Campana_campCodigo] FOREIGN KEY([campCodigo])
REFERENCES [dbo].[Campana] ([campCodigo])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FK_dbo.Contacto_dbo.Campana_campCodigo]
GO
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Contacto_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FK_dbo.Contacto_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[Convenio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Convenio_dbo.IVA_ivapCodigo] FOREIGN KEY([ivapCodigo])
REFERENCES [dbo].[IVA] ([ivapCodigo])
GO
ALTER TABLE [dbo].[Convenio] CHECK CONSTRAINT [FK_dbo.Convenio_dbo.IVA_ivapCodigo]
GO
ALTER TABLE [dbo].[Convenio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Convenio_dbo.Moneda_moneCodigo] FOREIGN KEY([moneCodigo])
REFERENCES [dbo].[Moneda] ([moneCodigo])
GO
ALTER TABLE [dbo].[Convenio] CHECK CONSTRAINT [FK_dbo.Convenio_dbo.Moneda_moneCodigo]
GO
ALTER TABLE [dbo].[Convenio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Convenio_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
GO
ALTER TABLE [dbo].[Convenio] CHECK CONSTRAINT [FK_dbo.Convenio_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.ArticuloSubFamilia_asufCodigo] FOREIGN KEY([asufCodigo])
REFERENCES [dbo].[ArticuloSubFamilia] ([asufCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice] CHECK CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.ArticuloSubFamilia_asufCodigo]
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.ArticuloSubGrupo_arsuCodigo] FOREIGN KEY([arsuCodigo])
REFERENCES [dbo].[ArticuloSubGrupo] ([arsuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice] CHECK CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.ArticuloSubGrupo_arsuCodigo]
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.Convenio_convCodigo] FOREIGN KEY([convCodigo])
REFERENCES [dbo].[Convenio] ([convCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice] CHECK CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.Convenio_convCodigo]
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice] CHECK CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.TipoAccionFarmacologica_tacfCodigo] FOREIGN KEY([tacfCodigo])
REFERENCES [dbo].[TipoAccionFarmacologica] ([tacfCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice] CHECK CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.TipoAccionFarmacologica_tacfCodigo]
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.TipoArticulo_tartCodigo] FOREIGN KEY([tartCodigo])
REFERENCES [dbo].[TipoArticulo] ([tartCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioArticuloIndice] CHECK CONSTRAINT [FK_dbo.ConvenioArticuloIndice_dbo.TipoArticulo_tartCodigo]
GO
ALTER TABLE [dbo].[ConvenioCapita]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioCapita_dbo.Convenio_convCodigo] FOREIGN KEY([convCodigo])
REFERENCES [dbo].[Convenio] ([convCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioCapita] CHECK CONSTRAINT [FK_dbo.ConvenioCapita_dbo.Convenio_convCodigo]
GO
ALTER TABLE [dbo].[ConvenioCapita]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioCapita_dbo.TipoContratacion_tconCodigo] FOREIGN KEY([tconCodigo])
REFERENCES [dbo].[TipoContratacion] ([tconCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioCapita] CHECK CONSTRAINT [FK_dbo.ConvenioCapita_dbo.TipoContratacion_tconCodigo]
GO
ALTER TABLE [dbo].[ConvenioConfiguracion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioConfiguracion_dbo.Convenio_convCodigo] FOREIGN KEY([convCodigo])
REFERENCES [dbo].[Convenio] ([convCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioConfiguracion] CHECK CONSTRAINT [FK_dbo.ConvenioConfiguracion_dbo.Convenio_convCodigo]
GO
ALTER TABLE [dbo].[ConvenioConfiguracion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioConfiguracion_dbo.TipoItemInclusion_tiinCodigo] FOREIGN KEY([tiinCodigo])
REFERENCES [dbo].[TipoItemInclusion] ([tiinCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioConfiguracion] CHECK CONSTRAINT [FK_dbo.ConvenioConfiguracion_dbo.TipoItemInclusion_tiinCodigo]
GO
ALTER TABLE [dbo].[ConvenioConfiguracion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioConfiguracion_dbo.TipoNomenclador_tnomCodigo] FOREIGN KEY([tnomCodigo])
REFERENCES [dbo].[TipoNomenclador] ([tnomCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioConfiguracion] CHECK CONSTRAINT [FK_dbo.ConvenioConfiguracion_dbo.TipoNomenclador_tnomCodigo]
GO
ALTER TABLE [dbo].[ConvenioConfiguracion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioConfiguracion_dbo.TipoValorNomenclador_tvnoCodigo] FOREIGN KEY([tvnoCodigo])
REFERENCES [dbo].[TipoValorNomenclador] ([tvnoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioConfiguracion] CHECK CONSTRAINT [FK_dbo.ConvenioConfiguracion_dbo.TipoValorNomenclador_tvnoCodigo]
GO
ALTER TABLE [dbo].[ConvenioModulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioModulo_dbo.Convenio_convCodigo] FOREIGN KEY([convCodigo])
REFERENCES [dbo].[Convenio] ([convCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioModulo] CHECK CONSTRAINT [FK_dbo.ConvenioModulo_dbo.Convenio_convCodigo]
GO
ALTER TABLE [dbo].[ConvenioModulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioModulo_dbo.ModuloVersion_moveCodigo] FOREIGN KEY([moveCodigo])
REFERENCES [dbo].[ModuloVersion] ([moveCodigo])
GO
ALTER TABLE [dbo].[ConvenioModulo] CHECK CONSTRAINT [FK_dbo.ConvenioModulo_dbo.ModuloVersion_moveCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomenclador_dbo.Convenio_convCodigo] FOREIGN KEY([convCodigo])
REFERENCES [dbo].[Convenio] ([convCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioNomenclador] CHECK CONSTRAINT [FK_dbo.ConvenioNomenclador_dbo.Convenio_convCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioNomenclador] CHECK CONSTRAINT [FK_dbo.ConvenioNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorArchivo_dbo.Convenio_convCodigo] FOREIGN KEY([convCodigo])
REFERENCES [dbo].[Convenio] ([convCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivo] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorArchivo_dbo.Convenio_convCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorArchivo_dbo.TipoNomenclador_tnomCodigo] FOREIGN KEY([tnomCodigo])
REFERENCES [dbo].[TipoNomenclador] ([tnomCodigo])
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivo] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorArchivo_dbo.TipoNomenclador_tnomCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorArchivoItem_dbo.ConvenioNomenclador_conoCodigo] FOREIGN KEY([conoCodigo])
REFERENCES [dbo].[ConvenioNomenclador] ([conoCodigo])
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivoItem] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorArchivoItem_dbo.ConvenioNomenclador_conoCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorArchivoItem_dbo.ConvenioNomencladorArchivo_cnarCodigo] FOREIGN KEY([cnarCodigo])
REFERENCES [dbo].[ConvenioNomencladorArchivo] ([cnarCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivoItem] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorArchivoItem_dbo.ConvenioNomencladorArchivo_cnarCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorArchivoItem_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[ConvenioNomencladorArchivoItem] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorArchivoItem_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorEntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorEntidadFacturable_dbo.ConvenioNomenclador_conoCodigo] FOREIGN KEY([conoCodigo])
REFERENCES [dbo].[ConvenioNomenclador] ([conoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioNomencladorEntidadFacturable] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorEntidadFacturable_dbo.ConvenioNomenclador_conoCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorEntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorEntidadFacturable_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
GO
ALTER TABLE [dbo].[ConvenioNomencladorEntidadFacturable] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorEntidadFacturable_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorPlan_dbo.ConvenioNomenclador_conoCodigo] FOREIGN KEY([conoCodigo])
REFERENCES [dbo].[ConvenioNomenclador] ([conoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioNomencladorPlan] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorPlan_dbo.ConvenioNomenclador_conoCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorPlan_dbo.Especialidad_espeCodigo] FOREIGN KEY([espeCodigo])
REFERENCES [dbo].[Especialidad] ([espeCodigo])
GO
ALTER TABLE [dbo].[ConvenioNomencladorPlan] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorPlan_dbo.Especialidad_espeCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorPlan_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[ConvenioNomencladorPlan] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorPlan_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorPlan_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioNomencladorPlan] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorPlan_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorValor_dbo.Convenio_convCodigo] FOREIGN KEY([convCodigo])
REFERENCES [dbo].[Convenio] ([convCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioNomencladorValor] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorValor_dbo.Convenio_convCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorValor_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[ConvenioNomencladorValor] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorValor_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorValor_dbo.TipoPrestacion_tpreCodigo] FOREIGN KEY([tpreCodigo])
REFERENCES [dbo].[TipoPrestacion] ([tpreCodigo])
GO
ALTER TABLE [dbo].[ConvenioNomencladorValor] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorValor_dbo.TipoPrestacion_tpreCodigo]
GO
ALTER TABLE [dbo].[ConvenioNomencladorValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioNomencladorValor_dbo.TipoValorNomenclador_tvnoCodigo] FOREIGN KEY([tvnoCodigo])
REFERENCES [dbo].[TipoValorNomenclador] ([tvnoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioNomencladorValor] CHECK CONSTRAINT [FK_dbo.ConvenioNomencladorValor_dbo.TipoValorNomenclador_tvnoCodigo]
GO
ALTER TABLE [dbo].[ConvenioPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioPlan_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioPlan] CHECK CONSTRAINT [FK_dbo.ConvenioPlan_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[ConvenioPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioPlan_dbo.CoberturaCategoriaTipo_coctCodigo] FOREIGN KEY([coctCodigo])
REFERENCES [dbo].[CoberturaCategoriaTipo] ([coctCodigo])
GO
ALTER TABLE [dbo].[ConvenioPlan] CHECK CONSTRAINT [FK_dbo.ConvenioPlan_dbo.CoberturaCategoriaTipo_coctCodigo]
GO
ALTER TABLE [dbo].[ConvenioPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioPlan_dbo.Convenio_convCodigo] FOREIGN KEY([convCodigo])
REFERENCES [dbo].[Convenio] ([convCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioPlan] CHECK CONSTRAINT [FK_dbo.ConvenioPlan_dbo.Convenio_convCodigo]
GO
ALTER TABLE [dbo].[ConvenioPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioPlan_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioPlan] CHECK CONSTRAINT [FK_dbo.ConvenioPlan_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[ConvenioPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioPlan_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioPlan] CHECK CONSTRAINT [FK_dbo.ConvenioPlan_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[ConvenioPlan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioPlan_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioPlan] CHECK CONSTRAINT [FK_dbo.ConvenioPlan_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalDerivador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalDerivador_dbo.ConvenioProfesional_coprCodigo] FOREIGN KEY([coprCodigo])
REFERENCES [dbo].[ConvenioProfesional] ([coprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioProfesionalDerivador] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalDerivador_dbo.ConvenioProfesional_coprCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalDerivador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalDerivador_dbo.Derivador_deriCodigo] FOREIGN KEY([deriCodigo])
REFERENCES [dbo].[Derivador] ([deriCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioProfesionalDerivador] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalDerivador_dbo.Derivador_deriCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalMedico_dbo.ConvenioProfesional_coprCodigo] FOREIGN KEY([coprCodigo])
REFERENCES [dbo].[ConvenioProfesional] ([coprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioProfesionalMedico] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalMedico_dbo.ConvenioProfesional_coprCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalMedico_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioProfesionalMedico] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalMedico_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.ConvenioProfesional_coprCodigo] FOREIGN KEY([coprCodigo])
REFERENCES [dbo].[ConvenioProfesional] ([coprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.ConvenioProfesional_coprCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.TipoColumnaNomenclador_tcnoCodigo] FOREIGN KEY([tcnoCodigo])
REFERENCES [dbo].[TipoColumnaNomenclador] ([tcnoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.TipoColumnaNomenclador_tcnoCodigo]
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[ConvenioProfesionalNomenclador] CHECK CONSTRAINT [FK_dbo.ConvenioProfesionalNomenclador_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[ConvenioUrgencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioUrgencia_dbo.Convenio_convCodigo] FOREIGN KEY([convCodigo])
REFERENCES [dbo].[Convenio] ([convCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioUrgencia] CHECK CONSTRAINT [FK_dbo.ConvenioUrgencia_dbo.Convenio_convCodigo]
GO
ALTER TABLE [dbo].[ConvenioUrgenciaPractica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioUrgenciaPractica_dbo.Agrupamiento_agruCodigo] FOREIGN KEY([agruCodigo])
REFERENCES [dbo].[Agrupamiento] ([agruCodigo])
GO
ALTER TABLE [dbo].[ConvenioUrgenciaPractica] CHECK CONSTRAINT [FK_dbo.ConvenioUrgenciaPractica_dbo.Agrupamiento_agruCodigo]
GO
ALTER TABLE [dbo].[ConvenioUrgenciaPractica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioUrgenciaPractica_dbo.ConvenioUrgencia_courCodigo] FOREIGN KEY([courCodigo])
REFERENCES [dbo].[ConvenioUrgencia] ([courCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ConvenioUrgenciaPractica] CHECK CONSTRAINT [FK_dbo.ConvenioUrgenciaPractica_dbo.ConvenioUrgencia_courCodigo]
GO
ALTER TABLE [dbo].[ConvenioUrgenciaPractica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ConvenioUrgenciaPractica_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[ConvenioUrgenciaPractica] CHECK CONSTRAINT [FK_dbo.ConvenioUrgenciaPractica_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[CuadroGrupoPropiedad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CuadroGrupoPropiedad_dbo.Cuadro_cuadCodigo] FOREIGN KEY([cuadCodigo])
REFERENCES [dbo].[Cuadro] ([cuadCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CuadroGrupoPropiedad] CHECK CONSTRAINT [FK_dbo.CuadroGrupoPropiedad_dbo.Cuadro_cuadCodigo]
GO
ALTER TABLE [dbo].[CuadroGrupoPropiedad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CuadroGrupoPropiedad_dbo.GrupoPropiedad_grprCodigo] FOREIGN KEY([grprCodigo])
REFERENCES [dbo].[GrupoPropiedad] ([grprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CuadroGrupoPropiedad] CHECK CONSTRAINT [FK_dbo.CuadroGrupoPropiedad_dbo.GrupoPropiedad_grprCodigo]
GO
ALTER TABLE [dbo].[CuentaBancaria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CuentaBancaria_dbo.Banco_bancCodigo] FOREIGN KEY([bancCodigo])
REFERENCES [dbo].[Banco] ([bancCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CuentaBancaria] CHECK CONSTRAINT [FK_dbo.CuentaBancaria_dbo.Banco_bancCodigo]
GO
ALTER TABLE [dbo].[CuentaBancaria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CuentaBancaria_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CuentaBancaria] CHECK CONSTRAINT [FK_dbo.CuentaBancaria_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[CuentaBancaria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CuentaBancaria_dbo.Moneda_moneCodigo] FOREIGN KEY([moneCodigo])
REFERENCES [dbo].[Moneda] ([moneCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CuentaBancaria] CHECK CONSTRAINT [FK_dbo.CuentaBancaria_dbo.Moneda_moneCodigo]
GO
ALTER TABLE [dbo].[Debito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Debito_dbo.AspNetUsers_debiUsuario] FOREIGN KEY([debiUsuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Debito] CHECK CONSTRAINT [FK_dbo.Debito_dbo.AspNetUsers_debiUsuario]
GO
ALTER TABLE [dbo].[Debito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Debito_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Debito] CHECK CONSTRAINT [FK_dbo.Debito_dbo.Venta_ventCodigo]
GO
ALTER TABLE [dbo].[DebitoConcepto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DebitoConcepto_dbo.Debito_debiCodigo] FOREIGN KEY([debiCodigo])
REFERENCES [dbo].[Debito] ([debiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DebitoConcepto] CHECK CONSTRAINT [FK_dbo.DebitoConcepto_dbo.Debito_debiCodigo]
GO
ALTER TABLE [dbo].[DebitoConcepto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DebitoConcepto_dbo.MotivoDebito_modeCodigo] FOREIGN KEY([modeCodigo])
REFERENCES [dbo].[MotivoDebito] ([modeCodigo])
GO
ALTER TABLE [dbo].[DebitoConcepto] CHECK CONSTRAINT [FK_dbo.DebitoConcepto_dbo.MotivoDebito_modeCodigo]
GO
ALTER TABLE [dbo].[DebitoConcepto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DebitoConcepto_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[DebitoConcepto] CHECK CONSTRAINT [FK_dbo.DebitoConcepto_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Departamento_dbo.Provincia_provCodigo] FOREIGN KEY([provCodigo])
REFERENCES [dbo].[Provincia] ([provCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_dbo.Departamento_dbo.Provincia_provCodigo]
GO
ALTER TABLE [dbo].[Deposito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Deposito_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deposito] CHECK CONSTRAINT [FK_dbo.Deposito_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[DepositoEstante]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoEstante_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DepositoEstante] CHECK CONSTRAINT [FK_dbo.DepositoEstante_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[DepositoEstanteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoEstanteNomenclador_dbo.DepositoEstante_deesCodigo] FOREIGN KEY([deesCodigo])
REFERENCES [dbo].[DepositoEstante] ([deesCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DepositoEstanteNomenclador] CHECK CONSTRAINT [FK_dbo.DepositoEstanteNomenclador_dbo.DepositoEstante_deesCodigo]
GO
ALTER TABLE [dbo].[DepositoEstanteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoEstanteNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[DepositoEstanteNomenclador] CHECK CONSTRAINT [FK_dbo.DepositoEstanteNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[DepositoGenerico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoGenerico_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DepositoGenerico] CHECK CONSTRAINT [FK_dbo.DepositoGenerico_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[DepositoGenerico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoGenerico_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[DepositoGenerico] CHECK CONSTRAINT [FK_dbo.DepositoGenerico_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[DepositoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoNomenclador_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DepositoNomenclador] CHECK CONSTRAINT [FK_dbo.DepositoNomenclador_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[DepositoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[DepositoNomenclador] CHECK CONSTRAINT [FK_dbo.DepositoNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[DepositoTipoArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoTipoArticulo_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DepositoTipoArticulo] CHECK CONSTRAINT [FK_dbo.DepositoTipoArticulo_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[DepositoTipoArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoTipoArticulo_dbo.TipoArticulo_tartCodigo] FOREIGN KEY([tartCodigo])
REFERENCES [dbo].[TipoArticulo] ([tartCodigo])
GO
ALTER TABLE [dbo].[DepositoTipoArticulo] CHECK CONSTRAINT [FK_dbo.DepositoTipoArticulo_dbo.TipoArticulo_tartCodigo]
GO
ALTER TABLE [dbo].[DepositoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoUsuario_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DepositoUsuario] CHECK CONSTRAINT [FK_dbo.DepositoUsuario_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[DepositoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoUsuario_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DepositoUsuario] CHECK CONSTRAINT [FK_dbo.DepositoUsuario_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[DepositoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoUsuario_dbo.PedidoTipo_petiCodigo] FOREIGN KEY([petiCodigo])
REFERENCES [dbo].[PedidoTipo] ([petiCodigo])
GO
ALTER TABLE [dbo].[DepositoUsuario] CHECK CONSTRAINT [FK_dbo.DepositoUsuario_dbo.PedidoTipo_petiCodigo]
GO
ALTER TABLE [dbo].[DepositoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DepositoUsuario_dbo.RemitoTipo_retiCodigo] FOREIGN KEY([retiCodigo])
REFERENCES [dbo].[RemitoTipo] ([retiCodigo])
GO
ALTER TABLE [dbo].[DepositoUsuario] CHECK CONSTRAINT [FK_dbo.DepositoUsuario_dbo.RemitoTipo_retiCodigo]
GO
ALTER TABLE [dbo].[Derivador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Derivador_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Derivador] CHECK CONSTRAINT [FK_dbo.Derivador_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[Derivador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Derivador_dbo.Provincia_provCodigo] FOREIGN KEY([provCodigo])
REFERENCES [dbo].[Provincia] ([provCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Derivador] CHECK CONSTRAINT [FK_dbo.Derivador_dbo.Provincia_provCodigo]
GO
ALTER TABLE [dbo].[Derivador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Derivador_dbo.TipoDerivador_tderCodigo] FOREIGN KEY([tderCodigo])
REFERENCES [dbo].[TipoDerivador] ([tderCodigo])
GO
ALTER TABLE [dbo].[Derivador] CHECK CONSTRAINT [FK_dbo.Derivador_dbo.TipoDerivador_tderCodigo]
GO
ALTER TABLE [dbo].[Diagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Diagnostico_dbo.Snomed_snomCodigo] FOREIGN KEY([snomCodigo])
REFERENCES [dbo].[Snomed] ([snomCodigo])
GO
ALTER TABLE [dbo].[Diagnostico] CHECK CONSTRAINT [FK_dbo.Diagnostico_dbo.Snomed_snomCodigo]
GO
ALTER TABLE [dbo].[Emergencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emergencia_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Emergencia] CHECK CONSTRAINT [FK_dbo.Emergencia_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[Emergencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emergencia_dbo.Chofer_chofCodigo] FOREIGN KEY([chofCodigo])
REFERENCES [dbo].[Chofer] ([chofCodigo])
GO
ALTER TABLE [dbo].[Emergencia] CHECK CONSTRAINT [FK_dbo.Emergencia_dbo.Chofer_chofCodigo]
GO
ALTER TABLE [dbo].[Emergencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emergencia_dbo.EmergenciaCodigo_emecCodigo] FOREIGN KEY([emecCodigo])
REFERENCES [dbo].[EmergenciaCodigo] ([emecCodigo])
GO
ALTER TABLE [dbo].[Emergencia] CHECK CONSTRAINT [FK_dbo.Emergencia_dbo.EmergenciaCodigo_emecCodigo]
GO
ALTER TABLE [dbo].[Emergencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emergencia_dbo.EmergenciaDestino_emdeCodigo] FOREIGN KEY([emdeCodigo])
REFERENCES [dbo].[EmergenciaDestino] ([emdeCodigo])
GO
ALTER TABLE [dbo].[Emergencia] CHECK CONSTRAINT [FK_dbo.Emergencia_dbo.EmergenciaDestino_emdeCodigo]
GO
ALTER TABLE [dbo].[Emergencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emergencia_dbo.EmergenciaSintoma_emsiCodigo] FOREIGN KEY([emsiCodigo])
REFERENCES [dbo].[EmergenciaSintoma] ([emsiCodigo])
GO
ALTER TABLE [dbo].[Emergencia] CHECK CONSTRAINT [FK_dbo.Emergencia_dbo.EmergenciaSintoma_emsiCodigo]
GO
ALTER TABLE [dbo].[Emergencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emergencia_dbo.Localidad_locaCodigo] FOREIGN KEY([locaCodigo])
REFERENCES [dbo].[Localidad] ([locaCodigo])
GO
ALTER TABLE [dbo].[Emergencia] CHECK CONSTRAINT [FK_dbo.Emergencia_dbo.Localidad_locaCodigo]
GO
ALTER TABLE [dbo].[Emergencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emergencia_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Emergencia] CHECK CONSTRAINT [FK_dbo.Emergencia_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[Emergencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emergencia_dbo.Movil_moviCodigo] FOREIGN KEY([moviCodigo])
REFERENCES [dbo].[Movil] ([moviCodigo])
GO
ALTER TABLE [dbo].[Emergencia] CHECK CONSTRAINT [FK_dbo.Emergencia_dbo.Movil_moviCodigo]
GO
ALTER TABLE [dbo].[Emergencia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Emergencia_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Emergencia] CHECK CONSTRAINT [FK_dbo.Emergencia_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[EmergenciaArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmergenciaArchivo_dbo.Emergencia_emerCodigo] FOREIGN KEY([emerCodigo])
REFERENCES [dbo].[Emergencia] ([emerCodigo])
GO
ALTER TABLE [dbo].[EmergenciaArchivo] CHECK CONSTRAINT [FK_dbo.EmergenciaArchivo_dbo.Emergencia_emerCodigo]
GO
ALTER TABLE [dbo].[EmergenciaDestino]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmergenciaDestino_dbo.Localidad_locaCodigo] FOREIGN KEY([locaCodigo])
REFERENCES [dbo].[Localidad] ([locaCodigo])
GO
ALTER TABLE [dbo].[EmergenciaDestino] CHECK CONSTRAINT [FK_dbo.EmergenciaDestino_dbo.Localidad_locaCodigo]
GO
ALTER TABLE [dbo].[EmergenciaPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmergenciaPaciente_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
GO
ALTER TABLE [dbo].[EmergenciaPaciente] CHECK CONSTRAINT [FK_dbo.EmergenciaPaciente_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[EmergenciaPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmergenciaPaciente_dbo.Emergencia_emerCodigo] FOREIGN KEY([emerCodigo])
REFERENCES [dbo].[Emergencia] ([emerCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmergenciaPaciente] CHECK CONSTRAINT [FK_dbo.EmergenciaPaciente_dbo.Emergencia_emerCodigo]
GO
ALTER TABLE [dbo].[EmergenciaPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmergenciaPaciente_dbo.EmergenciaCodigo_emecCodigo] FOREIGN KEY([emecCodigo])
REFERENCES [dbo].[EmergenciaCodigo] ([emecCodigo])
GO
ALTER TABLE [dbo].[EmergenciaPaciente] CHECK CONSTRAINT [FK_dbo.EmergenciaPaciente_dbo.EmergenciaCodigo_emecCodigo]
GO
ALTER TABLE [dbo].[EmergenciaPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmergenciaPaciente_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[EmergenciaPaciente] CHECK CONSTRAINT [FK_dbo.EmergenciaPaciente_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[EmergenciaPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmergenciaPaciente_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[EmergenciaPaciente] CHECK CONSTRAINT [FK_dbo.EmergenciaPaciente_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[EmergenciaSintoma]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmergenciaSintoma_dbo.EmergenciaCodigo_emecCodigo] FOREIGN KEY([emecCodigo])
REFERENCES [dbo].[EmergenciaCodigo] ([emecCodigo])
GO
ALTER TABLE [dbo].[EmergenciaSintoma] CHECK CONSTRAINT [FK_dbo.EmergenciaSintoma_dbo.EmergenciaCodigo_emecCodigo]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Empresa_dbo.CondicionIVA_coivCodigo] FOREIGN KEY([coivCodigo])
REFERENCES [dbo].[CondicionIVA] ([coivCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_dbo.Empresa_dbo.CondicionIVA_coivCodigo]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Empresa_dbo.CondicionVenta_CondicionVenta_coveCodigo] FOREIGN KEY([CondicionVenta_coveCodigo])
REFERENCES [dbo].[CondicionVenta] ([coveCodigo])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_dbo.Empresa_dbo.CondicionVenta_CondicionVenta_coveCodigo]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Empresa_dbo.Pais_paisCodigo] FOREIGN KEY([paisCodigo])
REFERENCES [dbo].[Pais] ([paisCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_dbo.Empresa_dbo.Pais_paisCodigo]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Empresa_dbo.Provincia_provCodigo] FOREIGN KEY([provCodigo])
REFERENCES [dbo].[Provincia] ([provCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_dbo.Empresa_dbo.Provincia_provCodigo]
GO
ALTER TABLE [dbo].[EmpresaTipoTributo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmpresaTipoTributo_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpresaTipoTributo] CHECK CONSTRAINT [FK_dbo.EmpresaTipoTributo_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[EmpresaTipoTributo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmpresaTipoTributo_dbo.TipoTributo_titrCodigo] FOREIGN KEY([titrCodigo])
REFERENCES [dbo].[TipoTributo] ([titrCodigo])
GO
ALTER TABLE [dbo].[EmpresaTipoTributo] CHECK CONSTRAINT [FK_dbo.EmpresaTipoTributo_dbo.TipoTributo_titrCodigo]
GO
ALTER TABLE [dbo].[EmpresaToken]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmpresaToken_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpresaToken] CHECK CONSTRAINT [FK_dbo.EmpresaToken_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[EmpresaUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmpresaUbicacion_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpresaUbicacion] CHECK CONSTRAINT [FK_dbo.EmpresaUbicacion_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[EmpresaUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmpresaUbicacion_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpresaUbicacion] CHECK CONSTRAINT [FK_dbo.EmpresaUbicacion_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[EmpresaUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmpresaUbicacion_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpresaUbicacion] CHECK CONSTRAINT [FK_dbo.EmpresaUbicacion_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[Enfoque]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Enfoque_dbo.Campana_campCodigo] FOREIGN KEY([campCodigo])
REFERENCES [dbo].[Campana] ([campCodigo])
GO
ALTER TABLE [dbo].[Enfoque] CHECK CONSTRAINT [FK_dbo.Enfoque_dbo.Campana_campCodigo]
GO
ALTER TABLE [dbo].[EnfoqueRespuesta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnfoqueRespuesta_dbo.Enfoque_enfoCodigo] FOREIGN KEY([enfoCodigo])
REFERENCES [dbo].[Enfoque] ([enfoCodigo])
GO
ALTER TABLE [dbo].[EnfoqueRespuesta] CHECK CONSTRAINT [FK_dbo.EnfoqueRespuesta_dbo.Enfoque_enfoCodigo]
GO
ALTER TABLE [dbo].[EnfoqueRespuesta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnfoqueRespuesta_dbo.Enfoque_enfoCodigoNuevo] FOREIGN KEY([enfoCodigoNuevo])
REFERENCES [dbo].[Enfoque] ([enfoCodigo])
GO
ALTER TABLE [dbo].[EnfoqueRespuesta] CHECK CONSTRAINT [FK_dbo.EnfoqueRespuesta_dbo.Enfoque_enfoCodigoNuevo]
GO
ALTER TABLE [dbo].[EnfoqueUsuario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnfoqueUsuario_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[EnfoqueUsuario] CHECK CONSTRAINT [FK_dbo.EnfoqueUsuario_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[EnfoqueUsuario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EnfoqueUsuario_dbo.Enfoque_enfoCodigo] FOREIGN KEY([enfoCodigo])
REFERENCES [dbo].[Enfoque] ([enfoCodigo])
GO
ALTER TABLE [dbo].[EnfoqueUsuario] CHECK CONSTRAINT [FK_dbo.EnfoqueUsuario_dbo.Enfoque_enfoCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturable_dbo.CondicionIVA_coivCodigo] FOREIGN KEY([coivCodigo])
REFERENCES [dbo].[CondicionIVA] ([coivCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntidadFacturable] CHECK CONSTRAINT [FK_dbo.EntidadFacturable_dbo.CondicionIVA_coivCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturable_dbo.CondicionVenta_coveCodigo] FOREIGN KEY([coveCodigo])
REFERENCES [dbo].[CondicionVenta] ([coveCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntidadFacturable] CHECK CONSTRAINT [FK_dbo.EntidadFacturable_dbo.CondicionVenta_coveCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturable_dbo.CondicionVenta_coveCodigoPyme] FOREIGN KEY([coveCodigoPyme])
REFERENCES [dbo].[CondicionVenta] ([coveCodigo])
GO
ALTER TABLE [dbo].[EntidadFacturable] CHECK CONSTRAINT [FK_dbo.EntidadFacturable_dbo.CondicionVenta_coveCodigoPyme]
GO
ALTER TABLE [dbo].[EntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturable_dbo.Pais_paisCodigo] FOREIGN KEY([paisCodigo])
REFERENCES [dbo].[Pais] ([paisCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntidadFacturable] CHECK CONSTRAINT [FK_dbo.EntidadFacturable_dbo.Pais_paisCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturable_dbo.Provincia_provCodigo] FOREIGN KEY([provCodigo])
REFERENCES [dbo].[Provincia] ([provCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntidadFacturable] CHECK CONSTRAINT [FK_dbo.EntidadFacturable_dbo.Provincia_provCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturable_dbo.TipoDocumento_tdocCodigo] FOREIGN KEY([tdocCodigo])
REFERENCES [dbo].[TipoDocumento] ([tdocCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntidadFacturable] CHECK CONSTRAINT [FK_dbo.EntidadFacturable_dbo.TipoDocumento_tdocCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturable_dbo.TipoPersona_tperCodigo] FOREIGN KEY([tperCodigo])
REFERENCES [dbo].[TipoPersona] ([tperCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntidadFacturable] CHECK CONSTRAINT [FK_dbo.EntidadFacturable_dbo.TipoPersona_tperCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturableAlicuota]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturableAlicuota_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntidadFacturableAlicuota] CHECK CONSTRAINT [FK_dbo.EntidadFacturableAlicuota_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturableAlicuota]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturableAlicuota_dbo.TipoTributo_titrCodigo] FOREIGN KEY([titrCodigo])
REFERENCES [dbo].[TipoTributo] ([titrCodigo])
GO
ALTER TABLE [dbo].[EntidadFacturableAlicuota] CHECK CONSTRAINT [FK_dbo.EntidadFacturableAlicuota_dbo.TipoTributo_titrCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturableExencion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturableExencion_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntidadFacturableExencion] CHECK CONSTRAINT [FK_dbo.EntidadFacturableExencion_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturableExencion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturableExencion_dbo.TipoTributo_titrCodigo] FOREIGN KEY([titrCodigo])
REFERENCES [dbo].[TipoTributo] ([titrCodigo])
GO
ALTER TABLE [dbo].[EntidadFacturableExencion] CHECK CONSTRAINT [FK_dbo.EntidadFacturableExencion_dbo.TipoTributo_titrCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturablePersona]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturablePersona_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntidadFacturablePersona] CHECK CONSTRAINT [FK_dbo.EntidadFacturablePersona_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturablePersona]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturablePersona_dbo.Persona_persCodigo] FOREIGN KEY([persCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[EntidadFacturablePersona] CHECK CONSTRAINT [FK_dbo.EntidadFacturablePersona_dbo.Persona_persCodigo]
GO
ALTER TABLE [dbo].[EntidadFacturablePlantilla]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntidadFacturablePlantilla_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntidadFacturablePlantilla] CHECK CONSTRAINT [FK_dbo.EntidadFacturablePlantilla_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.EntradaIndicacion_eninCodigoOrigen] FOREIGN KEY([eninCodigoOrigen])
REFERENCES [dbo].[EntradaIndicacion] ([eninCodigo])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.EntradaIndicacion_eninCodigoOrigen]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.Especialidad_espeCodigo] FOREIGN KEY([espeCodigo])
REFERENCES [dbo].[Especialidad] ([espeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.Especialidad_espeCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.GrupoTipo_grtiCodigo] FOREIGN KEY([grtiCodigo])
REFERENCES [dbo].[GrupoTipo] ([grtiCodigo])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.GrupoTipo_grtiCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.Medico_mediCodigoAuditoria] FOREIGN KEY([mediCodigoAuditoria])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.Medico_mediCodigoAuditoria]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.PacientePuesto_papuCodigo] FOREIGN KEY([papuCodigo])
REFERENCES [dbo].[PacientePuesto] ([papuCodigo])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.PacientePuesto_papuCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.QuirofanoTurno_qutuCodigo] FOREIGN KEY([qutuCodigo])
REFERENCES [dbo].[QuirofanoTurno] ([qutuCodigo])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.QuirofanoTurno_qutuCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.Taller_tallCodigo] FOREIGN KEY([tallCodigo])
REFERENCES [dbo].[Taller] ([tallCodigo])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.Taller_tallCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.Turno_turnCodigo] FOREIGN KEY([turnCodigo])
REFERENCES [dbo].[Turno] ([turnCodigo])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.Turno_turnCodigo]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Entrada_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [FK_dbo.Entrada_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[EntradaBalance]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaBalance_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaBalance] CHECK CONSTRAINT [FK_dbo.EntradaBalance_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[EntradaBalance]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaBalance_dbo.TipoItemBalance_tibaCodigo] FOREIGN KEY([tibaCodigo])
REFERENCES [dbo].[TipoItemBalance] ([tibaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaBalance] CHECK CONSTRAINT [FK_dbo.EntradaBalance_dbo.TipoItemBalance_tibaCodigo]
GO
ALTER TABLE [dbo].[EntradaBalanceCierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaBalanceCierre_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaBalanceCierre] CHECK CONSTRAINT [FK_dbo.EntradaBalanceCierre_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[EntradaDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaDiagnostico_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaDiagnostico] CHECK CONSTRAINT [FK_dbo.EntradaDiagnostico_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[EntradaDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaDiagnostico_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaDiagnostico] CHECK CONSTRAINT [FK_dbo.EntradaDiagnostico_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[EntradaGrupoOpcion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaGrupoOpcion_dbo.EntradaGrupoPropiedad_engpCodigo] FOREIGN KEY([engpCodigo])
REFERENCES [dbo].[EntradaGrupoPropiedad] ([engpCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaGrupoOpcion] CHECK CONSTRAINT [FK_dbo.EntradaGrupoOpcion_dbo.EntradaGrupoPropiedad_engpCodigo]
GO
ALTER TABLE [dbo].[EntradaGrupoOpcion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaGrupoOpcion_dbo.GrupoPropiedadOpcion_grpoCodigo] FOREIGN KEY([grpoCodigo])
REFERENCES [dbo].[GrupoPropiedadOpcion] ([grpoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaGrupoOpcion] CHECK CONSTRAINT [FK_dbo.EntradaGrupoOpcion_dbo.GrupoPropiedadOpcion_grpoCodigo]
GO
ALTER TABLE [dbo].[EntradaGrupoPropiedad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaGrupoPropiedad_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaGrupoPropiedad] CHECK CONSTRAINT [FK_dbo.EntradaGrupoPropiedad_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[EntradaGrupoPropiedad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaGrupoPropiedad_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaGrupoPropiedad] CHECK CONSTRAINT [FK_dbo.EntradaGrupoPropiedad_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[EntradaGrupoPropiedad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaGrupoPropiedad_dbo.GrupoPropiedad_grprCodigo] FOREIGN KEY([grprCodigo])
REFERENCES [dbo].[GrupoPropiedad] ([grprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaGrupoPropiedad] CHECK CONSTRAINT [FK_dbo.EntradaGrupoPropiedad_dbo.GrupoPropiedad_grprCodigo]
GO
ALTER TABLE [dbo].[EntradaIndicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaIndicacion_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaIndicacion] CHECK CONSTRAINT [FK_dbo.EntradaIndicacion_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[EntradaIndicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaIndicacion_dbo.EntradaIndicacion_eninOrigen] FOREIGN KEY([eninOrigen])
REFERENCES [dbo].[EntradaIndicacion] ([eninCodigo])
GO
ALTER TABLE [dbo].[EntradaIndicacion] CHECK CONSTRAINT [FK_dbo.EntradaIndicacion_dbo.EntradaIndicacion_eninOrigen]
GO
ALTER TABLE [dbo].[EntradaIndicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaIndicacion_dbo.Indicacion_indiCodigo] FOREIGN KEY([indiCodigo])
REFERENCES [dbo].[Indicacion] ([indiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaIndicacion] CHECK CONSTRAINT [FK_dbo.EntradaIndicacion_dbo.Indicacion_indiCodigo]
GO
ALTER TABLE [dbo].[EntradaIndicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaIndicacion_dbo.IndicacionFrecuencia_infrCodigo] FOREIGN KEY([infrCodigo])
REFERENCES [dbo].[IndicacionFrecuencia] ([infrCodigo])
GO
ALTER TABLE [dbo].[EntradaIndicacion] CHECK CONSTRAINT [FK_dbo.EntradaIndicacion_dbo.IndicacionFrecuencia_infrCodigo]
GO
ALTER TABLE [dbo].[EntradaIndicacionEvento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaIndicacionEvento_dbo.EntradaIndicacion_eninCodigo] FOREIGN KEY([eninCodigo])
REFERENCES [dbo].[EntradaIndicacion] ([eninCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaIndicacionEvento] CHECK CONSTRAINT [FK_dbo.EntradaIndicacionEvento_dbo.EntradaIndicacion_eninCodigo]
GO
ALTER TABLE [dbo].[EntradaIndicacionEvento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaIndicacionEvento_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[EntradaIndicacionEvento] CHECK CONSTRAINT [FK_dbo.EntradaIndicacionEvento_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[EntradaMedicamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaMedicamento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[EntradaMedicamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.EntradaIndicacion_eninCodigo] FOREIGN KEY([eninCodigo])
REFERENCES [dbo].[EntradaIndicacion] ([eninCodigo])
GO
ALTER TABLE [dbo].[EntradaMedicamento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.EntradaIndicacion_eninCodigo]
GO
ALTER TABLE [dbo].[EntradaMedicamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.EntradaMedicamento_enmeOrigen] FOREIGN KEY([enmeOrigen])
REFERENCES [dbo].[EntradaMedicamento] ([enmeCodigo])
GO
ALTER TABLE [dbo].[EntradaMedicamento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.EntradaMedicamento_enmeOrigen]
GO
ALTER TABLE [dbo].[EntradaMedicamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.EntradaMedicamento_enmePadre] FOREIGN KEY([enmePadre])
REFERENCES [dbo].[EntradaMedicamento] ([enmeCodigo])
GO
ALTER TABLE [dbo].[EntradaMedicamento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.EntradaMedicamento_enmePadre]
GO
ALTER TABLE [dbo].[EntradaMedicamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaMedicamento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[EntradaMedicamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.MedicamentoEspecificacion_meesCodigo] FOREIGN KEY([meesCodigo])
REFERENCES [dbo].[MedicamentoEspecificacion] ([meesCodigo])
GO
ALTER TABLE [dbo].[EntradaMedicamento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.MedicamentoEspecificacion_meesCodigo]
GO
ALTER TABLE [dbo].[EntradaMedicamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.MedicamentoFrecuencia_mefrCodigo] FOREIGN KEY([mefrCodigo])
REFERENCES [dbo].[MedicamentoFrecuencia] ([mefrCodigo])
GO
ALTER TABLE [dbo].[EntradaMedicamento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.MedicamentoFrecuencia_mefrCodigo]
GO
ALTER TABLE [dbo].[EntradaMedicamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.MedicamentoVia_meviCodigo] FOREIGN KEY([meviCodigo])
REFERENCES [dbo].[MedicamentoVia] ([meviCodigo])
GO
ALTER TABLE [dbo].[EntradaMedicamento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.MedicamentoVia_meviCodigo]
GO
ALTER TABLE [dbo].[EntradaMedicamento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.TipoUnidadMedida_tumeCodigo] FOREIGN KEY([tumeCodigo])
REFERENCES [dbo].[TipoUnidadMedida] ([tumeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaMedicamento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamento_dbo.TipoUnidadMedida_tumeCodigo]
GO
ALTER TABLE [dbo].[EntradaMedicamentoEvento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamentoEvento_dbo.EntradaMedicamento_enmeCodigo] FOREIGN KEY([enmeCodigo])
REFERENCES [dbo].[EntradaMedicamento] ([enmeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaMedicamentoEvento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamentoEvento_dbo.EntradaMedicamento_enmeCodigo]
GO
ALTER TABLE [dbo].[EntradaMedicamentoEvento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMedicamentoEvento_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[EntradaMedicamentoEvento] CHECK CONSTRAINT [FK_dbo.EntradaMedicamentoEvento_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[EntradaMenu]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMenu_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
GO
ALTER TABLE [dbo].[EntradaMenu] CHECK CONSTRAINT [FK_dbo.EntradaMenu_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[EntradaMenuExclusion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMenuExclusion_dbo.Alimento_alimCodigo] FOREIGN KEY([alimCodigo])
REFERENCES [dbo].[Alimento] ([alimCodigo])
GO
ALTER TABLE [dbo].[EntradaMenuExclusion] CHECK CONSTRAINT [FK_dbo.EntradaMenuExclusion_dbo.Alimento_alimCodigo]
GO
ALTER TABLE [dbo].[EntradaMenuExclusion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMenuExclusion_dbo.Comida_comiCodigo] FOREIGN KEY([comiCodigo])
REFERENCES [dbo].[Comida] ([comiCodigo])
GO
ALTER TABLE [dbo].[EntradaMenuExclusion] CHECK CONSTRAINT [FK_dbo.EntradaMenuExclusion_dbo.Comida_comiCodigo]
GO
ALTER TABLE [dbo].[EntradaMenuExclusion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMenuExclusion_dbo.EntradaMenu_enmnCodigo] FOREIGN KEY([enmnCodigo])
REFERENCES [dbo].[EntradaMenu] ([enmnCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaMenuExclusion] CHECK CONSTRAINT [FK_dbo.EntradaMenuExclusion_dbo.EntradaMenu_enmnCodigo]
GO
ALTER TABLE [dbo].[EntradaMenuItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMenuItem_dbo.Comida_comiCodigo] FOREIGN KEY([comiCodigo])
REFERENCES [dbo].[Comida] ([comiCodigo])
GO
ALTER TABLE [dbo].[EntradaMenuItem] CHECK CONSTRAINT [FK_dbo.EntradaMenuItem_dbo.Comida_comiCodigo]
GO
ALTER TABLE [dbo].[EntradaMenuItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMenuItem_dbo.EntradaMenu_enmnCodigo] FOREIGN KEY([enmnCodigo])
REFERENCES [dbo].[EntradaMenu] ([enmnCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaMenuItem] CHECK CONSTRAINT [FK_dbo.EntradaMenuItem_dbo.EntradaMenu_enmnCodigo]
GO
ALTER TABLE [dbo].[EntradaMenuItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMenuItem_dbo.Menu_menuCodigo] FOREIGN KEY([menuCodigo])
REFERENCES [dbo].[Menu] ([menuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaMenuItem] CHECK CONSTRAINT [FK_dbo.EntradaMenuItem_dbo.Menu_menuCodigo]
GO
ALTER TABLE [dbo].[EntradaMenuItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaMenuItem_dbo.MenuTipo_metiCodigo] FOREIGN KEY([metiCodigo])
REFERENCES [dbo].[MenuTipo] ([metiCodigo])
GO
ALTER TABLE [dbo].[EntradaMenuItem] CHECK CONSTRAINT [FK_dbo.EntradaMenuItem_dbo.MenuTipo_metiCodigo]
GO
ALTER TABLE [dbo].[EntradaProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProcedimiento_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaProcedimiento] CHECK CONSTRAINT [FK_dbo.EntradaProcedimiento_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[EntradaProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProcedimiento_dbo.EntradaIndicacion_eninCodigo] FOREIGN KEY([eninCodigo])
REFERENCES [dbo].[EntradaIndicacion] ([eninCodigo])
GO
ALTER TABLE [dbo].[EntradaProcedimiento] CHECK CONSTRAINT [FK_dbo.EntradaProcedimiento_dbo.EntradaIndicacion_eninCodigo]
GO
ALTER TABLE [dbo].[EntradaProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProcedimiento_dbo.PacienteOdontogramaItem_paoiCodigo] FOREIGN KEY([paoiCodigo])
REFERENCES [dbo].[PacienteOdontogramaItem] ([paoiCodigo])
GO
ALTER TABLE [dbo].[EntradaProcedimiento] CHECK CONSTRAINT [FK_dbo.EntradaProcedimiento_dbo.PacienteOdontogramaItem_paoiCodigo]
GO
ALTER TABLE [dbo].[EntradaProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaProcedimiento] CHECK CONSTRAINT [FK_dbo.EntradaProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[EntradaProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProcedimiento_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[EntradaProcedimiento] CHECK CONSTRAINT [FK_dbo.EntradaProcedimiento_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProtocoloInfusion_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusion] CHECK CONSTRAINT [FK_dbo.EntradaProtocoloInfusion_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProtocoloInfusion_dbo.ProtocoloInfusion_prinCodigo] FOREIGN KEY([prinCodigo])
REFERENCES [dbo].[ProtocoloInfusion] ([prinCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusion] CHECK CONSTRAINT [FK_dbo.EntradaProtocoloInfusion_dbo.ProtocoloInfusion_prinCodigo]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionCiclo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProtocoloInfusionCiclo_dbo.EntradaProtocoloInfusion_enpiCodigo] FOREIGN KEY([enpiCodigo])
REFERENCES [dbo].[EntradaProtocoloInfusion] ([enpiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionCiclo] CHECK CONSTRAINT [FK_dbo.EntradaProtocoloInfusionCiclo_dbo.EntradaProtocoloInfusion_enpiCodigo]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDia_dbo.EntradaProtocoloInfusionCiclo_enpcCodigo] FOREIGN KEY([enpcCodigo])
REFERENCES [dbo].[EntradaProtocoloInfusionCiclo] ([enpcCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDia] CHECK CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDia_dbo.EntradaProtocoloInfusionCiclo_enpcCodigo]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.EntradaProtocoloInfusionDia_enpdCodigo] FOREIGN KEY([enpdCodigo])
REFERENCES [dbo].[EntradaProtocoloInfusionDia] ([enpdCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.EntradaProtocoloInfusionDia_enpdCodigo]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.Generico_geneCodigoSolucion] FOREIGN KEY([geneCodigoSolucion])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.Generico_geneCodigoSolucion]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.MedicamentoFrecuencia_mefrCodigo] FOREIGN KEY([mefrCodigo])
REFERENCES [dbo].[MedicamentoFrecuencia] ([mefrCodigo])
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.MedicamentoFrecuencia_mefrCodigo]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.MedicamentoVia_meviCodigo] FOREIGN KEY([meviCodigo])
REFERENCES [dbo].[MedicamentoVia] ([meviCodigo])
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.MedicamentoVia_meviCodigo]
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.TipoUnidadMedida_tumeCodigo] FOREIGN KEY([tumeCodigo])
REFERENCES [dbo].[TipoUnidadMedida] ([tumeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.EntradaProtocoloInfusionDiaNomenclador_dbo.TipoUnidadMedida_tumeCodigo]
GO
ALTER TABLE [dbo].[EntradaSnomed]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaSnomed_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EntradaSnomed] CHECK CONSTRAINT [FK_dbo.EntradaSnomed_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[EntradaSnomed]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EntradaSnomed_dbo.Snomed_snomCodigo] FOREIGN KEY([snomCodigo])
REFERENCES [dbo].[Snomed] ([snomCodigo])
GO
ALTER TABLE [dbo].[EntradaSnomed] CHECK CONSTRAINT [FK_dbo.EntradaSnomed_dbo.Snomed_snomCodigo]
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Equipo_dbo.Consultorio_consCodigo] FOREIGN KEY([consCodigo])
REFERENCES [dbo].[Consultorio] ([consCodigo])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_dbo.Equipo_dbo.Consultorio_consCodigo]
GO
ALTER TABLE [dbo].[EquipoBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EquipoBloqueo_dbo.Equipo_equiCodigo] FOREIGN KEY([equiCodigo])
REFERENCES [dbo].[Equipo] ([equiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipoBloqueo] CHECK CONSTRAINT [FK_dbo.EquipoBloqueo_dbo.Equipo_equiCodigo]
GO
ALTER TABLE [dbo].[EquipoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EquipoProcedimiento_dbo.Equipo_equiCodigo] FOREIGN KEY([equiCodigo])
REFERENCES [dbo].[Equipo] ([equiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipoProcedimiento] CHECK CONSTRAINT [FK_dbo.EquipoProcedimiento_dbo.Equipo_equiCodigo]
GO
ALTER TABLE [dbo].[EquipoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EquipoProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipoProcedimiento] CHECK CONSTRAINT [FK_dbo.EquipoProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[EquipoQuirurgico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EquipoQuirurgico_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipoQuirurgico] CHECK CONSTRAINT [FK_dbo.EquipoQuirurgico_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[EquipoQuirurgicoTarea]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EquipoQuirurgicoTarea_dbo.EquipoQuirurgico_eqqrCodigo] FOREIGN KEY([eqqrCodigo])
REFERENCES [dbo].[EquipoQuirurgico] ([eqqrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipoQuirurgicoTarea] CHECK CONSTRAINT [FK_dbo.EquipoQuirurgicoTarea_dbo.EquipoQuirurgico_eqqrCodigo]
GO
ALTER TABLE [dbo].[EquipoQuirurgicoTarea]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EquipoQuirurgicoTarea_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[EquipoQuirurgicoTarea] CHECK CONSTRAINT [FK_dbo.EquipoQuirurgicoTarea_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[EquipoQuirurgicoTarea]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EquipoQuirurgicoTarea_dbo.QuirofanoTipoTarea_quttCodigo] FOREIGN KEY([quttCodigo])
REFERENCES [dbo].[QuirofanoTipoTarea] ([quttCodigo])
GO
ALTER TABLE [dbo].[EquipoQuirurgicoTarea] CHECK CONSTRAINT [FK_dbo.EquipoQuirurgicoTarea_dbo.QuirofanoTipoTarea_quttCodigo]
GO
ALTER TABLE [dbo].[EquipoVariableValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EquipoVariableValor_dbo.Equipo_equiCodigo] FOREIGN KEY([equiCodigo])
REFERENCES [dbo].[Equipo] ([equiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipoVariableValor] CHECK CONSTRAINT [FK_dbo.EquipoVariableValor_dbo.Equipo_equiCodigo]
GO
ALTER TABLE [dbo].[EquipoVariableValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EquipoVariableValor_dbo.SistemaVariable_sivaCodigo] FOREIGN KEY([sivaCodigo])
REFERENCES [dbo].[SistemaVariable] ([sivaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquipoVariableValor] CHECK CONSTRAINT [FK_dbo.EquipoVariableValor_dbo.SistemaVariable_sivaCodigo]
GO
ALTER TABLE [dbo].[Especialidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Especialidad_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Especialidad] CHECK CONSTRAINT [FK_dbo.Especialidad_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[EspecialidadHomologacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EspecialidadHomologacion_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[EspecialidadHomologacion] CHECK CONSTRAINT [FK_dbo.EspecialidadHomologacion_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[EspecialidadHomologacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EspecialidadHomologacion_dbo.Especialidad_espeCodigo] FOREIGN KEY([espeCodigo])
REFERENCES [dbo].[Especialidad] ([espeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EspecialidadHomologacion] CHECK CONSTRAINT [FK_dbo.EspecialidadHomologacion_dbo.Especialidad_espeCodigo]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Evento_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_dbo.Evento_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Evento_dbo.Campana_campCodigo] FOREIGN KEY([campCodigo])
REFERENCES [dbo].[Campana] ([campCodigo])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_dbo.Evento_dbo.Campana_campCodigo]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Evento_dbo.Contacto_contCodigo] FOREIGN KEY([contCodigo])
REFERENCES [dbo].[Contacto] ([contCodigo])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_dbo.Evento_dbo.Contacto_contCodigo]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Evento_dbo.Enfoque_enfoCodigo] FOREIGN KEY([enfoCodigo])
REFERENCES [dbo].[Enfoque] ([enfoCodigo])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_dbo.Evento_dbo.Enfoque_enfoCodigo]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Evento_dbo.EnfoqueRespuesta_enreCodigo] FOREIGN KEY([enreCodigo])
REFERENCES [dbo].[EnfoqueRespuesta] ([enreCodigo])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_dbo.Evento_dbo.EnfoqueRespuesta_enreCodigo]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Evento_dbo.Evento_evenCodigoOrigen] FOREIGN KEY([evenCodigoOrigen])
REFERENCES [dbo].[Evento] ([evenCodigo])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_dbo.Evento_dbo.Evento_evenCodigoOrigen]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Evento_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_dbo.Evento_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Evento_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_dbo.Evento_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[Expediente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Expediente_dbo.ExpedienteEstado_exesCodigo] FOREIGN KEY([exesCodigo])
REFERENCES [dbo].[ExpedienteEstado] ([exesCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Expediente] CHECK CONSTRAINT [FK_dbo.Expediente_dbo.ExpedienteEstado_exesCodigo]
GO
ALTER TABLE [dbo].[ExpedienteVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteVenta_dbo.Expediente_expeCodigo] FOREIGN KEY([expeCodigo])
REFERENCES [dbo].[Expediente] ([expeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExpedienteVenta] CHECK CONSTRAINT [FK_dbo.ExpedienteVenta_dbo.Expediente_expeCodigo]
GO
ALTER TABLE [dbo].[ExpedienteVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ExpedienteVenta_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
GO
ALTER TABLE [dbo].[ExpedienteVenta] CHECK CONSTRAINT [FK_dbo.ExpedienteVenta_dbo.Venta_ventCodigo]
GO
ALTER TABLE [dbo].[FETransaccion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FETransaccion_dbo.Recibo_reciCodigo] FOREIGN KEY([reciCodigo])
REFERENCES [dbo].[Recibo] ([reciCodigo])
GO
ALTER TABLE [dbo].[FETransaccion] CHECK CONSTRAINT [FK_dbo.FETransaccion_dbo.Recibo_reciCodigo]
GO
ALTER TABLE [dbo].[FETransaccion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FETransaccion_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
GO
ALTER TABLE [dbo].[FETransaccion] CHECK CONSTRAINT [FK_dbo.FETransaccion_dbo.Venta_ventCodigo]
GO
ALTER TABLE [dbo].[FETransaccionAfip]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FETransaccionAfip_dbo.FETransaccion_tranCodigo] FOREIGN KEY([tranCodigo])
REFERENCES [dbo].[FETransaccion] ([tranCodigo])
GO
ALTER TABLE [dbo].[FETransaccionAfip] CHECK CONSTRAINT [FK_dbo.FETransaccionAfip_dbo.FETransaccion_tranCodigo]
GO
ALTER TABLE [dbo].[Generico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Generico_dbo.Generico_geneCodigoPadre] FOREIGN KEY([geneCodigoPadre])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[Generico] CHECK CONSTRAINT [FK_dbo.Generico_dbo.Generico_geneCodigoPadre]
GO
ALTER TABLE [dbo].[Generico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Generico_dbo.Snomed_snomCodigo] FOREIGN KEY([snomCodigo])
REFERENCES [dbo].[Snomed] ([snomCodigo])
GO
ALTER TABLE [dbo].[Generico] CHECK CONSTRAINT [FK_dbo.Generico_dbo.Snomed_snomCodigo]
GO
ALTER TABLE [dbo].[Generico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Generico_dbo.TipoUnidadMedida_tumeCodigo] FOREIGN KEY([tumeCodigo])
REFERENCES [dbo].[TipoUnidadMedida] ([tumeCodigo])
GO
ALTER TABLE [dbo].[Generico] CHECK CONSTRAINT [FK_dbo.Generico_dbo.TipoUnidadMedida_tumeCodigo]
GO
ALTER TABLE [dbo].[GrupoDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoDiagnostico_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoDiagnostico] CHECK CONSTRAINT [FK_dbo.GrupoDiagnostico_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[GrupoDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoDiagnostico_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoDiagnostico] CHECK CONSTRAINT [FK_dbo.GrupoDiagnostico_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[GrupoEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoEfector_dbo.Especialidad_espeCodigo] FOREIGN KEY([espeCodigo])
REFERENCES [dbo].[Especialidad] ([espeCodigo])
GO
ALTER TABLE [dbo].[GrupoEfector] CHECK CONSTRAINT [FK_dbo.GrupoEfector_dbo.Especialidad_espeCodigo]
GO
ALTER TABLE [dbo].[GrupoEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoEfector_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoEfector] CHECK CONSTRAINT [FK_dbo.GrupoEfector_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[GrupoEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoEfector_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[GrupoEfector] CHECK CONSTRAINT [FK_dbo.GrupoEfector_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[GrupoMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoMedico_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoMedico] CHECK CONSTRAINT [FK_dbo.GrupoMedico_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[GrupoMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoMedico_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoMedico] CHECK CONSTRAINT [FK_dbo.GrupoMedico_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[GrupoPerfil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoPerfil_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
GO
ALTER TABLE [dbo].[GrupoPerfil] CHECK CONSTRAINT [FK_dbo.GrupoPerfil_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[GrupoPerfil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoPerfil_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoPerfil] CHECK CONSTRAINT [FK_dbo.GrupoPerfil_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[GrupoPropiedad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoPropiedad_dbo.GrupoTipoPropiedad_grtpCodigo] FOREIGN KEY([grtpCodigo])
REFERENCES [dbo].[GrupoTipoPropiedad] ([grtpCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoPropiedad] CHECK CONSTRAINT [FK_dbo.GrupoPropiedad_dbo.GrupoTipoPropiedad_grtpCodigo]
GO
ALTER TABLE [dbo].[GrupoPropiedadAsignada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoPropiedadAsignada_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoPropiedadAsignada] CHECK CONSTRAINT [FK_dbo.GrupoPropiedadAsignada_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[GrupoPropiedadAsignada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoPropiedadAsignada_dbo.GrupoPropiedad_grprCodigo] FOREIGN KEY([grprCodigo])
REFERENCES [dbo].[GrupoPropiedad] ([grprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoPropiedadAsignada] CHECK CONSTRAINT [FK_dbo.GrupoPropiedadAsignada_dbo.GrupoPropiedad_grprCodigo]
GO
ALTER TABLE [dbo].[GrupoPropiedadOpcion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoPropiedadOpcion_dbo.GrupoPropiedad_grprCodigo] FOREIGN KEY([grprCodigo])
REFERENCES [dbo].[GrupoPropiedad] ([grprCodigo])
GO
ALTER TABLE [dbo].[GrupoPropiedadOpcion] CHECK CONSTRAINT [FK_dbo.GrupoPropiedadOpcion_dbo.GrupoPropiedad_grprCodigo]
GO
ALTER TABLE [dbo].[GrupoTipoGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoTipoGrupo_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoTipoGrupo] CHECK CONSTRAINT [FK_dbo.GrupoTipoGrupo_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[GrupoTipoGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoTipoGrupo_dbo.GrupoTipo_grtiCodigo] FOREIGN KEY([grtiCodigo])
REFERENCES [dbo].[GrupoTipo] ([grtiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoTipoGrupo] CHECK CONSTRAINT [FK_dbo.GrupoTipoGrupo_dbo.GrupoTipo_grtiCodigo]
GO
ALTER TABLE [dbo].[GrupoTipoMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoTipoMedico_dbo.GrupoTipo_grtiCodigo] FOREIGN KEY([grtiCodigo])
REFERENCES [dbo].[GrupoTipo] ([grtiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoTipoMedico] CHECK CONSTRAINT [FK_dbo.GrupoTipoMedico_dbo.GrupoTipo_grtiCodigo]
GO
ALTER TABLE [dbo].[GrupoTipoMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoTipoMedico_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoTipoMedico] CHECK CONSTRAINT [FK_dbo.GrupoTipoMedico_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[GrupoTipoPerfil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoTipoPerfil_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
GO
ALTER TABLE [dbo].[GrupoTipoPerfil] CHECK CONSTRAINT [FK_dbo.GrupoTipoPerfil_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[GrupoTipoPerfil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.GrupoTipoPerfil_dbo.GrupoTipo_grtiCodigo] FOREIGN KEY([grtiCodigo])
REFERENCES [dbo].[GrupoTipo] ([grtiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrupoTipoPerfil] CHECK CONSTRAINT [FK_dbo.GrupoTipoPerfil_dbo.GrupoTipo_grtiCodigo]
GO
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Habitacion_dbo.Area_areaCodigo] FOREIGN KEY([areaCodigo])
REFERENCES [dbo].[Area] ([areaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Habitacion] CHECK CONSTRAINT [FK_dbo.Habitacion_dbo.Area_areaCodigo]
GO
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Habitacion_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[Habitacion] CHECK CONSTRAINT [FK_dbo.Habitacion_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Horario_dbo.Consultorio_consCodigo] FOREIGN KEY([consCodigo])
REFERENCES [dbo].[Consultorio] ([consCodigo])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_dbo.Horario_dbo.Consultorio_consCodigo]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Horario_dbo.HorarioTipo_hotiCodigo] FOREIGN KEY([hotiCodigo])
REFERENCES [dbo].[HorarioTipo] ([hotiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_dbo.Horario_dbo.HorarioTipo_hotiCodigo]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Horario_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_dbo.Horario_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Horario_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_dbo.Horario_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Horario_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_dbo.Horario_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[HorarioAvanzado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioAvanzado_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
GO
ALTER TABLE [dbo].[HorarioAvanzado] CHECK CONSTRAINT [FK_dbo.HorarioAvanzado_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[HorarioCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioCobertura_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioCobertura] CHECK CONSTRAINT [FK_dbo.HorarioCobertura_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[HorarioCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioCobertura_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
GO
ALTER TABLE [dbo].[HorarioCobertura] CHECK CONSTRAINT [FK_dbo.HorarioCobertura_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[HorarioEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioEspecialidad_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioEspecialidad] CHECK CONSTRAINT [FK_dbo.HorarioEspecialidad_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[HorarioEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioEspecialidad_dbo.SubEspecialidad_suesCodigo] FOREIGN KEY([suesCodigo])
REFERENCES [dbo].[SubEspecialidad] ([suesCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioEspecialidad] CHECK CONSTRAINT [FK_dbo.HorarioEspecialidad_dbo.SubEspecialidad_suesCodigo]
GO
ALTER TABLE [dbo].[HorarioNoAtencion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
GO
ALTER TABLE [dbo].[HorarioNoAtencion] CHECK CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[HorarioNoAtencion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[HorarioNoAtencion] CHECK CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[HorarioNoAtencion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.ReprogramacionCriterio_recrCodigo] FOREIGN KEY([recrCodigo])
REFERENCES [dbo].[ReprogramacionCriterio] ([recrCodigo])
GO
ALTER TABLE [dbo].[HorarioNoAtencion] CHECK CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.ReprogramacionCriterio_recrCodigo]
GO
ALTER TABLE [dbo].[HorarioNoAtencion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.ReprogramacionMotivo_remoCodigo] FOREIGN KEY([remoCodigo])
REFERENCES [dbo].[ReprogramacionMotivo] ([remoCodigo])
GO
ALTER TABLE [dbo].[HorarioNoAtencion] CHECK CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.ReprogramacionMotivo_remoCodigo]
GO
ALTER TABLE [dbo].[HorarioNoAtencion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[HorarioNoAtencion] CHECK CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[HorarioNoAtencion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[HorarioNoAtencion] CHECK CONSTRAINT [FK_dbo.HorarioNoAtencion_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[HorarioNoAtencionRemplazo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioNoAtencionRemplazo_dbo.HorarioNoAtencion_honoCodigo] FOREIGN KEY([honoCodigo])
REFERENCES [dbo].[HorarioNoAtencion] ([honoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioNoAtencionRemplazo] CHECK CONSTRAINT [FK_dbo.HorarioNoAtencionRemplazo_dbo.HorarioNoAtencion_honoCodigo]
GO
ALTER TABLE [dbo].[HorarioNoAtencionRemplazo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioNoAtencionRemplazo_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[HorarioNoAtencionRemplazo] CHECK CONSTRAINT [FK_dbo.HorarioNoAtencionRemplazo_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[HorarioNoAtencionRemplazo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioNoAtencionRemplazo_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[HorarioNoAtencionRemplazo] CHECK CONSTRAINT [FK_dbo.HorarioNoAtencionRemplazo_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[HorarioPerfil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioPerfil_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
GO
ALTER TABLE [dbo].[HorarioPerfil] CHECK CONSTRAINT [FK_dbo.HorarioPerfil_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[HorarioPerfil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioPerfil_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioPerfil] CHECK CONSTRAINT [FK_dbo.HorarioPerfil_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[HorarioProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioProcedimiento_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioProcedimiento] CHECK CONSTRAINT [FK_dbo.HorarioProcedimiento_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[HorarioProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioProcedimiento_dbo.MedicoProcedimiento_meprCodigo] FOREIGN KEY([meprCodigo])
REFERENCES [dbo].[MedicoProcedimiento] ([meprCodigo])
GO
ALTER TABLE [dbo].[HorarioProcedimiento] CHECK CONSTRAINT [FK_dbo.HorarioProcedimiento_dbo.MedicoProcedimiento_meprCodigo]
GO
ALTER TABLE [dbo].[HorarioProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioProcedimiento_dbo.ServicioProcedimiento_seprCodigo] FOREIGN KEY([seprCodigo])
REFERENCES [dbo].[ServicioProcedimiento] ([seprCodigo])
GO
ALTER TABLE [dbo].[HorarioProcedimiento] CHECK CONSTRAINT [FK_dbo.HorarioProcedimiento_dbo.ServicioProcedimiento_seprCodigo]
GO
ALTER TABLE [dbo].[HorarioReserva]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioReserva_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioReserva] CHECK CONSTRAINT [FK_dbo.HorarioReserva_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[HorarioReserva]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioReserva_dbo.TipoCategoriaPaciente_tcapCodigo] FOREIGN KEY([tcapCodigo])
REFERENCES [dbo].[TipoCategoriaPaciente] ([tcapCodigo])
GO
ALTER TABLE [dbo].[HorarioReserva] CHECK CONSTRAINT [FK_dbo.HorarioReserva_dbo.TipoCategoriaPaciente_tcapCodigo]
GO
ALTER TABLE [dbo].[HorarioReservaCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioReservaCobertura_dbo.HorarioReserva_horeCodigo] FOREIGN KEY([horeCodigo])
REFERENCES [dbo].[HorarioReserva] ([horeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioReservaCobertura] CHECK CONSTRAINT [FK_dbo.HorarioReservaCobertura_dbo.HorarioReserva_horeCodigo]
GO
ALTER TABLE [dbo].[HorarioReservaCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioReservaCobertura_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioReservaCobertura] CHECK CONSTRAINT [FK_dbo.HorarioReservaCobertura_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[HorarioSillon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioSillon_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioSillon] CHECK CONSTRAINT [FK_dbo.HorarioSillon_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[HorarioSillon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioSillon_dbo.Sillon_sillCodigo] FOREIGN KEY([sillCodigo])
REFERENCES [dbo].[Sillon] ([sillCodigo])
GO
ALTER TABLE [dbo].[HorarioSillon] CHECK CONSTRAINT [FK_dbo.HorarioSillon_dbo.Sillon_sillCodigo]
GO
ALTER TABLE [dbo].[HorarioSobreTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioSobreTurno_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioSobreTurno] CHECK CONSTRAINT [FK_dbo.HorarioSobreTurno_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[HorarioUsuario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioUsuario_dbo.AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HorarioUsuario] CHECK CONSTRAINT [FK_dbo.HorarioUsuario_dbo.AspNetUsers_Id]
GO
ALTER TABLE [dbo].[HorarioUsuario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.HorarioUsuario_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorarioUsuario] CHECK CONSTRAINT [FK_dbo.HorarioUsuario_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[Indicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Indicacion_dbo.IndicacionTipo_intiCodigo] FOREIGN KEY([intiCodigo])
REFERENCES [dbo].[IndicacionTipo] ([intiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Indicacion] CHECK CONSTRAINT [FK_dbo.Indicacion_dbo.IndicacionTipo_intiCodigo]
GO
ALTER TABLE [dbo].[IndicacionGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionGrupo_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IndicacionGrupo] CHECK CONSTRAINT [FK_dbo.IndicacionGrupo_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[IndicacionGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionGrupo_dbo.Indicacion_indiCodigo] FOREIGN KEY([indiCodigo])
REFERENCES [dbo].[Indicacion] ([indiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IndicacionGrupo] CHECK CONSTRAINT [FK_dbo.IndicacionGrupo_dbo.Indicacion_indiCodigo]
GO
ALTER TABLE [dbo].[IndicacionMedicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionMedicacion_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IndicacionMedicacion] CHECK CONSTRAINT [FK_dbo.IndicacionMedicacion_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[IndicacionMedicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionMedicacion_dbo.Indicacion_indiCodigo] FOREIGN KEY([indiCodigo])
REFERENCES [dbo].[Indicacion] ([indiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IndicacionMedicacion] CHECK CONSTRAINT [FK_dbo.IndicacionMedicacion_dbo.Indicacion_indiCodigo]
GO
ALTER TABLE [dbo].[IndicacionPerfil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfil_dbo.IndicacionPerfilTipo_inptCodigo] FOREIGN KEY([inptCodigo])
REFERENCES [dbo].[IndicacionPerfilTipo] ([inptCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IndicacionPerfil] CHECK CONSTRAINT [FK_dbo.IndicacionPerfil_dbo.IndicacionPerfilTipo_inptCodigo]
GO
ALTER TABLE [dbo].[IndicacionPerfil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfil_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[IndicacionPerfil] CHECK CONSTRAINT [FK_dbo.IndicacionPerfil_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[IndicacionPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[IndicacionPerfilItem] CHECK CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[IndicacionPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.Indicacion_indiCodigo] FOREIGN KEY([indiCodigo])
REFERENCES [dbo].[Indicacion] ([indiCodigo])
GO
ALTER TABLE [dbo].[IndicacionPerfilItem] CHECK CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.Indicacion_indiCodigo]
GO
ALTER TABLE [dbo].[IndicacionPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.IndicacionFrecuencia_infrCodigo] FOREIGN KEY([infrCodigo])
REFERENCES [dbo].[IndicacionFrecuencia] ([infrCodigo])
GO
ALTER TABLE [dbo].[IndicacionPerfilItem] CHECK CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.IndicacionFrecuencia_infrCodigo]
GO
ALTER TABLE [dbo].[IndicacionPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.IndicacionPerfil_inpeCodigo] FOREIGN KEY([inpeCodigo])
REFERENCES [dbo].[IndicacionPerfil] ([inpeCodigo])
GO
ALTER TABLE [dbo].[IndicacionPerfilItem] CHECK CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.IndicacionPerfil_inpeCodigo]
GO
ALTER TABLE [dbo].[IndicacionPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.IndicacionPerfilItem_ipeiPadre] FOREIGN KEY([ipeiPadre])
REFERENCES [dbo].[IndicacionPerfilItem] ([ipeiCodigo])
GO
ALTER TABLE [dbo].[IndicacionPerfilItem] CHECK CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.IndicacionPerfilItem_ipeiPadre]
GO
ALTER TABLE [dbo].[IndicacionPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.MedicamentoEspecificacion_meesCodigo] FOREIGN KEY([meesCodigo])
REFERENCES [dbo].[MedicamentoEspecificacion] ([meesCodigo])
GO
ALTER TABLE [dbo].[IndicacionPerfilItem] CHECK CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.MedicamentoEspecificacion_meesCodigo]
GO
ALTER TABLE [dbo].[IndicacionPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.MedicamentoFrecuencia_mefrCodigo] FOREIGN KEY([mefrCodigo])
REFERENCES [dbo].[MedicamentoFrecuencia] ([mefrCodigo])
GO
ALTER TABLE [dbo].[IndicacionPerfilItem] CHECK CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.MedicamentoFrecuencia_mefrCodigo]
GO
ALTER TABLE [dbo].[IndicacionPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.MedicamentoVia_meviCodigo] FOREIGN KEY([meviCodigo])
REFERENCES [dbo].[MedicamentoVia] ([meviCodigo])
GO
ALTER TABLE [dbo].[IndicacionPerfilItem] CHECK CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.MedicamentoVia_meviCodigo]
GO
ALTER TABLE [dbo].[IndicacionPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.TipoUnidadMedida_tumeCodigo] FOREIGN KEY([tumeCodigo])
REFERENCES [dbo].[TipoUnidadMedida] ([tumeCodigo])
GO
ALTER TABLE [dbo].[IndicacionPerfilItem] CHECK CONSTRAINT [FK_dbo.IndicacionPerfilItem_dbo.TipoUnidadMedida_tumeCodigo]
GO
ALTER TABLE [dbo].[IndicacionProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionProcedimiento_dbo.Indicacion_indiCodigo] FOREIGN KEY([indiCodigo])
REFERENCES [dbo].[Indicacion] ([indiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IndicacionProcedimiento] CHECK CONSTRAINT [FK_dbo.IndicacionProcedimiento_dbo.Indicacion_indiCodigo]
GO
ALTER TABLE [dbo].[IndicacionProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.IndicacionProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IndicacionProcedimiento] CHECK CONSTRAINT [FK_dbo.IndicacionProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[Internacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Internacion_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Internacion] CHECK CONSTRAINT [FK_dbo.Internacion_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[Internacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Internacion_dbo.Medico_mediCodigoEnfermera] FOREIGN KEY([mediCodigoEnfermera])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Internacion] CHECK CONSTRAINT [FK_dbo.Internacion_dbo.Medico_mediCodigoEnfermera]
GO
ALTER TABLE [dbo].[Internacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Internacion_dbo.MotivoInternacion_motiCodigo] FOREIGN KEY([motiCodigo])
REFERENCES [dbo].[MotivoInternacion] ([motiCodigo])
GO
ALTER TABLE [dbo].[Internacion] CHECK CONSTRAINT [FK_dbo.Internacion_dbo.MotivoInternacion_motiCodigo]
GO
ALTER TABLE [dbo].[Internacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Internacion_dbo.OrdenTurno_ortuCodigo] FOREIGN KEY([ortuCodigo])
REFERENCES [dbo].[OrdenTurno] ([ortuCodigo])
GO
ALTER TABLE [dbo].[Internacion] CHECK CONSTRAINT [FK_dbo.Internacion_dbo.OrdenTurno_ortuCodigo]
GO
ALTER TABLE [dbo].[Internacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Internacion_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[Internacion] CHECK CONSTRAINT [FK_dbo.Internacion_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[Internacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Internacion_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[Internacion] CHECK CONSTRAINT [FK_dbo.Internacion_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[Internacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Internacion_dbo.TipoAlta_taltCodigo] FOREIGN KEY([taltCodigo])
REFERENCES [dbo].[TipoAlta] ([taltCodigo])
GO
ALTER TABLE [dbo].[Internacion] CHECK CONSTRAINT [FK_dbo.Internacion_dbo.TipoAlta_taltCodigo]
GO
ALTER TABLE [dbo].[Internacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Internacion_dbo.TipoInternacion_tiinCodigo] FOREIGN KEY([tiinCodigo])
REFERENCES [dbo].[TipoInternacion] ([tiinCodigo])
GO
ALTER TABLE [dbo].[Internacion] CHECK CONSTRAINT [FK_dbo.Internacion_dbo.TipoInternacion_tiinCodigo]
GO
ALTER TABLE [dbo].[Internacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Internacion_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Internacion] CHECK CONSTRAINT [FK_dbo.Internacion_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[InternacionDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InternacionDiagnostico_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
GO
ALTER TABLE [dbo].[InternacionDiagnostico] CHECK CONSTRAINT [FK_dbo.InternacionDiagnostico_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[InternacionDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InternacionDiagnostico_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InternacionDiagnostico] CHECK CONSTRAINT [FK_dbo.InternacionDiagnostico_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[InternacionMovimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InternacionMovimiento_dbo.Cama_camaCodigo] FOREIGN KEY([camaCodigo])
REFERENCES [dbo].[Cama] ([camaCodigo])
GO
ALTER TABLE [dbo].[InternacionMovimiento] CHECK CONSTRAINT [FK_dbo.InternacionMovimiento_dbo.Cama_camaCodigo]
GO
ALTER TABLE [dbo].[InternacionMovimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InternacionMovimiento_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InternacionMovimiento] CHECK CONSTRAINT [FK_dbo.InternacionMovimiento_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[InternacionMovimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InternacionMovimiento_dbo.NivelCuidado_nicuCodigo] FOREIGN KEY([nicuCodigo])
REFERENCES [dbo].[NivelCuidado] ([nicuCodigo])
GO
ALTER TABLE [dbo].[InternacionMovimiento] CHECK CONSTRAINT [FK_dbo.InternacionMovimiento_dbo.NivelCuidado_nicuCodigo]
GO
ALTER TABLE [dbo].[InternacionMovimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InternacionMovimiento_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[InternacionMovimiento] CHECK CONSTRAINT [FK_dbo.InternacionMovimiento_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[InternacionVariableValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InternacionVariableValor_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InternacionVariableValor] CHECK CONSTRAINT [FK_dbo.InternacionVariableValor_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[InternacionVariableValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InternacionVariableValor_dbo.SistemaVariable_sivaCodigo] FOREIGN KEY([sivaCodigo])
REFERENCES [dbo].[SistemaVariable] ([sivaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InternacionVariableValor] CHECK CONSTRAINT [FK_dbo.InternacionVariableValor_dbo.SistemaVariable_sivaCodigo]
GO
ALTER TABLE [dbo].[Liquidacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Liquidacion_dbo.ConvenioProfesional_coprCodigo] FOREIGN KEY([coprCodigo])
REFERENCES [dbo].[ConvenioProfesional] ([coprCodigo])
GO
ALTER TABLE [dbo].[Liquidacion] CHECK CONSTRAINT [FK_dbo.Liquidacion_dbo.ConvenioProfesional_coprCodigo]
GO
ALTER TABLE [dbo].[Liquidacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Liquidacion_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Liquidacion] CHECK CONSTRAINT [FK_dbo.Liquidacion_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[LiquidacionConcepto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LiquidacionConcepto_dbo.Liquidacion_liquCodigo] FOREIGN KEY([liquCodigo])
REFERENCES [dbo].[Liquidacion] ([liquCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LiquidacionConcepto] CHECK CONSTRAINT [FK_dbo.LiquidacionConcepto_dbo.Liquidacion_liquCodigo]
GO
ALTER TABLE [dbo].[LiquidacionConcepto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LiquidacionConcepto_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[LiquidacionConcepto] CHECK CONSTRAINT [FK_dbo.LiquidacionConcepto_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[LiquidacionConcepto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LiquidacionConcepto_dbo.MedicoConcepto_mecoCodigo] FOREIGN KEY([mecoCodigo])
REFERENCES [dbo].[MedicoConcepto] ([mecoCodigo])
GO
ALTER TABLE [dbo].[LiquidacionConcepto] CHECK CONSTRAINT [FK_dbo.LiquidacionConcepto_dbo.MedicoConcepto_mecoCodigo]
GO
ALTER TABLE [dbo].[LiquidacionConcepto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LiquidacionConcepto_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[LiquidacionConcepto] CHECK CONSTRAINT [FK_dbo.LiquidacionConcepto_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[LiquidacionVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LiquidacionVenta_dbo.Liquidacion_liquCodigo] FOREIGN KEY([liquCodigo])
REFERENCES [dbo].[Liquidacion] ([liquCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LiquidacionVenta] CHECK CONSTRAINT [FK_dbo.LiquidacionVenta_dbo.Liquidacion_liquCodigo]
GO
ALTER TABLE [dbo].[LiquidacionVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LiquidacionVenta_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LiquidacionVenta] CHECK CONSTRAINT [FK_dbo.LiquidacionVenta_dbo.Venta_ventCodigo]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Localidad_dbo.Departamento_depaCodigo] FOREIGN KEY([depaCodigo])
REFERENCES [dbo].[Departamento] ([depaCodigo])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_dbo.Localidad_dbo.Departamento_depaCodigo]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Localidad_dbo.Provincia_provCodigo] FOREIGN KEY([provCodigo])
REFERENCES [dbo].[Provincia] ([provCodigo])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_dbo.Localidad_dbo.Provincia_provCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[LoteFacturacion] CHECK CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacion_dbo.AmbitoFacturacion_amfaCodigo] FOREIGN KEY([amfaCodigo])
REFERENCES [dbo].[AmbitoFacturacion] ([amfaCodigo])
GO
ALTER TABLE [dbo].[LoteFacturacion] CHECK CONSTRAINT [FK_dbo.LoteFacturacion_dbo.AmbitoFacturacion_amfaCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Cierre_cierCodigo] FOREIGN KEY([cierCodigo])
REFERENCES [dbo].[Cierre] ([cierCodigo])
GO
ALTER TABLE [dbo].[LoteFacturacion] CHECK CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Cierre_cierCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[LoteFacturacion] CHECK CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoteFacturacion] CHECK CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacion_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
GO
ALTER TABLE [dbo].[LoteFacturacion] CHECK CONSTRAINT [FK_dbo.LoteFacturacion_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[LoteFacturacion] CHECK CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
GO
ALTER TABLE [dbo].[LoteFacturacion] CHECK CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacion_dbo.TipoContratacion_tconCodigo] FOREIGN KEY([tconCodigo])
REFERENCES [dbo].[TipoContratacion] ([tconCodigo])
GO
ALTER TABLE [dbo].[LoteFacturacion] CHECK CONSTRAINT [FK_dbo.LoteFacturacion_dbo.TipoContratacion_tconCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[LoteFacturacion] CHECK CONSTRAINT [FK_dbo.LoteFacturacion_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[LoteFacturacionAnexo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LoteFacturacionAnexo_dbo.LoteFacturacion_lofaCodigo] FOREIGN KEY([lofaCodigo])
REFERENCES [dbo].[LoteFacturacion] ([lofaCodigo])
GO
ALTER TABLE [dbo].[LoteFacturacionAnexo] CHECK CONSTRAINT [FK_dbo.LoteFacturacionAnexo_dbo.LoteFacturacion_lofaCodigo]
GO
ALTER TABLE [dbo].[MatrizFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Agrupamiento_agruCodigo] FOREIGN KEY([agruCodigo])
REFERENCES [dbo].[Agrupamiento] ([agruCodigo])
GO
ALTER TABLE [dbo].[MatrizFacturacion] CHECK CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Agrupamiento_agruCodigo]
GO
ALTER TABLE [dbo].[MatrizFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[MatrizFacturacion] CHECK CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[MatrizFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[MatrizFacturacion] CHECK CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[MatrizFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
GO
ALTER TABLE [dbo].[MatrizFacturacion] CHECK CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[MatrizFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
GO
ALTER TABLE [dbo].[MatrizFacturacion] CHECK CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[MatrizFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[MatrizFacturacion] CHECK CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MatrizFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Medico_mediCodigoOrden] FOREIGN KEY([mediCodigoOrden])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[MatrizFacturacion] CHECK CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Medico_mediCodigoOrden]
GO
ALTER TABLE [dbo].[MatrizFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[MatrizFacturacion] CHECK CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[MatrizFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.TipoCobertura_tcobCodigo] FOREIGN KEY([tcobCodigo])
REFERENCES [dbo].[TipoCobertura] ([tcobCodigo])
GO
ALTER TABLE [dbo].[MatrizFacturacion] CHECK CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.TipoCobertura_tcobCodigo]
GO
ALTER TABLE [dbo].[MatrizFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[MatrizFacturacion] CHECK CONSTRAINT [FK_dbo.MatrizFacturacion_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Medico_dbo.MedicoTipoDocumentacion_MedicoTipoDocumentacion_metdCodigo] FOREIGN KEY([MedicoTipoDocumentacion_metdCodigo])
REFERENCES [dbo].[MedicoTipoDocumentacion] ([metdCodigo])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_dbo.Medico_dbo.MedicoTipoDocumentacion_MedicoTipoDocumentacion_metdCodigo]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Medico_dbo.Persona_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_dbo.Medico_dbo.Persona_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoCobertura_dbo.CoberturaCategoriaTipo_coctCodigo] FOREIGN KEY([coctCodigo])
REFERENCES [dbo].[CoberturaCategoriaTipo] ([coctCodigo])
GO
ALTER TABLE [dbo].[MedicoCobertura] CHECK CONSTRAINT [FK_dbo.MedicoCobertura_dbo.CoberturaCategoriaTipo_coctCodigo]
GO
ALTER TABLE [dbo].[MedicoCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoCobertura_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoCobertura] CHECK CONSTRAINT [FK_dbo.MedicoCobertura_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoCobertura_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoCobertura] CHECK CONSTRAINT [FK_dbo.MedicoCobertura_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[MedicoConcepto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoConcepto_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoConcepto] CHECK CONSTRAINT [FK_dbo.MedicoConcepto_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoConcepto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoConcepto_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[MedicoConcepto] CHECK CONSTRAINT [FK_dbo.MedicoConcepto_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[MedicoDocumentacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoDocumentacion_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoDocumentacion] CHECK CONSTRAINT [FK_dbo.MedicoDocumentacion_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoDocumentacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoDocumentacion_dbo.MedicoTipoDocumentacion_metdCodigo] FOREIGN KEY([metdCodigo])
REFERENCES [dbo].[MedicoTipoDocumentacion] ([metdCodigo])
GO
ALTER TABLE [dbo].[MedicoDocumentacion] CHECK CONSTRAINT [FK_dbo.MedicoDocumentacion_dbo.MedicoTipoDocumentacion_metdCodigo]
GO
ALTER TABLE [dbo].[MedicoEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoEspecialidad_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoEspecialidad] CHECK CONSTRAINT [FK_dbo.MedicoEspecialidad_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoEspecialidad_dbo.SubEspecialidad_suesCodigo] FOREIGN KEY([suesCodigo])
REFERENCES [dbo].[SubEspecialidad] ([suesCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoEspecialidad] CHECK CONSTRAINT [FK_dbo.MedicoEspecialidad_dbo.SubEspecialidad_suesCodigo]
GO
ALTER TABLE [dbo].[MedicoEvolucion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoEvolucion_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoEvolucion] CHECK CONSTRAINT [FK_dbo.MedicoEvolucion_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoMatricula]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoMatricula_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoMatricula] CHECK CONSTRAINT [FK_dbo.MedicoMatricula_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoMatricula]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoMatricula_dbo.Provincia_provCodigo] FOREIGN KEY([provCodigo])
REFERENCES [dbo].[Provincia] ([provCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoMatricula] CHECK CONSTRAINT [FK_dbo.MedicoMatricula_dbo.Provincia_provCodigo]
GO
ALTER TABLE [dbo].[MedicoMatricula]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoMatricula_dbo.TipoProfesion_tiprCodigo] FOREIGN KEY([tiprCodigo])
REFERENCES [dbo].[TipoProfesion] ([tiprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoMatricula] CHECK CONSTRAINT [FK_dbo.MedicoMatricula_dbo.TipoProfesion_tiprCodigo]
GO
ALTER TABLE [dbo].[MedicoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoProcedimiento_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoProcedimiento] CHECK CONSTRAINT [FK_dbo.MedicoProcedimiento_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoProcedimiento] CHECK CONSTRAINT [FK_dbo.MedicoProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[MedicoProcedimientoActuante]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoProcedimientoActuante_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[MedicoProcedimientoActuante] CHECK CONSTRAINT [FK_dbo.MedicoProcedimientoActuante_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoProcedimientoActuante]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoProcedimientoActuante_dbo.MedicoProcedimiento_meprCodigo] FOREIGN KEY([meprCodigo])
REFERENCES [dbo].[MedicoProcedimiento] ([meprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoProcedimientoActuante] CHECK CONSTRAINT [FK_dbo.MedicoProcedimientoActuante_dbo.MedicoProcedimiento_meprCodigo]
GO
ALTER TABLE [dbo].[MedicoRemplazo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoRemplazo_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoRemplazo] CHECK CONSTRAINT [FK_dbo.MedicoRemplazo_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoRemplazo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoRemplazo_dbo.Medico_mediCodigoRemplazado] FOREIGN KEY([mediCodigoRemplazado])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[MedicoRemplazo] CHECK CONSTRAINT [FK_dbo.MedicoRemplazo_dbo.Medico_mediCodigoRemplazado]
GO
ALTER TABLE [dbo].[MedicoRemplazo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoRemplazo_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoRemplazo] CHECK CONSTRAINT [FK_dbo.MedicoRemplazo_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[MedicoRestriccion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoRestriccion_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoRestriccion] CHECK CONSTRAINT [FK_dbo.MedicoRestriccion_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoRestriccion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoRestriccion_dbo.PersonaVariable_pevaCodigo] FOREIGN KEY([pevaCodigo])
REFERENCES [dbo].[PersonaVariable] ([pevaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoRestriccion] CHECK CONSTRAINT [FK_dbo.MedicoRestriccion_dbo.PersonaVariable_pevaCodigo]
GO
ALTER TABLE [dbo].[MedicoServicio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoServicio_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MedicoServicio] CHECK CONSTRAINT [FK_dbo.MedicoServicio_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MedicoServicio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MedicoServicio_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[MedicoServicio] CHECK CONSTRAINT [FK_dbo.MedicoServicio_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[MenuEsquema]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuEsquema_dbo.ComidaTipo_cotiCodigo] FOREIGN KEY([cotiCodigo])
REFERENCES [dbo].[ComidaTipo] ([cotiCodigo])
GO
ALTER TABLE [dbo].[MenuEsquema] CHECK CONSTRAINT [FK_dbo.MenuEsquema_dbo.ComidaTipo_cotiCodigo]
GO
ALTER TABLE [dbo].[MenuEsquema]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuEsquema_dbo.Menu_menuCodigo] FOREIGN KEY([menuCodigo])
REFERENCES [dbo].[Menu] ([menuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuEsquema] CHECK CONSTRAINT [FK_dbo.MenuEsquema_dbo.Menu_menuCodigo]
GO
ALTER TABLE [dbo].[MenuEsquema]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuEsquema_dbo.MenuTipo_metiCodigo] FOREIGN KEY([metiCodigo])
REFERENCES [dbo].[MenuTipo] ([metiCodigo])
GO
ALTER TABLE [dbo].[MenuEsquema] CHECK CONSTRAINT [FK_dbo.MenuEsquema_dbo.MenuTipo_metiCodigo]
GO
ALTER TABLE [dbo].[MenuEsquemaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuEsquemaItem_dbo.Comida_comiCodigo] FOREIGN KEY([comiCodigo])
REFERENCES [dbo].[Comida] ([comiCodigo])
GO
ALTER TABLE [dbo].[MenuEsquemaItem] CHECK CONSTRAINT [FK_dbo.MenuEsquemaItem_dbo.Comida_comiCodigo]
GO
ALTER TABLE [dbo].[MenuEsquemaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuEsquemaItem_dbo.MenuEsquema_meesCodigo] FOREIGN KEY([meesCodigo])
REFERENCES [dbo].[MenuEsquema] ([meesCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuEsquemaItem] CHECK CONSTRAINT [FK_dbo.MenuEsquemaItem_dbo.MenuEsquema_meesCodigo]
GO
ALTER TABLE [dbo].[MenuEsquemaItemTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuEsquemaItemTag_dbo.MenuEsquemaItem_meeiCodigo] FOREIGN KEY([meeiCodigo])
REFERENCES [dbo].[MenuEsquemaItem] ([meeiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuEsquemaItemTag] CHECK CONSTRAINT [FK_dbo.MenuEsquemaItemTag_dbo.MenuEsquemaItem_meeiCodigo]
GO
ALTER TABLE [dbo].[MenuEsquemaItemTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuEsquemaItemTag_dbo.Tag_tagCodigo] FOREIGN KEY([tagCodigo])
REFERENCES [dbo].[Tag] ([tagCodigo])
GO
ALTER TABLE [dbo].[MenuEsquemaItemTag] CHECK CONSTRAINT [FK_dbo.MenuEsquemaItemTag_dbo.Tag_tagCodigo]
GO
ALTER TABLE [dbo].[MenuExclusion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuExclusion_dbo.Alimento_alimCodigo] FOREIGN KEY([alimCodigo])
REFERENCES [dbo].[Alimento] ([alimCodigo])
GO
ALTER TABLE [dbo].[MenuExclusion] CHECK CONSTRAINT [FK_dbo.MenuExclusion_dbo.Alimento_alimCodigo]
GO
ALTER TABLE [dbo].[MenuExclusion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuExclusion_dbo.Menu_menuCodigo] FOREIGN KEY([menuCodigo])
REFERENCES [dbo].[Menu] ([menuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuExclusion] CHECK CONSTRAINT [FK_dbo.MenuExclusion_dbo.Menu_menuCodigo]
GO
ALTER TABLE [dbo].[MenuFecha]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuFecha_dbo.Menu_menuCodigo] FOREIGN KEY([menuCodigo])
REFERENCES [dbo].[Menu] ([menuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuFecha] CHECK CONSTRAINT [FK_dbo.MenuFecha_dbo.Menu_menuCodigo]
GO
ALTER TABLE [dbo].[MenuTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuTag_dbo.Menu_menuCodigo] FOREIGN KEY([menuCodigo])
REFERENCES [dbo].[Menu] ([menuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuTag] CHECK CONSTRAINT [FK_dbo.MenuTag_dbo.Menu_menuCodigo]
GO
ALTER TABLE [dbo].[MenuTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MenuTag_dbo.Tag_tagCodigo] FOREIGN KEY([tagCodigo])
REFERENCES [dbo].[Tag] ([tagCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuTag] CHECK CONSTRAINT [FK_dbo.MenuTag_dbo.Tag_tagCodigo]
GO
ALTER TABLE [dbo].[Modulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Modulo_dbo.Nomenclador_moduCodigo] FOREIGN KEY([moduCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[Modulo] CHECK CONSTRAINT [FK_dbo.Modulo_dbo.Nomenclador_moduCodigo]
GO
ALTER TABLE [dbo].[ModuloAgrupamiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloAgrupamiento_dbo.Agrupamiento_agruCodigo] FOREIGN KEY([agruCodigo])
REFERENCES [dbo].[Agrupamiento] ([agruCodigo])
GO
ALTER TABLE [dbo].[ModuloAgrupamiento] CHECK CONSTRAINT [FK_dbo.ModuloAgrupamiento_dbo.Agrupamiento_agruCodigo]
GO
ALTER TABLE [dbo].[ModuloAgrupamiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloAgrupamiento_dbo.ModuloVersion_moveCodigo] FOREIGN KEY([moveCodigo])
REFERENCES [dbo].[ModuloVersion] ([moveCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModuloAgrupamiento] CHECK CONSTRAINT [FK_dbo.ModuloAgrupamiento_dbo.ModuloVersion_moveCodigo]
GO
ALTER TABLE [dbo].[ModuloAmbito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloAmbito_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[ModuloAmbito] CHECK CONSTRAINT [FK_dbo.ModuloAmbito_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[ModuloAmbito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloAmbito_dbo.Modulo_moduCodigo] FOREIGN KEY([moduCodigo])
REFERENCES [dbo].[Modulo] ([moduCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModuloAmbito] CHECK CONSTRAINT [FK_dbo.ModuloAmbito_dbo.Modulo_moduCodigo]
GO
ALTER TABLE [dbo].[ModuloArticuloFamilia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloArticuloFamilia_dbo.ArticuloFamilia_arfaCodigo] FOREIGN KEY([arfaCodigo])
REFERENCES [dbo].[ArticuloFamilia] ([arfaCodigo])
GO
ALTER TABLE [dbo].[ModuloArticuloFamilia] CHECK CONSTRAINT [FK_dbo.ModuloArticuloFamilia_dbo.ArticuloFamilia_arfaCodigo]
GO
ALTER TABLE [dbo].[ModuloArticuloFamilia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloArticuloFamilia_dbo.ArticuloSubFamilia_asufCodigo] FOREIGN KEY([asufCodigo])
REFERENCES [dbo].[ArticuloSubFamilia] ([asufCodigo])
GO
ALTER TABLE [dbo].[ModuloArticuloFamilia] CHECK CONSTRAINT [FK_dbo.ModuloArticuloFamilia_dbo.ArticuloSubFamilia_asufCodigo]
GO
ALTER TABLE [dbo].[ModuloArticuloFamilia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloArticuloFamilia_dbo.ModuloVersion_moveCodigo] FOREIGN KEY([moveCodigo])
REFERENCES [dbo].[ModuloVersion] ([moveCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModuloArticuloFamilia] CHECK CONSTRAINT [FK_dbo.ModuloArticuloFamilia_dbo.ModuloVersion_moveCodigo]
GO
ALTER TABLE [dbo].[ModuloArticuloGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloArticuloGrupo_dbo.ArticuloGrupo_argrCodigo] FOREIGN KEY([argrCodigo])
REFERENCES [dbo].[ArticuloGrupo] ([argrCodigo])
GO
ALTER TABLE [dbo].[ModuloArticuloGrupo] CHECK CONSTRAINT [FK_dbo.ModuloArticuloGrupo_dbo.ArticuloGrupo_argrCodigo]
GO
ALTER TABLE [dbo].[ModuloArticuloGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloArticuloGrupo_dbo.ArticuloSubGrupo_arsuCodigo] FOREIGN KEY([arsuCodigo])
REFERENCES [dbo].[ArticuloSubGrupo] ([arsuCodigo])
GO
ALTER TABLE [dbo].[ModuloArticuloGrupo] CHECK CONSTRAINT [FK_dbo.ModuloArticuloGrupo_dbo.ArticuloSubGrupo_arsuCodigo]
GO
ALTER TABLE [dbo].[ModuloArticuloGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloArticuloGrupo_dbo.ModuloVersion_moveCodigo] FOREIGN KEY([moveCodigo])
REFERENCES [dbo].[ModuloVersion] ([moveCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModuloArticuloGrupo] CHECK CONSTRAINT [FK_dbo.ModuloArticuloGrupo_dbo.ModuloVersion_moveCodigo]
GO
ALTER TABLE [dbo].[ModuloDisparador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloDisparador_dbo.Modulo_moduCodigo] FOREIGN KEY([moduCodigo])
REFERENCES [dbo].[Modulo] ([moduCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModuloDisparador] CHECK CONSTRAINT [FK_dbo.ModuloDisparador_dbo.Modulo_moduCodigo]
GO
ALTER TABLE [dbo].[ModuloDisparador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloDisparador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[ModuloDisparador] CHECK CONSTRAINT [FK_dbo.ModuloDisparador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[ModuloNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloNomenclador_dbo.ModuloVersion_moveCodigo] FOREIGN KEY([moveCodigo])
REFERENCES [dbo].[ModuloVersion] ([moveCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModuloNomenclador] CHECK CONSTRAINT [FK_dbo.ModuloNomenclador_dbo.ModuloVersion_moveCodigo]
GO
ALTER TABLE [dbo].[ModuloNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[ModuloNomenclador] CHECK CONSTRAINT [FK_dbo.ModuloNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[ModuloTipoPrestacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloTipoPrestacion_dbo.ModuloVersion_moveCodigo] FOREIGN KEY([moveCodigo])
REFERENCES [dbo].[ModuloVersion] ([moveCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModuloTipoPrestacion] CHECK CONSTRAINT [FK_dbo.ModuloTipoPrestacion_dbo.ModuloVersion_moveCodigo]
GO
ALTER TABLE [dbo].[ModuloTipoPrestacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloTipoPrestacion_dbo.TipoPrestacion_tpreCodigo] FOREIGN KEY([tpreCodigo])
REFERENCES [dbo].[TipoPrestacion] ([tpreCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModuloTipoPrestacion] CHECK CONSTRAINT [FK_dbo.ModuloTipoPrestacion_dbo.TipoPrestacion_tpreCodigo]
GO
ALTER TABLE [dbo].[ModuloVersion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ModuloVersion_dbo.Modulo_moduCodigo] FOREIGN KEY([moduCodigo])
REFERENCES [dbo].[Modulo] ([moduCodigo])
GO
ALTER TABLE [dbo].[ModuloVersion] CHECK CONSTRAINT [FK_dbo.ModuloVersion_dbo.Modulo_moduCodigo]
GO
ALTER TABLE [dbo].[MonedaCotizacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MonedaCotizacion_dbo.Moneda_moneCodigo] FOREIGN KEY([moneCodigo])
REFERENCES [dbo].[Moneda] ([moneCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MonedaCotizacion] CHECK CONSTRAINT [FK_dbo.MonedaCotizacion_dbo.Moneda_moneCodigo]
GO
ALTER TABLE [dbo].[MotivoDebito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MotivoDebito_dbo.MotivoDebitoTipo_modtCodigo] FOREIGN KEY([modtCodigo])
REFERENCES [dbo].[MotivoDebitoTipo] ([modtCodigo])
GO
ALTER TABLE [dbo].[MotivoDebito] CHECK CONSTRAINT [FK_dbo.MotivoDebito_dbo.MotivoDebitoTipo_modtCodigo]
GO
ALTER TABLE [dbo].[MotivoRefacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MotivoRefacturacion_dbo.MotivoRefacturacionTipo_mortCodigo] FOREIGN KEY([mortCodigo])
REFERENCES [dbo].[MotivoRefacturacionTipo] ([mortCodigo])
GO
ALTER TABLE [dbo].[MotivoRefacturacion] CHECK CONSTRAINT [FK_dbo.MotivoRefacturacion_dbo.MotivoRefacturacionTipo_mortCodigo]
GO
ALTER TABLE [dbo].[Movil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Movil_dbo.MovilTipo_motiCodigo] FOREIGN KEY([motiCodigo])
REFERENCES [dbo].[MovilTipo] ([motiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movil] CHECK CONSTRAINT [FK_dbo.Movil_dbo.MovilTipo_motiCodigo]
GO
ALTER TABLE [dbo].[MovilEvento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MovilEvento_dbo.Localidad_locaCodigo] FOREIGN KEY([locaCodigo])
REFERENCES [dbo].[Localidad] ([locaCodigo])
GO
ALTER TABLE [dbo].[MovilEvento] CHECK CONSTRAINT [FK_dbo.MovilEvento_dbo.Localidad_locaCodigo]
GO
ALTER TABLE [dbo].[MovilEvento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MovilEvento_dbo.Movil_moviCodigo] FOREIGN KEY([moviCodigo])
REFERENCES [dbo].[Movil] ([moviCodigo])
GO
ALTER TABLE [dbo].[MovilEvento] CHECK CONSTRAINT [FK_dbo.MovilEvento_dbo.Movil_moviCodigo]
GO
ALTER TABLE [dbo].[MovilMantenimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MovilMantenimiento_dbo.Movil_moviCodigo] FOREIGN KEY([moviCodigo])
REFERENCES [dbo].[Movil] ([moviCodigo])
GO
ALTER TABLE [dbo].[MovilMantenimiento] CHECK CONSTRAINT [FK_dbo.MovilMantenimiento_dbo.Movil_moviCodigo]
GO
ALTER TABLE [dbo].[MovilOcupante]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MovilOcupante_dbo.Chofer_chofCodigo] FOREIGN KEY([chofCodigo])
REFERENCES [dbo].[Chofer] ([chofCodigo])
GO
ALTER TABLE [dbo].[MovilOcupante] CHECK CONSTRAINT [FK_dbo.MovilOcupante_dbo.Chofer_chofCodigo]
GO
ALTER TABLE [dbo].[MovilOcupante]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MovilOcupante_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[MovilOcupante] CHECK CONSTRAINT [FK_dbo.MovilOcupante_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[MovilOcupante]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MovilOcupante_dbo.Movil_moviCodigo] FOREIGN KEY([moviCodigo])
REFERENCES [dbo].[Movil] ([moviCodigo])
GO
ALTER TABLE [dbo].[MovilOcupante] CHECK CONSTRAINT [FK_dbo.MovilOcupante_dbo.Movil_moviCodigo]
GO
ALTER TABLE [dbo].[MovilParada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MovilParada_dbo.Localidad_locaCodigo] FOREIGN KEY([locaCodigo])
REFERENCES [dbo].[Localidad] ([locaCodigo])
GO
ALTER TABLE [dbo].[MovilParada] CHECK CONSTRAINT [FK_dbo.MovilParada_dbo.Localidad_locaCodigo]
GO
ALTER TABLE [dbo].[MovilParada]  WITH CHECK ADD  CONSTRAINT [FK_dbo.MovilParada_dbo.Movil_moviCodigo] FOREIGN KEY([moviCodigo])
REFERENCES [dbo].[Movil] ([moviCodigo])
GO
ALTER TABLE [dbo].[MovilParada] CHECK CONSTRAINT [FK_dbo.MovilParada_dbo.Movil_moviCodigo]
GO
ALTER TABLE [dbo].[NivelCuidado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NivelCuidado_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[NivelCuidado] CHECK CONSTRAINT [FK_dbo.NivelCuidado_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[NivelCuidadoCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NivelCuidadoCobertura_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[NivelCuidadoCobertura] CHECK CONSTRAINT [FK_dbo.NivelCuidadoCobertura_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[NivelCuidadoCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NivelCuidadoCobertura_dbo.NivelCuidado_nicuCodigo] FOREIGN KEY([nicuCodigo])
REFERENCES [dbo].[NivelCuidado] ([nicuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NivelCuidadoCobertura] CHECK CONSTRAINT [FK_dbo.NivelCuidadoCobertura_dbo.NivelCuidado_nicuCodigo]
GO
ALTER TABLE [dbo].[NivelCuidadoCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NivelCuidadoCobertura_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[NivelCuidadoCobertura] CHECK CONSTRAINT [FK_dbo.NivelCuidadoCobertura_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[Nomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Nomenclador_dbo.Servicio_Servicio_servCodigo] FOREIGN KEY([Servicio_servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[Nomenclador] CHECK CONSTRAINT [FK_dbo.Nomenclador_dbo.Servicio_Servicio_servCodigo]
GO
ALTER TABLE [dbo].[Nomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Nomenclador_dbo.Snomed_snomCodigo] FOREIGN KEY([snomCodigo])
REFERENCES [dbo].[Snomed] ([snomCodigo])
GO
ALTER TABLE [dbo].[Nomenclador] CHECK CONSTRAINT [FK_dbo.Nomenclador_dbo.Snomed_snomCodigo]
GO
ALTER TABLE [dbo].[Nomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Nomenclador_dbo.TipoNomenclador_tnomCodigo] FOREIGN KEY([tnomCodigo])
REFERENCES [dbo].[TipoNomenclador] ([tnomCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nomenclador] CHECK CONSTRAINT [FK_dbo.Nomenclador_dbo.TipoNomenclador_tnomCodigo]
GO
ALTER TABLE [dbo].[NomencladorArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.ArticuloSubFamilia_asufCodigo] FOREIGN KEY([asufCodigo])
REFERENCES [dbo].[ArticuloSubFamilia] ([asufCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorArticulo] CHECK CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.ArticuloSubFamilia_asufCodigo]
GO
ALTER TABLE [dbo].[NomencladorArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.ArticuloSubGrupo_arsuCodigo] FOREIGN KEY([arsuCodigo])
REFERENCES [dbo].[ArticuloSubGrupo] ([arsuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorArticulo] CHECK CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.ArticuloSubGrupo_arsuCodigo]
GO
ALTER TABLE [dbo].[NomencladorArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[NomencladorArticulo] CHECK CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[NomencladorArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.MedicamentoVia_meviCodigo] FOREIGN KEY([meviCodigo])
REFERENCES [dbo].[MedicamentoVia] ([meviCodigo])
GO
ALTER TABLE [dbo].[NomencladorArticulo] CHECK CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.MedicamentoVia_meviCodigo]
GO
ALTER TABLE [dbo].[NomencladorArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.Moneda_moneCodigo] FOREIGN KEY([moneCodigo])
REFERENCES [dbo].[Moneda] ([moneCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorArticulo] CHECK CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.Moneda_moneCodigo]
GO
ALTER TABLE [dbo].[NomencladorArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[NomencladorArticulo] CHECK CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[NomencladorArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.TipoAccionFarmacologica_tacfCodigo] FOREIGN KEY([tacfCodigo])
REFERENCES [dbo].[TipoAccionFarmacologica] ([tacfCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorArticulo] CHECK CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.TipoAccionFarmacologica_tacfCodigo]
GO
ALTER TABLE [dbo].[NomencladorArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.TipoArticulo_tartCodigo] FOREIGN KEY([tartCodigo])
REFERENCES [dbo].[TipoArticulo] ([tartCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorArticulo] CHECK CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.TipoArticulo_tartCodigo]
GO
ALTER TABLE [dbo].[NomencladorArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.TipoUnidadMedida_tumeCodigo] FOREIGN KEY([tumeCodigo])
REFERENCES [dbo].[TipoUnidadMedida] ([tumeCodigo])
GO
ALTER TABLE [dbo].[NomencladorArticulo] CHECK CONSTRAINT [FK_dbo.NomencladorArticulo_dbo.TipoUnidadMedida_tumeCodigo]
GO
ALTER TABLE [dbo].[NomencladorCodigoBarra]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorCodigoBarra_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorCodigoBarra] CHECK CONSTRAINT [FK_dbo.NomencladorCodigoBarra_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[NomencladorCompuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorCompuesto_dbo.Nomenclador_nocoCompuesto] FOREIGN KEY([nocoCompuesto])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[NomencladorCompuesto] CHECK CONSTRAINT [FK_dbo.NomencladorCompuesto_dbo.Nomenclador_nocoCompuesto]
GO
ALTER TABLE [dbo].[NomencladorCompuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorCompuesto_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorCompuesto] CHECK CONSTRAINT [FK_dbo.NomencladorCompuesto_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[NomencladorGaleno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorGaleno_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorGaleno] CHECK CONSTRAINT [FK_dbo.NomencladorGaleno_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[NomencladorGaleno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorGaleno_dbo.TipoColumnaNomenclador_tcnoCodigo] FOREIGN KEY([tcnoCodigo])
REFERENCES [dbo].[TipoColumnaNomenclador] ([tcnoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorGaleno] CHECK CONSTRAINT [FK_dbo.NomencladorGaleno_dbo.TipoColumnaNomenclador_tcnoCodigo]
GO
ALTER TABLE [dbo].[NomencladorGaleno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorGaleno_dbo.TipoValorNomenclador_tvnoCodigo] FOREIGN KEY([tvnoCodigo])
REFERENCES [dbo].[TipoValorNomenclador] ([tvnoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorGaleno] CHECK CONSTRAINT [FK_dbo.NomencladorGaleno_dbo.TipoValorNomenclador_tvnoCodigo]
GO
ALTER TABLE [dbo].[NomencladorHomologacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorHomologacion_dbo.AmbitoFacturacion_amfaCodigo] FOREIGN KEY([amfaCodigo])
REFERENCES [dbo].[AmbitoFacturacion] ([amfaCodigo])
GO
ALTER TABLE [dbo].[NomencladorHomologacion] CHECK CONSTRAINT [FK_dbo.NomencladorHomologacion_dbo.AmbitoFacturacion_amfaCodigo]
GO
ALTER TABLE [dbo].[NomencladorHomologacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorHomologacion_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorHomologacion] CHECK CONSTRAINT [FK_dbo.NomencladorHomologacion_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[NomencladorHomologacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorHomologacion_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
GO
ALTER TABLE [dbo].[NomencladorHomologacion] CHECK CONSTRAINT [FK_dbo.NomencladorHomologacion_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[NomencladorHomologacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorHomologacion_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[NomencladorHomologacion] CHECK CONSTRAINT [FK_dbo.NomencladorHomologacion_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[NomencladorHomologacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorHomologacion_dbo.SubEspecialidad_suesCodigo] FOREIGN KEY([suesCodigo])
REFERENCES [dbo].[SubEspecialidad] ([suesCodigo])
GO
ALTER TABLE [dbo].[NomencladorHomologacion] CHECK CONSTRAINT [FK_dbo.NomencladorHomologacion_dbo.SubEspecialidad_suesCodigo]
GO
ALTER TABLE [dbo].[NomencladorLote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorLote_dbo.ArticuloOrigen_arorCodigo] FOREIGN KEY([arorCodigo])
REFERENCES [dbo].[ArticuloOrigen] ([arorCodigo])
GO
ALTER TABLE [dbo].[NomencladorLote] CHECK CONSTRAINT [FK_dbo.NomencladorLote_dbo.ArticuloOrigen_arorCodigo]
GO
ALTER TABLE [dbo].[NomencladorLote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorLote_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[NomencladorLote] CHECK CONSTRAINT [FK_dbo.NomencladorLote_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[NomencladorLote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorLote_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorLote] CHECK CONSTRAINT [FK_dbo.NomencladorLote_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[NomencladorLote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorLote_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[NomencladorLote] CHECK CONSTRAINT [FK_dbo.NomencladorLote_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[NomencladorPractica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorPractica_dbo.AmbitoFacturacion_amfaCodigo] FOREIGN KEY([amfaCodigo])
REFERENCES [dbo].[AmbitoFacturacion] ([amfaCodigo])
GO
ALTER TABLE [dbo].[NomencladorPractica] CHECK CONSTRAINT [FK_dbo.NomencladorPractica_dbo.AmbitoFacturacion_amfaCodigo]
GO
ALTER TABLE [dbo].[NomencladorPractica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorPractica_dbo.Moneda_moneCodigo] FOREIGN KEY([moneCodigo])
REFERENCES [dbo].[Moneda] ([moneCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorPractica] CHECK CONSTRAINT [FK_dbo.NomencladorPractica_dbo.Moneda_moneCodigo]
GO
ALTER TABLE [dbo].[NomencladorPractica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorPractica_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[NomencladorPractica] CHECK CONSTRAINT [FK_dbo.NomencladorPractica_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[NomencladorPractica]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorPractica_dbo.TipoPrestacion_tpreCodigo] FOREIGN KEY([tpreCodigo])
REFERENCES [dbo].[TipoPrestacion] ([tpreCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorPractica] CHECK CONSTRAINT [FK_dbo.NomencladorPractica_dbo.TipoPrestacion_tpreCodigo]
GO
ALTER TABLE [dbo].[NomencladorPrecio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorPrecio_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[NomencladorPrecio] CHECK CONSTRAINT [FK_dbo.NomencladorPrecio_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[NomencladorPrecio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorPrecio_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorPrecio] CHECK CONSTRAINT [FK_dbo.NomencladorPrecio_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[NomencladorResumen]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorResumen_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorResumen] CHECK CONSTRAINT [FK_dbo.NomencladorResumen_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[NomencladorResumen]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NomencladorResumen_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NomencladorResumen] CHECK CONSTRAINT [FK_dbo.NomencladorResumen_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[OrdenCompra]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenCompra_dbo.Proveedor_prveCodigo] FOREIGN KEY([prveCodigo])
REFERENCES [dbo].[Proveedor] ([prveCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenCompra] CHECK CONSTRAINT [FK_dbo.OrdenCompra_dbo.Proveedor_prveCodigo]
GO
ALTER TABLE [dbo].[OrdenCompra]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenCompra_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[OrdenCompra] CHECK CONSTRAINT [FK_dbo.OrdenCompra_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[OrdenCompraItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenCompraItem_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[OrdenCompraItem] CHECK CONSTRAINT [FK_dbo.OrdenCompraItem_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[OrdenCompraItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenCompraItem_dbo.OrdenCompra_orcoCodigo] FOREIGN KEY([orcoCodigo])
REFERENCES [dbo].[OrdenCompra] ([orcoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenCompraItem] CHECK CONSTRAINT [FK_dbo.OrdenCompraItem_dbo.OrdenCompra_orcoCodigo]
GO
ALTER TABLE [dbo].[OrdenTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurno_dbo.Derivador_deriCodigo] FOREIGN KEY([deriCodigo])
REFERENCES [dbo].[Derivador] ([deriCodigo])
GO
ALTER TABLE [dbo].[OrdenTurno] CHECK CONSTRAINT [FK_dbo.OrdenTurno_dbo.Derivador_deriCodigo]
GO
ALTER TABLE [dbo].[OrdenTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurno_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
GO
ALTER TABLE [dbo].[OrdenTurno] CHECK CONSTRAINT [FK_dbo.OrdenTurno_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[OrdenTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurno_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
GO
ALTER TABLE [dbo].[OrdenTurno] CHECK CONSTRAINT [FK_dbo.OrdenTurno_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[OrdenTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurno_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[OrdenTurno] CHECK CONSTRAINT [FK_dbo.OrdenTurno_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[OrdenTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurno_dbo.OrdenTurnoTipo_orttCodigo] FOREIGN KEY([orttCodigo])
REFERENCES [dbo].[OrdenTurnoTipo] ([orttCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenTurno] CHECK CONSTRAINT [FK_dbo.OrdenTurno_dbo.OrdenTurnoTipo_orttCodigo]
GO
ALTER TABLE [dbo].[OrdenTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurno_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenTurno] CHECK CONSTRAINT [FK_dbo.OrdenTurno_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[OrdenTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurno_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[OrdenTurno] CHECK CONSTRAINT [FK_dbo.OrdenTurno_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[OrdenTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurno_dbo.Provincia_provCodigo] FOREIGN KEY([provCodigo])
REFERENCES [dbo].[Provincia] ([provCodigo])
GO
ALTER TABLE [dbo].[OrdenTurno] CHECK CONSTRAINT [FK_dbo.OrdenTurno_dbo.Provincia_provCodigo]
GO
ALTER TABLE [dbo].[OrdenTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurno_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[OrdenTurno] CHECK CONSTRAINT [FK_dbo.OrdenTurno_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoArchivo_dbo.OrdenTurno_ortuCodigo] FOREIGN KEY([ortuCodigo])
REFERENCES [dbo].[OrdenTurno] ([ortuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenTurnoArchivo] CHECK CONSTRAINT [FK_dbo.OrdenTurnoArchivo_dbo.OrdenTurno_ortuCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoArticulo_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[OrdenTurnoArticulo] CHECK CONSTRAINT [FK_dbo.OrdenTurnoArticulo_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoArticulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoArticulo_dbo.OrdenTurno_ortuCodigo] FOREIGN KEY([ortuCodigo])
REFERENCES [dbo].[OrdenTurno] ([ortuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenTurnoArticulo] CHECK CONSTRAINT [FK_dbo.OrdenTurnoArticulo_dbo.OrdenTurno_ortuCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoComplemento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoComplemento_dbo.OrdenTurno_ortuCodigo] FOREIGN KEY([ortuCodigo])
REFERENCES [dbo].[OrdenTurno] ([ortuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenTurnoComplemento] CHECK CONSTRAINT [FK_dbo.OrdenTurnoComplemento_dbo.OrdenTurno_ortuCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoComplemento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoComplemento_dbo.QuirofanoTipoComplemento_qutcCodigo] FOREIGN KEY([qutcCodigo])
REFERENCES [dbo].[QuirofanoTipoComplemento] ([qutcCodigo])
GO
ALTER TABLE [dbo].[OrdenTurnoComplemento] CHECK CONSTRAINT [FK_dbo.OrdenTurnoComplemento_dbo.QuirofanoTipoComplemento_qutcCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoEstado_dbo.AspNetUsers_orteUsuario] FOREIGN KEY([orteUsuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrdenTurnoEstado] CHECK CONSTRAINT [FK_dbo.OrdenTurnoEstado_dbo.AspNetUsers_orteUsuario]
GO
ALTER TABLE [dbo].[OrdenTurnoEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoEstado_dbo.OrdenTurno_ortuCodigo] FOREIGN KEY([ortuCodigo])
REFERENCES [dbo].[OrdenTurno] ([ortuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenTurnoEstado] CHECK CONSTRAINT [FK_dbo.OrdenTurnoEstado_dbo.OrdenTurno_ortuCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoEstado_dbo.OrdenTurnoTipoEstado_otteCodigo] FOREIGN KEY([otteCodigo])
REFERENCES [dbo].[OrdenTurnoTipoEstado] ([otteCodigo])
GO
ALTER TABLE [dbo].[OrdenTurnoEstado] CHECK CONSTRAINT [FK_dbo.OrdenTurnoEstado_dbo.OrdenTurnoTipoEstado_otteCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[OrdenTurnoNomenclador] CHECK CONSTRAINT [FK_dbo.OrdenTurnoNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoNomenclador_dbo.OrdenTurnoProcedimiento_orprCodigo] FOREIGN KEY([orprCodigo])
REFERENCES [dbo].[OrdenTurnoProcedimiento] ([orprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenTurnoNomenclador] CHECK CONSTRAINT [FK_dbo.OrdenTurnoNomenclador_dbo.OrdenTurnoProcedimiento_orprCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoProcedimiento_dbo.OrdenTurno_ortuCodigo] FOREIGN KEY([ortuCodigo])
REFERENCES [dbo].[OrdenTurno] ([ortuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenTurnoProcedimiento] CHECK CONSTRAINT [FK_dbo.OrdenTurnoProcedimiento_dbo.OrdenTurno_ortuCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrdenTurnoProcedimiento] CHECK CONSTRAINT [FK_dbo.OrdenTurnoProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoProcedimiento_dbo.Turno_turnCodigo] FOREIGN KEY([turnCodigo])
REFERENCES [dbo].[Turno] ([turnCodigo])
GO
ALTER TABLE [dbo].[OrdenTurnoProcedimiento] CHECK CONSTRAINT [FK_dbo.OrdenTurnoProcedimiento_dbo.Turno_turnCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoTipo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoTipo_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[OrdenTurnoTipo] CHECK CONSTRAINT [FK_dbo.OrdenTurnoTipo_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoTipoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoTipoProcedimiento_dbo.OrdenTurnoTipo_orttCodigo] FOREIGN KEY([orttCodigo])
REFERENCES [dbo].[OrdenTurnoTipo] ([orttCodigo])
GO
ALTER TABLE [dbo].[OrdenTurnoTipoProcedimiento] CHECK CONSTRAINT [FK_dbo.OrdenTurnoTipoProcedimiento_dbo.OrdenTurnoTipo_orttCodigo]
GO
ALTER TABLE [dbo].[OrdenTurnoTipoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrdenTurnoTipoProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[OrdenTurnoTipoProcedimiento] CHECK CONSTRAINT [FK_dbo.OrdenTurnoTipoProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Paciente_dbo.Persona_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_dbo.Paciente_dbo.Persona_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteAislamiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAislamiento_dbo.AspNetUsers_paaiUsuario] FOREIGN KEY([paaiUsuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PacienteAislamiento] CHECK CONSTRAINT [FK_dbo.PacienteAislamiento_dbo.AspNetUsers_paaiUsuario]
GO
ALTER TABLE [dbo].[PacienteAislamiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAislamiento_dbo.AspNetUsers_paaiUsuarioFin] FOREIGN KEY([paaiUsuarioFin])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PacienteAislamiento] CHECK CONSTRAINT [FK_dbo.PacienteAislamiento_dbo.AspNetUsers_paaiUsuarioFin]
GO
ALTER TABLE [dbo].[PacienteAislamiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAislamiento_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[PacienteAislamiento] CHECK CONSTRAINT [FK_dbo.PacienteAislamiento_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteAislamiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAislamiento_dbo.PacienteAislamientoTipo_paatCodigo] FOREIGN KEY([paatCodigo])
REFERENCES [dbo].[PacienteAislamientoTipo] ([paatCodigo])
GO
ALTER TABLE [dbo].[PacienteAislamiento] CHECK CONSTRAINT [FK_dbo.PacienteAislamiento_dbo.PacienteAislamientoTipo_paatCodigo]
GO
ALTER TABLE [dbo].[PacienteAlerta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAlerta_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[PacienteAlerta] CHECK CONSTRAINT [FK_dbo.PacienteAlerta_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[PacienteAlerta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAlerta_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteAlerta] CHECK CONSTRAINT [FK_dbo.PacienteAlerta_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteAlerta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAlerta_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteAlerta] CHECK CONSTRAINT [FK_dbo.PacienteAlerta_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteAlerta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAlerta_dbo.SubTipoAlertaPaciente_suapCodigo] FOREIGN KEY([suapCodigo])
REFERENCES [dbo].[SubTipoAlertaPaciente] ([suapCodigo])
GO
ALTER TABLE [dbo].[PacienteAlerta] CHECK CONSTRAINT [FK_dbo.PacienteAlerta_dbo.SubTipoAlertaPaciente_suapCodigo]
GO
ALTER TABLE [dbo].[PacienteAlerta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAlerta_dbo.TipoAlertaPaciente_tialCodigo] FOREIGN KEY([tialCodigo])
REFERENCES [dbo].[TipoAlertaPaciente] ([tialCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteAlerta] CHECK CONSTRAINT [FK_dbo.PacienteAlerta_dbo.TipoAlertaPaciente_tialCodigo]
GO
ALTER TABLE [dbo].[PacienteAntecedente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAntecedente_dbo.Especialidad_espeCodigo] FOREIGN KEY([espeCodigo])
REFERENCES [dbo].[Especialidad] ([espeCodigo])
GO
ALTER TABLE [dbo].[PacienteAntecedente] CHECK CONSTRAINT [FK_dbo.PacienteAntecedente_dbo.Especialidad_espeCodigo]
GO
ALTER TABLE [dbo].[PacienteAntecedente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAntecedente_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteAntecedente] CHECK CONSTRAINT [FK_dbo.PacienteAntecedente_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteAntecedente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAntecedente_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[PacienteAntecedente] CHECK CONSTRAINT [FK_dbo.PacienteAntecedente_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteAntecedente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAntecedente_dbo.Snomed_snomCodigo] FOREIGN KEY([snomCodigo])
REFERENCES [dbo].[Snomed] ([snomCodigo])
GO
ALTER TABLE [dbo].[PacienteAntecedente] CHECK CONSTRAINT [FK_dbo.PacienteAntecedente_dbo.Snomed_snomCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivo_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
GO
ALTER TABLE [dbo].[PacienteArchivo] CHECK CONSTRAINT [FK_dbo.PacienteArchivo_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivo_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[PacienteArchivo] CHECK CONSTRAINT [FK_dbo.PacienteArchivo_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivo_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteArchivo] CHECK CONSTRAINT [FK_dbo.PacienteArchivo_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivo_dbo.PacienteArchivoGrupo_paagCodigo] FOREIGN KEY([paagCodigo])
REFERENCES [dbo].[PacienteArchivoGrupo] ([paagCodigo])
GO
ALTER TABLE [dbo].[PacienteArchivo] CHECK CONSTRAINT [FK_dbo.PacienteArchivo_dbo.PacienteArchivoGrupo_paagCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivo_dbo.PacienteInforme_painCodigo] FOREIGN KEY([painCodigo])
REFERENCES [dbo].[PacienteInforme] ([painCodigo])
GO
ALTER TABLE [dbo].[PacienteArchivo] CHECK CONSTRAINT [FK_dbo.PacienteArchivo_dbo.PacienteInforme_painCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivo_dbo.PacienteNomenclador_panoCodigo] FOREIGN KEY([panoCodigo])
REFERENCES [dbo].[PacienteNomenclador] ([panoCodigo])
GO
ALTER TABLE [dbo].[PacienteArchivo] CHECK CONSTRAINT [FK_dbo.PacienteArchivo_dbo.PacienteNomenclador_panoCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivo_dbo.QuirofanoTurno_qutuCodigo] FOREIGN KEY([qutuCodigo])
REFERENCES [dbo].[QuirofanoTurno] ([qutuCodigo])
GO
ALTER TABLE [dbo].[PacienteArchivo] CHECK CONSTRAINT [FK_dbo.PacienteArchivo_dbo.QuirofanoTurno_qutuCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivo_dbo.TipoArchivoPaciente_tapaCodigo] FOREIGN KEY([tapaCodigo])
REFERENCES [dbo].[TipoArchivoPaciente] ([tapaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteArchivo] CHECK CONSTRAINT [FK_dbo.PacienteArchivo_dbo.TipoArchivoPaciente_tapaCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivo_dbo.Turno_turnCodigo] FOREIGN KEY([turnCodigo])
REFERENCES [dbo].[Turno] ([turnCodigo])
GO
ALTER TABLE [dbo].[PacienteArchivo] CHECK CONSTRAINT [FK_dbo.PacienteArchivo_dbo.Turno_turnCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivoComentario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivoComentario_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteArchivoComentario] CHECK CONSTRAINT [FK_dbo.PacienteArchivoComentario_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteArchivoComentario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteArchivoComentario_dbo.PacienteArchivo_paarCodigo] FOREIGN KEY([paarCodigo])
REFERENCES [dbo].[PacienteArchivo] ([paarCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteArchivoComentario] CHECK CONSTRAINT [FK_dbo.PacienteArchivoComentario_dbo.PacienteArchivo_paarCodigo]
GO
ALTER TABLE [dbo].[PacienteAutorizacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAutorizacion_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[PacienteAutorizacion] CHECK CONSTRAINT [FK_dbo.PacienteAutorizacion_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[PacienteAutorizacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAutorizacion_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[PacienteAutorizacion] CHECK CONSTRAINT [FK_dbo.PacienteAutorizacion_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteAutorizacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAutorizacion_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[PacienteAutorizacion] CHECK CONSTRAINT [FK_dbo.PacienteAutorizacion_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[PacienteAutorizacionNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAutorizacionNomenclador_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteAutorizacionNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteAutorizacionNomenclador_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteAutorizacionNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAutorizacionNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[PacienteAutorizacionNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteAutorizacionNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[PacienteAutorizacionNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteAutorizacionNomenclador_dbo.PacienteAutorizacion_pacaCodigo] FOREIGN KEY([pacaCodigo])
REFERENCES [dbo].[PacienteAutorizacion] ([pacaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteAutorizacionNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteAutorizacionNomenclador_dbo.PacienteAutorizacion_pacaCodigo]
GO
ALTER TABLE [dbo].[PacienteBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteBloqueo_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteBloqueo] CHECK CONSTRAINT [FK_dbo.PacienteBloqueo_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteBloqueo_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteBloqueo] CHECK CONSTRAINT [FK_dbo.PacienteBloqueo_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteBloqueo_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[PacienteBloqueo] CHECK CONSTRAINT [FK_dbo.PacienteBloqueo_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[PacienteCategoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteCategoria_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteCategoria] CHECK CONSTRAINT [FK_dbo.PacienteCategoria_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteCategoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteCategoria_dbo.TipoCategoriaPaciente_tcapCodigo] FOREIGN KEY([tcapCodigo])
REFERENCES [dbo].[TipoCategoriaPaciente] ([tcapCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteCategoria] CHECK CONSTRAINT [FK_dbo.PacienteCategoria_dbo.TipoCategoriaPaciente_tcapCodigo]
GO
ALTER TABLE [dbo].[PacienteCertificado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteCertificado_dbo.CertificadoTipo_cetiCodigo] FOREIGN KEY([cetiCodigo])
REFERENCES [dbo].[CertificadoTipo] ([cetiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteCertificado] CHECK CONSTRAINT [FK_dbo.PacienteCertificado_dbo.CertificadoTipo_cetiCodigo]
GO
ALTER TABLE [dbo].[PacienteCertificado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteCertificado_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteCertificado] CHECK CONSTRAINT [FK_dbo.PacienteCertificado_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteCertificado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteCertificado_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteCertificado] CHECK CONSTRAINT [FK_dbo.PacienteCertificado_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteCobertura_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteCobertura] CHECK CONSTRAINT [FK_dbo.PacienteCobertura_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteCobertura_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteCobertura] CHECK CONSTRAINT [FK_dbo.PacienteCobertura_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[PacienteCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteCobertura_dbo.TipoContratacion_tconCodigo] FOREIGN KEY([tconCodigo])
REFERENCES [dbo].[TipoContratacion] ([tconCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteCobertura] CHECK CONSTRAINT [FK_dbo.PacienteCobertura_dbo.TipoContratacion_tconCodigo]
GO
ALTER TABLE [dbo].[PacienteComanda]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteComanda_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PacienteComanda] CHECK CONSTRAINT [FK_dbo.PacienteComanda_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[PacienteComanda]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteComanda_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
GO
ALTER TABLE [dbo].[PacienteComanda] CHECK CONSTRAINT [FK_dbo.PacienteComanda_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[PacienteComandaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.Alimento_alimCodigo] FOREIGN KEY([alimCodigo])
REFERENCES [dbo].[Alimento] ([alimCodigo])
GO
ALTER TABLE [dbo].[PacienteComandaItem] CHECK CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.Alimento_alimCodigo]
GO
ALTER TABLE [dbo].[PacienteComandaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.Comida_comiCodigo] FOREIGN KEY([comiCodigo])
REFERENCES [dbo].[Comida] ([comiCodigo])
GO
ALTER TABLE [dbo].[PacienteComandaItem] CHECK CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.Comida_comiCodigo]
GO
ALTER TABLE [dbo].[PacienteComandaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.ComidaTipo_cotiCodigo] FOREIGN KEY([cotiCodigo])
REFERENCES [dbo].[ComidaTipo] ([cotiCodigo])
GO
ALTER TABLE [dbo].[PacienteComandaItem] CHECK CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.ComidaTipo_cotiCodigo]
GO
ALTER TABLE [dbo].[PacienteComandaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.Menu_menuCodigo] FOREIGN KEY([menuCodigo])
REFERENCES [dbo].[Menu] ([menuCodigo])
GO
ALTER TABLE [dbo].[PacienteComandaItem] CHECK CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.Menu_menuCodigo]
GO
ALTER TABLE [dbo].[PacienteComandaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.MenuTipo_metiCodigo] FOREIGN KEY([metiCodigo])
REFERENCES [dbo].[MenuTipo] ([metiCodigo])
GO
ALTER TABLE [dbo].[PacienteComandaItem] CHECK CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.MenuTipo_metiCodigo]
GO
ALTER TABLE [dbo].[PacienteComandaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.PacienteComanda_pacmCodigo] FOREIGN KEY([pacmCodigo])
REFERENCES [dbo].[PacienteComanda] ([pacmCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteComandaItem] CHECK CONSTRAINT [FK_dbo.PacienteComandaItem_dbo.PacienteComanda_pacmCodigo]
GO
ALTER TABLE [dbo].[PacienteEsquema]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteEsquema_dbo.Esquema_esquCodigo] FOREIGN KEY([esquCodigo])
REFERENCES [dbo].[Esquema] ([esquCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteEsquema] CHECK CONSTRAINT [FK_dbo.PacienteEsquema_dbo.Esquema_esquCodigo]
GO
ALTER TABLE [dbo].[PacienteEsquema]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteEsquema_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[PacienteEsquema] CHECK CONSTRAINT [FK_dbo.PacienteEsquema_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[PacienteEsquema]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteEsquema_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteEsquema] CHECK CONSTRAINT [FK_dbo.PacienteEsquema_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteEsquema]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteEsquema_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteEsquema] CHECK CONSTRAINT [FK_dbo.PacienteEsquema_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteEsquema]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteEsquema_dbo.QuirofanoTurno_qutuCodigo] FOREIGN KEY([qutuCodigo])
REFERENCES [dbo].[QuirofanoTurno] ([qutuCodigo])
GO
ALTER TABLE [dbo].[PacienteEsquema] CHECK CONSTRAINT [FK_dbo.PacienteEsquema_dbo.QuirofanoTurno_qutuCodigo]
GO
ALTER TABLE [dbo].[PacienteEsquemaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteEsquemaItem_dbo.PacienteEsquema_paesCodigo] FOREIGN KEY([paesCodigo])
REFERENCES [dbo].[PacienteEsquema] ([paesCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteEsquemaItem] CHECK CONSTRAINT [FK_dbo.PacienteEsquemaItem_dbo.PacienteEsquema_paesCodigo]
GO
ALTER TABLE [dbo].[PacienteEsquemaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteEsquemaItem_dbo.TipoItemEsquema_tiesCodigo] FOREIGN KEY([tiesCodigo])
REFERENCES [dbo].[TipoItemEsquema] ([tiesCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteEsquemaItem] CHECK CONSTRAINT [FK_dbo.PacienteEsquemaItem_dbo.TipoItemEsquema_tiesCodigo]
GO
ALTER TABLE [dbo].[PacienteInforme]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteInforme_dbo.Medico_Medico_mediCodigo] FOREIGN KEY([Medico_mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteInforme] CHECK CONSTRAINT [FK_dbo.PacienteInforme_dbo.Medico_Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteInforme]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteInforme_dbo.Medico_mediCodigo1] FOREIGN KEY([mediCodigo1])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteInforme] CHECK CONSTRAINT [FK_dbo.PacienteInforme_dbo.Medico_mediCodigo1]
GO
ALTER TABLE [dbo].[PacienteInforme]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteInforme_dbo.Medico_mediCodigo2] FOREIGN KEY([mediCodigo2])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteInforme] CHECK CONSTRAINT [FK_dbo.PacienteInforme_dbo.Medico_mediCodigo2]
GO
ALTER TABLE [dbo].[PacienteInforme]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteInforme_dbo.Medico_mediCodigo3] FOREIGN KEY([mediCodigo3])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteInforme] CHECK CONSTRAINT [FK_dbo.PacienteInforme_dbo.Medico_mediCodigo3]
GO
ALTER TABLE [dbo].[PacienteInforme]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteInforme_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteInforme] CHECK CONSTRAINT [FK_dbo.PacienteInforme_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteInformeEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteInformeEfector_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteInformeEfector] CHECK CONSTRAINT [FK_dbo.PacienteInformeEfector_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteInformeEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteInformeEfector_dbo.PacienteInforme_painCodigo] FOREIGN KEY([painCodigo])
REFERENCES [dbo].[PacienteInforme] ([painCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteInformeEfector] CHECK CONSTRAINT [FK_dbo.PacienteInformeEfector_dbo.PacienteInforme_painCodigo]
GO
ALTER TABLE [dbo].[PacienteInformeEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteInformeEfector_dbo.TipoColumnaNomenclador_tcnoCodigo] FOREIGN KEY([tcnoCodigo])
REFERENCES [dbo].[TipoColumnaNomenclador] ([tcnoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteInformeEfector] CHECK CONSTRAINT [FK_dbo.PacienteInformeEfector_dbo.TipoColumnaNomenclador_tcnoCodigo]
GO
ALTER TABLE [dbo].[PacienteInformeProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteInformeProcedimiento_dbo.PacienteInforme_painCodigo] FOREIGN KEY([painCodigo])
REFERENCES [dbo].[PacienteInforme] ([painCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteInformeProcedimiento] CHECK CONSTRAINT [FK_dbo.PacienteInformeProcedimiento_dbo.PacienteInforme_painCodigo]
GO
ALTER TABLE [dbo].[PacienteInformeProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteInformeProcedimiento_dbo.PacienteNomenclador_panoCodigo] FOREIGN KEY([panoCodigo])
REFERENCES [dbo].[PacienteNomenclador] ([panoCodigo])
GO
ALTER TABLE [dbo].[PacienteInformeProcedimiento] CHECK CONSTRAINT [FK_dbo.PacienteInformeProcedimiento_dbo.PacienteNomenclador_panoCodigo]
GO
ALTER TABLE [dbo].[PacienteMedicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.ArticuloComercial_arcoCodigo] FOREIGN KEY([arcoCodigo])
REFERENCES [dbo].[ArticuloComercial] ([arcoCodigo])
GO
ALTER TABLE [dbo].[PacienteMedicacion] CHECK CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.ArticuloComercial_arcoCodigo]
GO
ALTER TABLE [dbo].[PacienteMedicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
GO
ALTER TABLE [dbo].[PacienteMedicacion] CHECK CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[PacienteMedicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.Especialidad_espeCodigo] FOREIGN KEY([espeCodigo])
REFERENCES [dbo].[Especialidad] ([espeCodigo])
GO
ALTER TABLE [dbo].[PacienteMedicacion] CHECK CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.Especialidad_espeCodigo]
GO
ALTER TABLE [dbo].[PacienteMedicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[PacienteMedicacion] CHECK CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[PacienteMedicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteMedicacion] CHECK CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteMedicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[PacienteMedicacion] CHECK CONSTRAINT [FK_dbo.PacienteMedicacion_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteMensaje]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteMensaje_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteMensaje] CHECK CONSTRAINT [FK_dbo.PacienteMensaje_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteModulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteModulo_dbo.ModuloVersion_moveCodigo] FOREIGN KEY([moveCodigo])
REFERENCES [dbo].[ModuloVersion] ([moveCodigo])
GO
ALTER TABLE [dbo].[PacienteModulo] CHECK CONSTRAINT [FK_dbo.PacienteModulo_dbo.ModuloVersion_moveCodigo]
GO
ALTER TABLE [dbo].[PacienteModulo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteModulo_dbo.PacienteNomenclador_pamoCodigo] FOREIGN KEY([pamoCodigo])
REFERENCES [dbo].[PacienteNomenclador] ([panoCodigo])
GO
ALTER TABLE [dbo].[PacienteModulo] CHECK CONSTRAINT [FK_dbo.PacienteModulo_dbo.PacienteNomenclador_pamoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.ArticuloKit_arkiCodigo] FOREIGN KEY([arkiCodigo])
REFERENCES [dbo].[ArticuloKit] ([arkiCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.ArticuloKit_arkiCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Caja_cajaCodigo] FOREIGN KEY([cajaCodigo])
REFERENCES [dbo].[Caja] ([cajaCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Caja_cajaCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.CentroCosto_cecoCodigo] FOREIGN KEY([cecoCodigo])
REFERENCES [dbo].[CentroCosto] ([cecoCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.CentroCosto_cecoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Convenio_convCodigo] FOREIGN KEY([convCodigo])
REFERENCES [dbo].[Convenio] ([convCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Convenio_convCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Derivador_deriCodigo] FOREIGN KEY([deriCodigo])
REFERENCES [dbo].[Derivador] ([deriCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Derivador_deriCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Emergencia_emerCodigo] FOREIGN KEY([emerCodigo])
REFERENCES [dbo].[Emergencia] ([emerCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Emergencia_emerCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.EntradaIndicacion_eninCodigo] FOREIGN KEY([eninCodigo])
REFERENCES [dbo].[EntradaIndicacion] ([eninCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.EntradaIndicacion_eninCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.EntradaMedicamento_enmeCodigo] FOREIGN KEY([enmeCodigo])
REFERENCES [dbo].[EntradaMedicamento] ([enmeCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.EntradaMedicamento_enmeCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.EntradaProcedimiento_enprCodigo] FOREIGN KEY([enprCodigo])
REFERENCES [dbo].[EntradaProcedimiento] ([enprCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.EntradaProcedimiento_enprCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.LoteFacturacion_lofaCodigo] FOREIGN KEY([lofaCodigo])
REFERENCES [dbo].[LoteFacturacion] ([lofaCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.LoteFacturacion_lofaCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.LoteFacturacion_lofaCodigoPaciente] FOREIGN KEY([lofaCodigoPaciente])
REFERENCES [dbo].[LoteFacturacion] ([lofaCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.LoteFacturacion_lofaCodigoPaciente]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.OrdenTurnoNomenclador_ortnCodigo] FOREIGN KEY([ortnCodigo])
REFERENCES [dbo].[OrdenTurnoNomenclador] ([ortnCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.OrdenTurnoNomenclador_ortnCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.OrdenTurnoProcedimiento_orprCodigo] FOREIGN KEY([orprCodigo])
REFERENCES [dbo].[OrdenTurnoProcedimiento] ([orprCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.OrdenTurnoProcedimiento_orprCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteAutorizacion_pacaCodigo] FOREIGN KEY([pacaCodigo])
REFERENCES [dbo].[PacienteAutorizacion] ([pacaCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteAutorizacion_pacaCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteModulo_pamoCodigoAfectado] FOREIGN KEY([pamoCodigoAfectado])
REFERENCES [dbo].[PacienteModulo] ([pamoCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteModulo_pamoCodigoAfectado]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteNomencladorCierre_pancCodigo] FOREIGN KEY([pancCodigo])
REFERENCES [dbo].[PacienteNomencladorCierre] ([pancCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteNomencladorCierre_pancCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteNomencladorCierre_pancCodigoPaciente] FOREIGN KEY([pancCodigoPaciente])
REFERENCES [dbo].[PacienteNomencladorCierre] ([pancCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteNomencladorCierre_pancCodigoPaciente]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteTope_patoCodigo] FOREIGN KEY([patoCodigo])
REFERENCES [dbo].[PacienteTope] ([patoCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PacienteTope_patoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PresupuestoItem_pritCodigo] FOREIGN KEY([pritCodigo])
REFERENCES [dbo].[PresupuestoItem] ([pritCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.PresupuestoItem_pritCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.QuirofanoTurno_qutuCodigo] FOREIGN KEY([qutuCodigo])
REFERENCES [dbo].[QuirofanoTurno] ([qutuCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.QuirofanoTurno_qutuCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.RemitoItem_reitCodigo] FOREIGN KEY([reitCodigo])
REFERENCES [dbo].[RemitoItem] ([reitCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.RemitoItem_reitCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.TipoContratacion_tconCodigo] FOREIGN KEY([tconCodigo])
REFERENCES [dbo].[TipoContratacion] ([tconCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.TipoContratacion_tconCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.TipoNoFacturacion_tnfaCodigo] FOREIGN KEY([tnfaCodigo])
REFERENCES [dbo].[TipoNoFacturacion] ([tnfaCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.TipoNoFacturacion_tnfaCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Turno_turnCodigo] FOREIGN KEY([turnCodigo])
REFERENCES [dbo].[Turno] ([turnCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Turno_turnCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.TurnoProcedimiento_tuprCodigo] FOREIGN KEY([tuprCodigo])
REFERENCES [dbo].[TurnoProcedimiento] ([tuprCodigo])
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.TurnoProcedimiento_tuprCodigo]
GO
ALTER TABLE [dbo].[PacienteNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomenclador] CHECK CONSTRAINT [FK_dbo.PacienteNomenclador_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorCierre_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorCierre_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorCierre_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorCierre_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorCierre_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorCierre_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorCierre_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorCierre_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorCierre_dbo.QuirofanoTurno_qutuCodigo] FOREIGN KEY([qutuCodigo])
REFERENCES [dbo].[QuirofanoTurno] ([qutuCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorCierre] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorCierre_dbo.QuirofanoTurno_qutuCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorDebito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorDebito_dbo.Debito_debiCodigo] FOREIGN KEY([debiCodigo])
REFERENCES [dbo].[Debito] ([debiCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorDebito] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorDebito_dbo.Debito_debiCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorDebito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorDebito_dbo.MotivoDebito_modeCodigo] FOREIGN KEY([modeCodigo])
REFERENCES [dbo].[MotivoDebito] ([modeCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorDebito] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorDebito_dbo.MotivoDebito_modeCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorDebito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorDebito_dbo.PacienteNomenclador_panoCodigo] FOREIGN KEY([panoCodigo])
REFERENCES [dbo].[PacienteNomenclador] ([panoCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorDebito] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorDebito_dbo.PacienteNomenclador_panoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.ConvenioProfesional_coprCodigo] FOREIGN KEY([coprCodigo])
REFERENCES [dbo].[ConvenioProfesional] ([coprCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.ConvenioProfesional_coprCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.Derivador_deriCodigo] FOREIGN KEY([deriCodigo])
REFERENCES [dbo].[Derivador] ([deriCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.Derivador_deriCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.Liquidacion_liquCodigo] FOREIGN KEY([liquCodigo])
REFERENCES [dbo].[Liquidacion] ([liquCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.Liquidacion_liquCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.PacienteNomenclador_panoCodigo] FOREIGN KEY([panoCodigo])
REFERENCES [dbo].[PacienteNomenclador] ([panoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.PacienteNomenclador_panoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.PacienteNomencladorDebito_pandCodigo] FOREIGN KEY([pandCodigo])
REFERENCES [dbo].[PacienteNomencladorDebito] ([pandCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.PacienteNomencladorDebito_pandCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.PacienteNomencladorRefacturacion_panrCodigo] FOREIGN KEY([panrCodigo])
REFERENCES [dbo].[PacienteNomencladorRefacturacion] ([panrCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.PacienteNomencladorRefacturacion_panrCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.TipoColumnaNomenclador_tcnoCodigo] FOREIGN KEY([tcnoCodigo])
REFERENCES [dbo].[TipoColumnaNomenclador] ([tcnoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.TipoColumnaNomenclador_tcnoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.TipoNoLiquidacion_tnliCodigo] FOREIGN KEY([tnliCodigo])
REFERENCES [dbo].[TipoNoLiquidacion] ([tnliCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorEfector] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEfector_dbo.TipoNoLiquidacion_tnliCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEntidadFacturable_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorEntidadFacturable] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEntidadFacturable_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorEntidadFacturable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorEntidadFacturable_dbo.PacienteNomenclador_panoCodigo] FOREIGN KEY([panoCodigo])
REFERENCES [dbo].[PacienteNomenclador] ([panoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomencladorEntidadFacturable] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorEntidadFacturable_dbo.PacienteNomenclador_panoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorGasto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorGasto_dbo.PacienteNomenclador_panoCodigo] FOREIGN KEY([panoCodigo])
REFERENCES [dbo].[PacienteNomenclador] ([panoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomencladorGasto] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorGasto_dbo.PacienteNomenclador_panoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorGasto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorGasto_dbo.TipoGastoNomenclador_tgasCodigo] FOREIGN KEY([tgasCodigo])
REFERENCES [dbo].[TipoGastoNomenclador] ([tgasCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorGasto] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorGasto_dbo.TipoGastoNomenclador_tgasCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.MotivoRefacturacion_moreCodigo] FOREIGN KEY([moreCodigo])
REFERENCES [dbo].[MotivoRefacturacion] ([moreCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.MotivoRefacturacion_moreCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.PacienteNomenclador_panoCodigo] FOREIGN KEY([panoCodigo])
REFERENCES [dbo].[PacienteNomenclador] ([panoCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.PacienteNomenclador_panoCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.PacienteNomencladorDebito_pandCodigo] FOREIGN KEY([pandCodigo])
REFERENCES [dbo].[PacienteNomencladorDebito] ([pandCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.PacienteNomencladorDebito_pandCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.Refacturacion_refaCodigo] FOREIGN KEY([refaCodigo])
REFERENCES [dbo].[Refacturacion] ([refaCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.Refacturacion_refaCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.TipoContratacion_tconCodigo] FOREIGN KEY([tconCodigo])
REFERENCES [dbo].[TipoContratacion] ([tconCodigo])
GO
ALTER TABLE [dbo].[PacienteNomencladorRefacturacion] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorRefacturacion_dbo.TipoContratacion_tconCodigo]
GO
ALTER TABLE [dbo].[PacienteNomencladorTransaccion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteNomencladorTransaccion_dbo.PacienteNomenclador_panoCodigo] FOREIGN KEY([panoCodigo])
REFERENCES [dbo].[PacienteNomenclador] ([panoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteNomencladorTransaccion] CHECK CONSTRAINT [FK_dbo.PacienteNomencladorTransaccion_dbo.PacienteNomenclador_panoCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontograma]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontograma] CHECK CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontograma]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontograma] CHECK CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontograma]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteOdontograma] CHECK CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontograma]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.PacienteOdontograma_paodOrigen] FOREIGN KEY([paodOrigen])
REFERENCES [dbo].[PacienteOdontograma] ([paodCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontograma] CHECK CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.PacienteOdontograma_paodOrigen]
GO
ALTER TABLE [dbo].[PacienteOdontograma]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.PacienteOdontogramaTipo_potiCodigo] FOREIGN KEY([potiCodigo])
REFERENCES [dbo].[PacienteOdontogramaTipo] ([potiCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontograma] CHECK CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.PacienteOdontogramaTipo_potiCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontograma]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.QuirofanoTurno_qutuCodigo] FOREIGN KEY([qutuCodigo])
REFERENCES [dbo].[QuirofanoTurno] ([qutuCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontograma] CHECK CONSTRAINT [FK_dbo.PacienteOdontograma_dbo.QuirofanoTurno_qutuCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem] CHECK CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.PacienteOdontograma_paodCodigo] FOREIGN KEY([paodCodigo])
REFERENCES [dbo].[PacienteOdontograma] ([paodCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem] CHECK CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.PacienteOdontograma_paodCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.PiezaDental_pideCodigo] FOREIGN KEY([pideCodigo])
REFERENCES [dbo].[PiezaDental] ([pideCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem] CHECK CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.PiezaDental_pideCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.PiezaDentalMarca_pdmaCodigo] FOREIGN KEY([pdmaCodigo])
REFERENCES [dbo].[PiezaDentalMarca] ([pdmaCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem] CHECK CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.PiezaDentalMarca_pdmaCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.PiezaDentalMarcaOpcion_pdmoCodigo] FOREIGN KEY([pdmoCodigo])
REFERENCES [dbo].[PiezaDentalMarcaOpcion] ([pdmoCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem] CHECK CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.PiezaDentalMarcaOpcion_pdmoCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.PiezaDentalObjeto_pdobCodigo] FOREIGN KEY([pdobCodigo])
REFERENCES [dbo].[PiezaDentalObjeto] ([pdobCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem] CHECK CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.PiezaDentalObjeto_pdobCodigo]
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[PacienteOdontogramaItem] CHECK CONSTRAINT [FK_dbo.PacienteOdontogramaItem_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[PacientePermisoEspecial]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacientePermisoEspecial_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacientePermisoEspecial] CHECK CONSTRAINT [FK_dbo.PacientePermisoEspecial_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[PacientePermisoEspecial]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacientePermisoEspecial_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacientePermisoEspecial] CHECK CONSTRAINT [FK_dbo.PacientePermisoEspecial_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacientePermisoEspecial]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacientePermisoEspecial_dbo.PacientePermisoEspecialTipo_ppetCodigo] FOREIGN KEY([ppetCodigo])
REFERENCES [dbo].[PacientePermisoEspecialTipo] ([ppetCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacientePermisoEspecial] CHECK CONSTRAINT [FK_dbo.PacientePermisoEspecial_dbo.PacientePermisoEspecialTipo_ppetCodigo]
GO
ALTER TABLE [dbo].[PacientePuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacientePuesto_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PacientePuesto] CHECK CONSTRAINT [FK_dbo.PacientePuesto_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[PacientePuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacientePuesto_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[PacientePuesto] CHECK CONSTRAINT [FK_dbo.PacientePuesto_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[PacientePuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacientePuesto_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacientePuesto] CHECK CONSTRAINT [FK_dbo.PacientePuesto_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacientePuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacientePuesto_dbo.Puesto_puesCodigo] FOREIGN KEY([puesCodigo])
REFERENCES [dbo].[Puesto] ([puesCodigo])
GO
ALTER TABLE [dbo].[PacientePuesto] CHECK CONSTRAINT [FK_dbo.PacientePuesto_dbo.Puesto_puesCodigo]
GO
ALTER TABLE [dbo].[PacientePuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacientePuesto_dbo.Turno_turnCodigo] FOREIGN KEY([turnCodigo])
REFERENCES [dbo].[Turno] ([turnCodigo])
GO
ALTER TABLE [dbo].[PacientePuesto] CHECK CONSTRAINT [FK_dbo.PacientePuesto_dbo.Turno_turnCodigo]
GO
ALTER TABLE [dbo].[PacienteRegistroContacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PacienteRegistroContacto] CHECK CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[PacienteRegistroContacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteRegistroContacto] CHECK CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteRegistroContacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.QuirofanoTurno_qutuCodigo] FOREIGN KEY([qutuCodigo])
REFERENCES [dbo].[QuirofanoTurno] ([qutuCodigo])
GO
ALTER TABLE [dbo].[PacienteRegistroContacto] CHECK CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.QuirofanoTurno_qutuCodigo]
GO
ALTER TABLE [dbo].[PacienteRegistroContacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.TipoContacto_ticoCodigo] FOREIGN KEY([ticoCodigo])
REFERENCES [dbo].[TipoContacto] ([ticoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteRegistroContacto] CHECK CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.TipoContacto_ticoCodigo]
GO
ALTER TABLE [dbo].[PacienteRegistroContacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.Turno_turnCodigo] FOREIGN KEY([turnCodigo])
REFERENCES [dbo].[Turno] ([turnCodigo])
GO
ALTER TABLE [dbo].[PacienteRegistroContacto] CHECK CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.Turno_turnCodigo]
GO
ALTER TABLE [dbo].[PacienteRegistroContacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.TurnoAuditoria_tuauCodigo] FOREIGN KEY([tuauCodigo])
REFERENCES [dbo].[TurnoAuditoria] ([tuauCodigo])
GO
ALTER TABLE [dbo].[PacienteRegistroContacto] CHECK CONSTRAINT [FK_dbo.PacienteRegistroContacto_dbo.TurnoAuditoria_tuauCodigo]
GO
ALTER TABLE [dbo].[PacienteTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteTag_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteTag] CHECK CONSTRAINT [FK_dbo.PacienteTag_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteTag_dbo.Tag_tagCodigo] FOREIGN KEY([tagCodigo])
REFERENCES [dbo].[Tag] ([tagCodigo])
GO
ALTER TABLE [dbo].[PacienteTag] CHECK CONSTRAINT [FK_dbo.PacienteTag_dbo.Tag_tagCodigo]
GO
ALTER TABLE [dbo].[PacienteTaller]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteTaller_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteTaller] CHECK CONSTRAINT [FK_dbo.PacienteTaller_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteTaller]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteTaller_dbo.Taller_tallCodigo] FOREIGN KEY([tallCodigo])
REFERENCES [dbo].[Taller] ([tallCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteTaller] CHECK CONSTRAINT [FK_dbo.PacienteTaller_dbo.Taller_tallCodigo]
GO
ALTER TABLE [dbo].[PacienteTope]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteTope_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[PacienteTope] CHECK CONSTRAINT [FK_dbo.PacienteTope_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[PacienteTope]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteTope_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[PacienteTope] CHECK CONSTRAINT [FK_dbo.PacienteTope_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteTope]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteTope_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[PacienteTope] CHECK CONSTRAINT [FK_dbo.PacienteTope_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[PacienteTope]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteTope_dbo.Tope_topeCodigo] FOREIGN KEY([topeCodigo])
REFERENCES [dbo].[Tope] ([topeCodigo])
GO
ALTER TABLE [dbo].[PacienteTope] CHECK CONSTRAINT [FK_dbo.PacienteTope_dbo.Tope_topeCodigo]
GO
ALTER TABLE [dbo].[PacienteVacuna]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteVacuna_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteVacuna] CHECK CONSTRAINT [FK_dbo.PacienteVacuna_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteVacuna]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteVacuna_dbo.Vacuna_vacuCodigo] FOREIGN KEY([vacuCodigo])
REFERENCES [dbo].[Vacuna] ([vacuCodigo])
GO
ALTER TABLE [dbo].[PacienteVacuna] CHECK CONSTRAINT [FK_dbo.PacienteVacuna_dbo.Vacuna_vacuCodigo]
GO
ALTER TABLE [dbo].[PacienteVacuna]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteVacuna_dbo.VacunaDosis_vadoCodigo] FOREIGN KEY([vadoCodigo])
REFERENCES [dbo].[VacunaDosis] ([vadoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteVacuna] CHECK CONSTRAINT [FK_dbo.PacienteVacuna_dbo.VacunaDosis_vadoCodigo]
GO
ALTER TABLE [dbo].[PacienteVacuna]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteVacuna_dbo.VacunaRangoEtario_vareCodigo] FOREIGN KEY([vareCodigo])
REFERENCES [dbo].[VacunaRangoEtario] ([vareCodigo])
GO
ALTER TABLE [dbo].[PacienteVacuna] CHECK CONSTRAINT [FK_dbo.PacienteVacuna_dbo.VacunaRangoEtario_vareCodigo]
GO
ALTER TABLE [dbo].[PacienteVinculo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteVinculo_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PacienteVinculo] CHECK CONSTRAINT [FK_dbo.PacienteVinculo_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[PacienteVinculo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteVinculo_dbo.Persona_persCodigo] FOREIGN KEY([persCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[PacienteVinculo] CHECK CONSTRAINT [FK_dbo.PacienteVinculo_dbo.Persona_persCodigo]
GO
ALTER TABLE [dbo].[PacienteVinculo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PacienteVinculo_dbo.VinculoPaciente_vipaCodigo] FOREIGN KEY([vipaCodigo])
REFERENCES [dbo].[VinculoPaciente] ([vipaCodigo])
GO
ALTER TABLE [dbo].[PacienteVinculo] CHECK CONSTRAINT [FK_dbo.PacienteVinculo_dbo.VinculoPaciente_vipaCodigo]
GO
ALTER TABLE [dbo].[PaisCUIT]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PaisCUIT_dbo.Pais_paisCodigo] FOREIGN KEY([paisCodigo])
REFERENCES [dbo].[Pais] ([paisCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaisCUIT] CHECK CONSTRAINT [FK_dbo.PaisCUIT_dbo.Pais_paisCodigo]
GO
ALTER TABLE [dbo].[PaisCUIT]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PaisCUIT_dbo.TipoPersona_tperCodigo] FOREIGN KEY([tperCodigo])
REFERENCES [dbo].[TipoPersona] ([tperCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PaisCUIT] CHECK CONSTRAINT [FK_dbo.PaisCUIT_dbo.TipoPersona_tperCodigo]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pedido_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_dbo.Pedido_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pedido_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_dbo.Pedido_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pedido_dbo.Deposito_depoCodigoDestino] FOREIGN KEY([depoCodigoDestino])
REFERENCES [dbo].[Deposito] ([depoCodigo])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_dbo.Pedido_dbo.Deposito_depoCodigoDestino]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pedido_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_dbo.Pedido_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pedido_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_dbo.Pedido_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pedido_dbo.PedidoTipo_petiCodigo] FOREIGN KEY([petiCodigo])
REFERENCES [dbo].[PedidoTipo] ([petiCodigo])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_dbo.Pedido_dbo.PedidoTipo_petiCodigo]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pedido_dbo.Proveedor_prveCodigo] FOREIGN KEY([prveCodigo])
REFERENCES [dbo].[Proveedor] ([prveCodigo])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_dbo.Pedido_dbo.Proveedor_prveCodigo]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pedido_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_dbo.Pedido_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[PedidoEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PedidoEstado_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PedidoEstado] CHECK CONSTRAINT [FK_dbo.PedidoEstado_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[PedidoEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PedidoEstado_dbo.Pedido_pediCodigo] FOREIGN KEY([pediCodigo])
REFERENCES [dbo].[Pedido] ([pediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PedidoEstado] CHECK CONSTRAINT [FK_dbo.PedidoEstado_dbo.Pedido_pediCodigo]
GO
ALTER TABLE [dbo].[PedidoEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PedidoEstado_dbo.PedidoEstadoTipo_peetCodigo] FOREIGN KEY([peetCodigo])
REFERENCES [dbo].[PedidoEstadoTipo] ([peetCodigo])
GO
ALTER TABLE [dbo].[PedidoEstado] CHECK CONSTRAINT [FK_dbo.PedidoEstado_dbo.PedidoEstadoTipo_peetCodigo]
GO
ALTER TABLE [dbo].[PedidoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PedidoItem_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[PedidoItem] CHECK CONSTRAINT [FK_dbo.PedidoItem_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[PedidoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PedidoItem_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[PedidoItem] CHECK CONSTRAINT [FK_dbo.PedidoItem_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[PedidoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PedidoItem_dbo.Pedido_pediCodigo] FOREIGN KEY([pediCodigo])
REFERENCES [dbo].[Pedido] ([pediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PedidoItem] CHECK CONSTRAINT [FK_dbo.PedidoItem_dbo.Pedido_pediCodigo]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Persona_dbo.Localidad_locaCodigo] FOREIGN KEY([locaCodigo])
REFERENCES [dbo].[Localidad] ([locaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_dbo.Persona_dbo.Localidad_locaCodigo]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Persona_dbo.Pais_paisCodigo] FOREIGN KEY([paisCodigo])
REFERENCES [dbo].[Pais] ([paisCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_dbo.Persona_dbo.Pais_paisCodigo]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Persona_dbo.Provincia_provCodigo] FOREIGN KEY([provCodigo])
REFERENCES [dbo].[Provincia] ([provCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_dbo.Persona_dbo.Provincia_provCodigo]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Persona_dbo.TipoDocumento_tdocCodigo] FOREIGN KEY([tdocCodigo])
REFERENCES [dbo].[TipoDocumento] ([tdocCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_dbo.Persona_dbo.TipoDocumento_tdocCodigo]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Persona_dbo.TipoPersona_tperCodigo] FOREIGN KEY([tperCodigo])
REFERENCES [dbo].[TipoPersona] ([tperCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_dbo.Persona_dbo.TipoPersona_tperCodigo]
GO
ALTER TABLE [dbo].[PersonaContacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PersonaContacto_dbo.Persona_persCodigo] FOREIGN KEY([persCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonaContacto] CHECK CONSTRAINT [FK_dbo.PersonaContacto_dbo.Persona_persCodigo]
GO
ALTER TABLE [dbo].[PersonaContacto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PersonaContacto_dbo.TipoContacto_ticoCodigo] FOREIGN KEY([ticoCodigo])
REFERENCES [dbo].[TipoContacto] ([ticoCodigo])
GO
ALTER TABLE [dbo].[PersonaContacto] CHECK CONSTRAINT [FK_dbo.PersonaContacto_dbo.TipoContacto_ticoCodigo]
GO
ALTER TABLE [dbo].[PersonaVariableValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PersonaVariableValor_dbo.Persona_persCodigo] FOREIGN KEY([persCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonaVariableValor] CHECK CONSTRAINT [FK_dbo.PersonaVariableValor_dbo.Persona_persCodigo]
GO
ALTER TABLE [dbo].[PersonaVariableValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PersonaVariableValor_dbo.PersonaVariable_pevaCodigo] FOREIGN KEY([pevaCodigo])
REFERENCES [dbo].[PersonaVariable] ([pevaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonaVariableValor] CHECK CONSTRAINT [FK_dbo.PersonaVariableValor_dbo.PersonaVariable_pevaCodigo]
GO
ALTER TABLE [dbo].[PiezaDentalMarcaOpcion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PiezaDentalMarcaOpcion_dbo.PiezaDentalMarca_pdmaCodigo] FOREIGN KEY([pdmaCodigo])
REFERENCES [dbo].[PiezaDentalMarca] ([pdmaCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PiezaDentalMarcaOpcion] CHECK CONSTRAINT [FK_dbo.PiezaDentalMarcaOpcion_dbo.PiezaDentalMarca_pdmaCodigo]
GO
ALTER TABLE [dbo].[PiezaDentalMarcaOpcion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PiezaDentalMarcaOpcion_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[PiezaDentalMarcaOpcion] CHECK CONSTRAINT [FK_dbo.PiezaDentalMarcaOpcion_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[Plan]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Plan_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[Plan] CHECK CONSTRAINT [FK_dbo.Plan_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[PlantillaInformeProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PlantillaInformeProcedimiento_dbo.PlantillaInforme_plinCodigo] FOREIGN KEY([plinCodigo])
REFERENCES [dbo].[PlantillaInforme] ([plinCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantillaInformeProcedimiento] CHECK CONSTRAINT [FK_dbo.PlantillaInformeProcedimiento_dbo.PlantillaInforme_plinCodigo]
GO
ALTER TABLE [dbo].[PlantillaInformeProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PlantillaInformeProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantillaInformeProcedimiento] CHECK CONSTRAINT [FK_dbo.PlantillaInformeProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[PlantillaInformeRango]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PlantillaInformeRango_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantillaInformeRango] CHECK CONSTRAINT [FK_dbo.PlantillaInformeRango_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[PlantillaInformeRangoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PlantillaInformeRangoItem_dbo.PlantillaInformeRango_plirCodigo] FOREIGN KEY([plirCodigo])
REFERENCES [dbo].[PlantillaInformeRango] ([plirCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantillaInformeRangoItem] CHECK CONSTRAINT [FK_dbo.PlantillaInformeRangoItem_dbo.PlantillaInformeRango_plirCodigo]
GO
ALTER TABLE [dbo].[PlantillaInformeVariable]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PlantillaInformeVariable_dbo.PlantillaInforme_plinCodigo] FOREIGN KEY([plinCodigo])
REFERENCES [dbo].[PlantillaInforme] ([plinCodigo])
GO
ALTER TABLE [dbo].[PlantillaInformeVariable] CHECK CONSTRAINT [FK_dbo.PlantillaInformeVariable_dbo.PlantillaInforme_plinCodigo]
GO
ALTER TABLE [dbo].[PlanTipoContratacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PlanTipoContratacion_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanTipoContratacion] CHECK CONSTRAINT [FK_dbo.PlanTipoContratacion_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[PlanTipoContratacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PlanTipoContratacion_dbo.TipoContratacion_tconCodigo] FOREIGN KEY([tconCodigo])
REFERENCES [dbo].[TipoContratacion] ([tconCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanTipoContratacion] CHECK CONSTRAINT [FK_dbo.PlanTipoContratacion_dbo.TipoContratacion_tconCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.AspNetUsers_presUsuario] FOREIGN KEY([presUsuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.AspNetUsers_presUsuario]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.AspNetUsers_presUsuarioCierre] FOREIGN KEY([presUsuarioCierre])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.AspNetUsers_presUsuarioCierre]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.CondicionPago_copaCodigo] FOREIGN KEY([copaCodigo])
REFERENCES [dbo].[CondicionPago] ([copaCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.CondicionPago_copaCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.OrdenTurno_ortuCodigo] FOREIGN KEY([ortuCodigo])
REFERENCES [dbo].[OrdenTurno] ([ortuCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.OrdenTurno_ortuCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.PresupuestoTipo_prtiCodigo] FOREIGN KEY([prtiCodigo])
REFERENCES [dbo].[PresupuestoTipo] ([prtiCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.PresupuestoTipo_prtiCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.QuirofanoTurno_qutuCodigo] FOREIGN KEY([qutuCodigo])
REFERENCES [dbo].[QuirofanoTurno] ([qutuCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.QuirofanoTurno_qutuCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.Turno_turnCodigo] FOREIGN KEY([turnCodigo])
REFERENCES [dbo].[Turno] ([turnCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.Turno_turnCodigo]
GO
ALTER TABLE [dbo].[Presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Presupuesto_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Presupuesto] CHECK CONSTRAINT [FK_dbo.Presupuesto_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[PresupuestoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PresupuestoItem_dbo.ModuloVersion_moveCodigo] FOREIGN KEY([moveCodigo])
REFERENCES [dbo].[ModuloVersion] ([moveCodigo])
GO
ALTER TABLE [dbo].[PresupuestoItem] CHECK CONSTRAINT [FK_dbo.PresupuestoItem_dbo.ModuloVersion_moveCodigo]
GO
ALTER TABLE [dbo].[PresupuestoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PresupuestoItem_dbo.Moneda_moneCodigo] FOREIGN KEY([moneCodigo])
REFERENCES [dbo].[Moneda] ([moneCodigo])
GO
ALTER TABLE [dbo].[PresupuestoItem] CHECK CONSTRAINT [FK_dbo.PresupuestoItem_dbo.Moneda_moneCodigo]
GO
ALTER TABLE [dbo].[PresupuestoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PresupuestoItem_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[PresupuestoItem] CHECK CONSTRAINT [FK_dbo.PresupuestoItem_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[PresupuestoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PresupuestoItem_dbo.Presupuesto_presCodigo] FOREIGN KEY([presCodigo])
REFERENCES [dbo].[Presupuesto] ([presCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PresupuestoItem] CHECK CONSTRAINT [FK_dbo.PresupuestoItem_dbo.Presupuesto_presCodigo]
GO
ALTER TABLE [dbo].[PresupuestoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PresupuestoItem_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[PresupuestoItem] CHECK CONSTRAINT [FK_dbo.PresupuestoItem_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[Procedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Procedimiento_dbo.ProcedimientoSubGrupo_prsgCodigo] FOREIGN KEY([prsgCodigo])
REFERENCES [dbo].[ProcedimientoSubGrupo] ([prsgCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Procedimiento] CHECK CONSTRAINT [FK_dbo.Procedimiento_dbo.ProcedimientoSubGrupo_prsgCodigo]
GO
ALTER TABLE [dbo].[Procedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Procedimiento_dbo.Snomed_snomCodigo] FOREIGN KEY([snomCodigo])
REFERENCES [dbo].[Snomed] ([snomCodigo])
GO
ALTER TABLE [dbo].[Procedimiento] CHECK CONSTRAINT [FK_dbo.Procedimiento_dbo.Snomed_snomCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoCombo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoCombo_dbo.Procedimiento_procCodigoHijo] FOREIGN KEY([procCodigoHijo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoCombo] CHECK CONSTRAINT [FK_dbo.ProcedimientoCombo_dbo.Procedimiento_procCodigoHijo]
GO
ALTER TABLE [dbo].[ProcedimientoCombo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoCombo_dbo.Procedimiento_procCodigoPadre] FOREIGN KEY([procCodigoPadre])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoCombo] CHECK CONSTRAINT [FK_dbo.ProcedimientoCombo_dbo.Procedimiento_procCodigoPadre]
GO
ALTER TABLE [dbo].[ProcedimientoComplemento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoComplemento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProcedimientoComplemento] CHECK CONSTRAINT [FK_dbo.ProcedimientoComplemento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoComplemento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoComplemento_dbo.QuirofanoTipoComplemento_qutcCodigo] FOREIGN KEY([qutcCodigo])
REFERENCES [dbo].[QuirofanoTipoComplemento] ([qutcCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoComplemento] CHECK CONSTRAINT [FK_dbo.ProcedimientoComplemento_dbo.QuirofanoTipoComplemento_qutcCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoHomologacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoHomologacion_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoHomologacion] CHECK CONSTRAINT [FK_dbo.ProcedimientoHomologacion_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoHomologacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoHomologacion_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoHomologacion] CHECK CONSTRAINT [FK_dbo.ProcedimientoHomologacion_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoNomenclador_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador] CHECK CONSTRAINT [FK_dbo.ProcedimientoNomenclador_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoNomenclador_dbo.Cobertura_cobeCodigo] FOREIGN KEY([cobeCodigo])
REFERENCES [dbo].[Cobertura] ([cobeCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador] CHECK CONSTRAINT [FK_dbo.ProcedimientoNomenclador_dbo.Cobertura_cobeCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoNomenclador_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador] CHECK CONSTRAINT [FK_dbo.ProcedimientoNomenclador_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoNomenclador_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador] CHECK CONSTRAINT [FK_dbo.ProcedimientoNomenclador_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoNomenclador_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoNomenclador] CHECK CONSTRAINT [FK_dbo.ProcedimientoNomenclador_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoPerfilApplicationGroup]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoPerfilApplicationGroup_dbo.ApplicationGroup_AppGroupId] FOREIGN KEY([AppGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProcedimientoPerfilApplicationGroup] CHECK CONSTRAINT [FK_dbo.ProcedimientoPerfilApplicationGroup_dbo.ApplicationGroup_AppGroupId]
GO
ALTER TABLE [dbo].[ProcedimientoPerfilApplicationGroup]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoPerfilApplicationGroup_dbo.ProcedimientoPerfil_prpeCodigo] FOREIGN KEY([prpeCodigo])
REFERENCES [dbo].[ProcedimientoPerfil] ([prpeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProcedimientoPerfilApplicationGroup] CHECK CONSTRAINT [FK_dbo.ProcedimientoPerfilApplicationGroup_dbo.ProcedimientoPerfil_prpeCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoPerfilItem_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProcedimientoPerfilItem] CHECK CONSTRAINT [FK_dbo.ProcedimientoPerfilItem_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoPerfilItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoPerfilItem_dbo.ProcedimientoPerfil_prpeCodigo] FOREIGN KEY([prpeCodigo])
REFERENCES [dbo].[ProcedimientoPerfil] ([prpeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProcedimientoPerfilItem] CHECK CONSTRAINT [FK_dbo.ProcedimientoPerfilItem_dbo.ProcedimientoPerfil_prpeCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoPreparacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoPreparacion_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoPreparacion] CHECK CONSTRAINT [FK_dbo.ProcedimientoPreparacion_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoPreparacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoPreparacion_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProcedimientoPreparacion] CHECK CONSTRAINT [FK_dbo.ProcedimientoPreparacion_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoPreparacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoPreparacion_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoPreparacion] CHECK CONSTRAINT [FK_dbo.ProcedimientoPreparacion_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoSubGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoSubGrupo_dbo.ProcedimientoGrupo_prgrCodigo] FOREIGN KEY([prgrCodigo])
REFERENCES [dbo].[ProcedimientoGrupo] ([prgrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProcedimientoSubGrupo] CHECK CONSTRAINT [FK_dbo.ProcedimientoSubGrupo_dbo.ProcedimientoGrupo_prgrCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoTipoTarea]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoTipoTarea_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoTipoTarea] CHECK CONSTRAINT [FK_dbo.ProcedimientoTipoTarea_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoTipoTarea]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoTipoTarea_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProcedimientoTipoTarea] CHECK CONSTRAINT [FK_dbo.ProcedimientoTipoTarea_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[ProcedimientoTipoTarea]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProcedimientoTipoTarea_dbo.QuirofanoTipoTarea_quttCodigo] FOREIGN KEY([quttCodigo])
REFERENCES [dbo].[QuirofanoTipoTarea] ([quttCodigo])
GO
ALTER TABLE [dbo].[ProcedimientoTipoTarea] CHECK CONSTRAINT [FK_dbo.ProcedimientoTipoTarea_dbo.QuirofanoTipoTarea_quttCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusion_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[ProtocoloInfusion] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusion_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusion_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[ProtocoloInfusion] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusion_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusionCiclo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusionCiclo_dbo.ProtocoloInfusion_prinCodigo] FOREIGN KEY([prinCodigo])
REFERENCES [dbo].[ProtocoloInfusion] ([prinCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProtocoloInfusionCiclo] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusionCiclo_dbo.ProtocoloInfusion_prinCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusionDia_dbo.ProtocoloInfusionCiclo_pricCodigo] FOREIGN KEY([pricCodigo])
REFERENCES [dbo].[ProtocoloInfusionCiclo] ([pricCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProtocoloInfusionDia] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusionDia_dbo.ProtocoloInfusionCiclo_pricCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusionDiagnostico_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiagnostico] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusionDiagnostico_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiagnostico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusionDiagnostico_dbo.ProtocoloInfusion_prinCodigo] FOREIGN KEY([prinCodigo])
REFERENCES [dbo].[ProtocoloInfusion] ([prinCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiagnostico] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusionDiagnostico_dbo.ProtocoloInfusion_prinCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.Generico_geneCodigoSolucion] FOREIGN KEY([geneCodigoSolucion])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.Generico_geneCodigoSolucion]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.MedicamentoFrecuencia_mefrCodigo] FOREIGN KEY([mefrCodigo])
REFERENCES [dbo].[MedicamentoFrecuencia] ([mefrCodigo])
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.MedicamentoFrecuencia_mefrCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.MedicamentoVia_meviCodigo] FOREIGN KEY([meviCodigo])
REFERENCES [dbo].[MedicamentoVia] ([meviCodigo])
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.MedicamentoVia_meviCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.ProtocoloInfusionDia_pridCodigo] FOREIGN KEY([pridCodigo])
REFERENCES [dbo].[ProtocoloInfusionDia] ([pridCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.ProtocoloInfusionDia_pridCodigo]
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.TipoUnidadMedida_tumeCodigo] FOREIGN KEY([tumeCodigo])
REFERENCES [dbo].[TipoUnidadMedida] ([tumeCodigo])
GO
ALTER TABLE [dbo].[ProtocoloInfusionDiaNomenclador] CHECK CONSTRAINT [FK_dbo.ProtocoloInfusionDiaNomenclador_dbo.TipoUnidadMedida_tumeCodigo]
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Proveedor_dbo.Persona_prveCodigo] FOREIGN KEY([prveCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [FK_dbo.Proveedor_dbo.Persona_prveCodigo]
GO
ALTER TABLE [dbo].[Provincia]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Provincia_dbo.Pais_paisCodigo] FOREIGN KEY([paisCodigo])
REFERENCES [dbo].[Pais] ([paisCodigo])
GO
ALTER TABLE [dbo].[Provincia] CHECK CONSTRAINT [FK_dbo.Provincia_dbo.Pais_paisCodigo]
GO
ALTER TABLE [dbo].[Puesto]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Puesto_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Puesto] CHECK CONSTRAINT [FK_dbo.Puesto_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[PuestoGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PuestoGrupo_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
GO
ALTER TABLE [dbo].[PuestoGrupo] CHECK CONSTRAINT [FK_dbo.PuestoGrupo_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[PuestoGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PuestoGrupo_dbo.Puesto_puesCodigo] FOREIGN KEY([puesCodigo])
REFERENCES [dbo].[Puesto] ([puesCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PuestoGrupo] CHECK CONSTRAINT [FK_dbo.PuestoGrupo_dbo.Puesto_puesCodigo]
GO
ALTER TABLE [dbo].[Quirofano]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Quirofano_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
GO
ALTER TABLE [dbo].[Quirofano] CHECK CONSTRAINT [FK_dbo.Quirofano_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[Quirofano]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Quirofano_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[Quirofano] CHECK CONSTRAINT [FK_dbo.Quirofano_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[Quirofano]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Quirofano_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Quirofano] CHECK CONSTRAINT [FK_dbo.Quirofano_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[QuirofanoHorario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoHorario_dbo.Quirofano_quirCodigo] FOREIGN KEY([quirCodigo])
REFERENCES [dbo].[Quirofano] ([quirCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuirofanoHorario] CHECK CONSTRAINT [FK_dbo.QuirofanoHorario_dbo.Quirofano_quirCodigo]
GO
ALTER TABLE [dbo].[QuirofanoHorarioBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoHorarioBloqueo_dbo.Quirofano_quirCodigo] FOREIGN KEY([quirCodigo])
REFERENCES [dbo].[Quirofano] ([quirCodigo])
GO
ALTER TABLE [dbo].[QuirofanoHorarioBloqueo] CHECK CONSTRAINT [FK_dbo.QuirofanoHorarioBloqueo_dbo.Quirofano_quirCodigo]
GO
ALTER TABLE [dbo].[QuirofanoHorarioMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoHorarioMedico_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[QuirofanoHorarioMedico] CHECK CONSTRAINT [FK_dbo.QuirofanoHorarioMedico_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[QuirofanoHorarioMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoHorarioMedico_dbo.QuirofanoHorario_quhoCodigo] FOREIGN KEY([quhoCodigo])
REFERENCES [dbo].[QuirofanoHorario] ([quhoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuirofanoHorarioMedico] CHECK CONSTRAINT [FK_dbo.QuirofanoHorarioMedico_dbo.QuirofanoHorario_quhoCodigo]
GO
ALTER TABLE [dbo].[QuirofanoHorarioProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoHorarioProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[QuirofanoHorarioProcedimiento] CHECK CONSTRAINT [FK_dbo.QuirofanoHorarioProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[QuirofanoHorarioProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoHorarioProcedimiento_dbo.QuirofanoHorario_quhoCodigo] FOREIGN KEY([quhoCodigo])
REFERENCES [dbo].[QuirofanoHorario] ([quhoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuirofanoHorarioProcedimiento] CHECK CONSTRAINT [FK_dbo.QuirofanoHorarioProcedimiento_dbo.QuirofanoHorario_quhoCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTipoTarea]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTipoTarea_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTipoTarea] CHECK CONSTRAINT [FK_dbo.QuirofanoTipoTarea_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.AspNetUsers_qutuUsuarioAsignado] FOREIGN KEY([qutuUsuarioAsignado])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.AspNetUsers_qutuUsuarioAsignado]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Internacion_inteCodigo] FOREIGN KEY([inteCodigo])
REFERENCES [dbo].[Internacion] ([inteCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Internacion_inteCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.OrdenTurno_ortuCodigo] FOREIGN KEY([ortuCodigo])
REFERENCES [dbo].[OrdenTurno] ([ortuCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.OrdenTurno_ortuCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Quirofano_quirCodigo] FOREIGN KEY([quirCodigo])
REFERENCES [dbo].[Quirofano] ([quirCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Quirofano_quirCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Quirofano_quirCodigoRealizado] FOREIGN KEY([quirCodigoRealizado])
REFERENCES [dbo].[Quirofano] ([quirCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Quirofano_quirCodigoRealizado]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.QuirofanoHorario_quhoCodigo] FOREIGN KEY([quhoCodigo])
REFERENCES [dbo].[QuirofanoHorario] ([quhoCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.QuirofanoHorario_quhoCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.QuirofanoTurnoEstado_quteCodigo] FOREIGN KEY([quteCodigo])
REFERENCES [dbo].[QuirofanoTurnoEstado] ([quteCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.QuirofanoTurnoEstado_quteCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Turno_turnCodigo] FOREIGN KEY([turnCodigo])
REFERENCES [dbo].[Turno] ([turnCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurno] CHECK CONSTRAINT [FK_dbo.QuirofanoTurno_dbo.Turno_turnCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.AspNetUsers_qutuUsuarioAsignado] FOREIGN KEY([qutuUsuarioAsignado])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.AspNetUsers_qutuUsuarioAsignado]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.AspNetUsers_qutuUsuarioAuditoria] FOREIGN KEY([qutuUsuarioAuditoria])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.AspNetUsers_qutuUsuarioAuditoria]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.OrdenTurno_ortuCodigo] FOREIGN KEY([ortuCodigo])
REFERENCES [dbo].[OrdenTurno] ([ortuCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.OrdenTurno_ortuCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.Quirofano_quirCodigo] FOREIGN KEY([quirCodigo])
REFERENCES [dbo].[Quirofano] ([quirCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.Quirofano_quirCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.QuirofanoAuditoriaMotivo_quamCodigo] FOREIGN KEY([quamCodigo])
REFERENCES [dbo].[QuirofanoAuditoriaMotivo] ([quamCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.QuirofanoAuditoriaMotivo_quamCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.QuirofanoHorario_quhoCodigo] FOREIGN KEY([quhoCodigo])
REFERENCES [dbo].[QuirofanoHorario] ([quhoCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.QuirofanoHorario_quhoCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.QuirofanoTurnoEstado_quteCodigo] FOREIGN KEY([quteCodigo])
REFERENCES [dbo].[QuirofanoTurnoEstado] ([quteCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuirofanoTurnoAuditoria] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoAuditoria_dbo.QuirofanoTurnoEstado_quteCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoMedico_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurnoMedico] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoMedico_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoMedico_dbo.Medico_mediCodigoEfector] FOREIGN KEY([mediCodigoEfector])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurnoMedico] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoMedico_dbo.Medico_mediCodigoEfector]
GO
ALTER TABLE [dbo].[QuirofanoTurnoMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoMedico_dbo.QuirofanoTipoTarea_quttCodigo] FOREIGN KEY([quttCodigo])
REFERENCES [dbo].[QuirofanoTipoTarea] ([quttCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurnoMedico] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoMedico_dbo.QuirofanoTipoTarea_quttCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoMedico_dbo.QuirofanoTurno_qutuCodigo] FOREIGN KEY([qutuCodigo])
REFERENCES [dbo].[QuirofanoTurno] ([qutuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuirofanoTurnoMedico] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoMedico_dbo.QuirofanoTurno_qutuCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoVariableValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoVariableValor_dbo.QuirofanoTurno_qutuCodigo] FOREIGN KEY([qutuCodigo])
REFERENCES [dbo].[QuirofanoTurno] ([qutuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuirofanoTurnoVariableValor] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoVariableValor_dbo.QuirofanoTurno_qutuCodigo]
GO
ALTER TABLE [dbo].[QuirofanoTurnoVariableValor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QuirofanoTurnoVariableValor_dbo.SistemaVariable_sivaCodigo] FOREIGN KEY([sivaCodigo])
REFERENCES [dbo].[SistemaVariable] ([sivaCodigo])
GO
ALTER TABLE [dbo].[QuirofanoTurnoVariableValor] CHECK CONSTRAINT [FK_dbo.QuirofanoTurnoVariableValor_dbo.SistemaVariable_sivaCodigo]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Receta_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_dbo.Receta_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Receta_dbo.Entrada_entrCodigo] FOREIGN KEY([entrCodigo])
REFERENCES [dbo].[Entrada] ([entrCodigo])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_dbo.Receta_dbo.Entrada_entrCodigo]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Receta_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_dbo.Receta_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Receta_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_dbo.Receta_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Receta_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_dbo.Receta_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Receta_dbo.RecetaWeb_reweCodigo] FOREIGN KEY([reweCodigo])
REFERENCES [dbo].[RecetaWeb] ([reweCodigo])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_dbo.Receta_dbo.RecetaWeb_reweCodigo]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Receta_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_dbo.Receta_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[RecetaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecetaItem_dbo.ArticuloComercial_arcoCodigo] FOREIGN KEY([arcoCodigo])
REFERENCES [dbo].[ArticuloComercial] ([arcoCodigo])
GO
ALTER TABLE [dbo].[RecetaItem] CHECK CONSTRAINT [FK_dbo.RecetaItem_dbo.ArticuloComercial_arcoCodigo]
GO
ALTER TABLE [dbo].[RecetaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecetaItem_dbo.Diagnostico_diagCodigo] FOREIGN KEY([diagCodigo])
REFERENCES [dbo].[Diagnostico] ([diagCodigo])
GO
ALTER TABLE [dbo].[RecetaItem] CHECK CONSTRAINT [FK_dbo.RecetaItem_dbo.Diagnostico_diagCodigo]
GO
ALTER TABLE [dbo].[RecetaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecetaItem_dbo.Generico_geneCodigo] FOREIGN KEY([geneCodigo])
REFERENCES [dbo].[Generico] ([geneCodigo])
GO
ALTER TABLE [dbo].[RecetaItem] CHECK CONSTRAINT [FK_dbo.RecetaItem_dbo.Generico_geneCodigo]
GO
ALTER TABLE [dbo].[RecetaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecetaItem_dbo.Receta_receCodigo] FOREIGN KEY([receCodigo])
REFERENCES [dbo].[Receta] ([receCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecetaItem] CHECK CONSTRAINT [FK_dbo.RecetaItem_dbo.Receta_receCodigo]
GO
ALTER TABLE [dbo].[RecetaWeb]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecetaWeb_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[RecetaWeb] CHECK CONSTRAINT [FK_dbo.RecetaWeb_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[RecetaWeb]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecetaWeb_dbo.Medico_mediCodigoSolicitud] FOREIGN KEY([mediCodigoSolicitud])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[RecetaWeb] CHECK CONSTRAINT [FK_dbo.RecetaWeb_dbo.Medico_mediCodigoSolicitud]
GO
ALTER TABLE [dbo].[RecetaWeb]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecetaWeb_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[RecetaWeb] CHECK CONSTRAINT [FK_dbo.RecetaWeb_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[RecetaWeb]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecetaWeb_dbo.PacienteCobertura_pacoCodigo] FOREIGN KEY([pacoCodigo])
REFERENCES [dbo].[PacienteCobertura] ([pacoCodigo])
GO
ALTER TABLE [dbo].[RecetaWeb] CHECK CONSTRAINT [FK_dbo.RecetaWeb_dbo.PacienteCobertura_pacoCodigo]
GO
ALTER TABLE [dbo].[RecetaWeb]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RecetaWeb_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[RecetaWeb] CHECK CONSTRAINT [FK_dbo.RecetaWeb_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recibo_dbo.Caja_cajaCodigo] FOREIGN KEY([cajaCodigo])
REFERENCES [dbo].[Caja] ([cajaCodigo])
GO
ALTER TABLE [dbo].[Recibo] CHECK CONSTRAINT [FK_dbo.Recibo_dbo.Caja_cajaCodigo]
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recibo_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Recibo] CHECK CONSTRAINT [FK_dbo.Recibo_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recibo_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
GO
ALTER TABLE [dbo].[Recibo] CHECK CONSTRAINT [FK_dbo.Recibo_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recibo_dbo.Persona_persCodigo] FOREIGN KEY([persCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[Recibo] CHECK CONSTRAINT [FK_dbo.Recibo_dbo.Persona_persCodigo]
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recibo_dbo.Talonario_taloCodigo] FOREIGN KEY([taloCodigo])
REFERENCES [dbo].[Talonario] ([taloCodigo])
GO
ALTER TABLE [dbo].[Recibo] CHECK CONSTRAINT [FK_dbo.Recibo_dbo.Talonario_taloCodigo]
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recibo_dbo.TipoRecibo_trecCodigo] FOREIGN KEY([trecCodigo])
REFERENCES [dbo].[TipoRecibo] ([trecCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Recibo] CHECK CONSTRAINT [FK_dbo.Recibo_dbo.TipoRecibo_trecCodigo]
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Recibo_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Recibo] CHECK CONSTRAINT [FK_dbo.Recibo_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[ReciboCancelacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboCancelacion_dbo.Recibo_reciCodigo] FOREIGN KEY([reciCodigo])
REFERENCES [dbo].[Recibo] ([reciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReciboCancelacion] CHECK CONSTRAINT [FK_dbo.ReciboCancelacion_dbo.Recibo_reciCodigo]
GO
ALTER TABLE [dbo].[ReciboCancelacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboCancelacion_dbo.Recibo_reciCodigoCancela] FOREIGN KEY([reciCodigoCancela])
REFERENCES [dbo].[Recibo] ([reciCodigo])
GO
ALTER TABLE [dbo].[ReciboCancelacion] CHECK CONSTRAINT [FK_dbo.ReciboCancelacion_dbo.Recibo_reciCodigoCancela]
GO
ALTER TABLE [dbo].[ReciboCupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboCupon_dbo.Banco_bancCodigo] FOREIGN KEY([bancCodigo])
REFERENCES [dbo].[Banco] ([bancCodigo])
GO
ALTER TABLE [dbo].[ReciboCupon] CHECK CONSTRAINT [FK_dbo.ReciboCupon_dbo.Banco_bancCodigo]
GO
ALTER TABLE [dbo].[ReciboCupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboCupon_dbo.CuentaBancaria_cubaCodigo] FOREIGN KEY([cubaCodigo])
REFERENCES [dbo].[CuentaBancaria] ([cubaCodigo])
GO
ALTER TABLE [dbo].[ReciboCupon] CHECK CONSTRAINT [FK_dbo.ReciboCupon_dbo.CuentaBancaria_cubaCodigo]
GO
ALTER TABLE [dbo].[ReciboCupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboCupon_dbo.ReciboItem_reitCodigo] FOREIGN KEY([reitCodigo])
REFERENCES [dbo].[ReciboItem] ([reitCodigo])
GO
ALTER TABLE [dbo].[ReciboCupon] CHECK CONSTRAINT [FK_dbo.ReciboCupon_dbo.ReciboItem_reitCodigo]
GO
ALTER TABLE [dbo].[ReciboItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboItem_dbo.Cheque_cheqCodigo] FOREIGN KEY([cheqCodigo])
REFERENCES [dbo].[Cheque] ([cheqCodigo])
GO
ALTER TABLE [dbo].[ReciboItem] CHECK CONSTRAINT [FK_dbo.ReciboItem_dbo.Cheque_cheqCodigo]
GO
ALTER TABLE [dbo].[ReciboItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboItem_dbo.Recibo_reciCodigo] FOREIGN KEY([reciCodigo])
REFERENCES [dbo].[Recibo] ([reciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReciboItem] CHECK CONSTRAINT [FK_dbo.ReciboItem_dbo.Recibo_reciCodigo]
GO
ALTER TABLE [dbo].[ReciboItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboItem_dbo.TipoFormaPago_tfopCodigo] FOREIGN KEY([tfopCodigo])
REFERENCES [dbo].[TipoFormaPago] ([tfopCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReciboItem] CHECK CONSTRAINT [FK_dbo.ReciboItem_dbo.TipoFormaPago_tfopCodigo]
GO
ALTER TABLE [dbo].[ReciboTributo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboTributo_dbo.ReciboItem_reitCodigo] FOREIGN KEY([reitCodigo])
REFERENCES [dbo].[ReciboItem] ([reitCodigo])
GO
ALTER TABLE [dbo].[ReciboTributo] CHECK CONSTRAINT [FK_dbo.ReciboTributo_dbo.ReciboItem_reitCodigo]
GO
ALTER TABLE [dbo].[ReciboTributo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboTributo_dbo.TipoTributo_titrCodigo] FOREIGN KEY([titrCodigo])
REFERENCES [dbo].[TipoTributo] ([titrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ReciboTributo] CHECK CONSTRAINT [FK_dbo.ReciboTributo_dbo.TipoTributo_titrCodigo]
GO
ALTER TABLE [dbo].[ReciboVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboVenta_dbo.Recibo_reciCodigo] FOREIGN KEY([reciCodigo])
REFERENCES [dbo].[Recibo] ([reciCodigo])
GO
ALTER TABLE [dbo].[ReciboVenta] CHECK CONSTRAINT [FK_dbo.ReciboVenta_dbo.Recibo_reciCodigo]
GO
ALTER TABLE [dbo].[ReciboVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReciboVenta_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
GO
ALTER TABLE [dbo].[ReciboVenta] CHECK CONSTRAINT [FK_dbo.ReciboVenta_dbo.Venta_ventCodigo]
GO
ALTER TABLE [dbo].[Refacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Refacturacion_dbo.AspNetUsers_refaUsuario] FOREIGN KEY([refaUsuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Refacturacion] CHECK CONSTRAINT [FK_dbo.Refacturacion_dbo.AspNetUsers_refaUsuario]
GO
ALTER TABLE [dbo].[Refacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Refacturacion_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
GO
ALTER TABLE [dbo].[Refacturacion] CHECK CONSTRAINT [FK_dbo.Refacturacion_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remito_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_dbo.Remito_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remito_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_dbo.Remito_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remito_dbo.Deposito_depoCodigoDestino] FOREIGN KEY([depoCodigoDestino])
REFERENCES [dbo].[Deposito] ([depoCodigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_dbo.Remito_dbo.Deposito_depoCodigoDestino]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remito_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_dbo.Remito_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remito_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_dbo.Remito_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remito_dbo.Proveedor_prveCodigo] FOREIGN KEY([prveCodigo])
REFERENCES [dbo].[Proveedor] ([prveCodigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_dbo.Remito_dbo.Proveedor_prveCodigo]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remito_dbo.RemitoTipo_retiCodigo] FOREIGN KEY([retiCodigo])
REFERENCES [dbo].[RemitoTipo] ([retiCodigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_dbo.Remito_dbo.RemitoTipo_retiCodigo]
GO
ALTER TABLE [dbo].[Remito]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Remito_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[Remito] CHECK CONSTRAINT [FK_dbo.Remito_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[RemitoEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoEstado_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RemitoEstado] CHECK CONSTRAINT [FK_dbo.RemitoEstado_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[RemitoEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoEstado_dbo.Remito_remiCodigo] FOREIGN KEY([remiCodigo])
REFERENCES [dbo].[Remito] ([remiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RemitoEstado] CHECK CONSTRAINT [FK_dbo.RemitoEstado_dbo.Remito_remiCodigo]
GO
ALTER TABLE [dbo].[RemitoEstado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoEstado_dbo.RemitoEstadoTipo_reetCodigo] FOREIGN KEY([reetCodigo])
REFERENCES [dbo].[RemitoEstadoTipo] ([reetCodigo])
GO
ALTER TABLE [dbo].[RemitoEstado] CHECK CONSTRAINT [FK_dbo.RemitoEstado_dbo.RemitoEstadoTipo_reetCodigo]
GO
ALTER TABLE [dbo].[RemitoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoItem_dbo.ArticuloOrigen_arorCodigo] FOREIGN KEY([arorCodigo])
REFERENCES [dbo].[ArticuloOrigen] ([arorCodigo])
GO
ALTER TABLE [dbo].[RemitoItem] CHECK CONSTRAINT [FK_dbo.RemitoItem_dbo.ArticuloOrigen_arorCodigo]
GO
ALTER TABLE [dbo].[RemitoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoItem_dbo.EntradaMedicamento_enmeCodigo] FOREIGN KEY([enmeCodigo])
REFERENCES [dbo].[EntradaMedicamento] ([enmeCodigo])
GO
ALTER TABLE [dbo].[RemitoItem] CHECK CONSTRAINT [FK_dbo.RemitoItem_dbo.EntradaMedicamento_enmeCodigo]
GO
ALTER TABLE [dbo].[RemitoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoItem_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[RemitoItem] CHECK CONSTRAINT [FK_dbo.RemitoItem_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[RemitoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoItem_dbo.NomencladorLote_noloCodigo] FOREIGN KEY([noloCodigo])
REFERENCES [dbo].[NomencladorLote] ([noloCodigo])
GO
ALTER TABLE [dbo].[RemitoItem] CHECK CONSTRAINT [FK_dbo.RemitoItem_dbo.NomencladorLote_noloCodigo]
GO
ALTER TABLE [dbo].[RemitoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoItem_dbo.OrdenCompraItem_orciCodigo] FOREIGN KEY([orciCodigo])
REFERENCES [dbo].[OrdenCompraItem] ([orciCodigo])
GO
ALTER TABLE [dbo].[RemitoItem] CHECK CONSTRAINT [FK_dbo.RemitoItem_dbo.OrdenCompraItem_orciCodigo]
GO
ALTER TABLE [dbo].[RemitoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoItem_dbo.PedidoItem_peitCodigo] FOREIGN KEY([peitCodigo])
REFERENCES [dbo].[PedidoItem] ([peitCodigo])
GO
ALTER TABLE [dbo].[RemitoItem] CHECK CONSTRAINT [FK_dbo.RemitoItem_dbo.PedidoItem_peitCodigo]
GO
ALTER TABLE [dbo].[RemitoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoItem_dbo.RecetaItem_reciCodigo] FOREIGN KEY([reciCodigo])
REFERENCES [dbo].[RecetaItem] ([reitCodigo])
GO
ALTER TABLE [dbo].[RemitoItem] CHECK CONSTRAINT [FK_dbo.RemitoItem_dbo.RecetaItem_reciCodigo]
GO
ALTER TABLE [dbo].[RemitoItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RemitoItem_dbo.Remito_remiCodigo] FOREIGN KEY([remiCodigo])
REFERENCES [dbo].[Remito] ([remiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RemitoItem] CHECK CONSTRAINT [FK_dbo.RemitoItem_dbo.Remito_remiCodigo]
GO
ALTER TABLE [dbo].[Sala]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sala_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sala] CHECK CONSTRAINT [FK_dbo.Sala_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[SalaEspera]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalaEspera_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[SalaEspera] CHECK CONSTRAINT [FK_dbo.SalaEspera_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[SalaEspera]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalaEspera_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[SalaEspera] CHECK CONSTRAINT [FK_dbo.SalaEspera_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[SalaEspera]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalaEspera_dbo.Quirofano_quirCodigo] FOREIGN KEY([quirCodigo])
REFERENCES [dbo].[Quirofano] ([quirCodigo])
GO
ALTER TABLE [dbo].[SalaEspera] CHECK CONSTRAINT [FK_dbo.SalaEspera_dbo.Quirofano_quirCodigo]
GO
ALTER TABLE [dbo].[SalaEspera]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalaEspera_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[SalaEspera] CHECK CONSTRAINT [FK_dbo.SalaEspera_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[SalaEspera]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalaEspera_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[SalaEspera] CHECK CONSTRAINT [FK_dbo.SalaEspera_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[SalaEsperaApplicationGroup]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalaEsperaApplicationGroup_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
GO
ALTER TABLE [dbo].[SalaEsperaApplicationGroup] CHECK CONSTRAINT [FK_dbo.SalaEsperaApplicationGroup_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[SalaEsperaApplicationGroup]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalaEsperaApplicationGroup_dbo.SalaEspera_saesCodigo] FOREIGN KEY([saesCodigo])
REFERENCES [dbo].[SalaEspera] ([saesCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalaEsperaApplicationGroup] CHECK CONSTRAINT [FK_dbo.SalaEsperaApplicationGroup_dbo.SalaEspera_saesCodigo]
GO
ALTER TABLE [dbo].[SalaEsperaEventoTipo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalaEsperaEventoTipo_dbo.SalaEspera_saesCodigo] FOREIGN KEY([saesCodigo])
REFERENCES [dbo].[SalaEspera] ([saesCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SalaEsperaEventoTipo] CHECK CONSTRAINT [FK_dbo.SalaEsperaEventoTipo_dbo.SalaEspera_saesCodigo]
GO
ALTER TABLE [dbo].[SalaEsperaEventoTipo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalaEsperaEventoTipo_dbo.TurnoEventoTipo_tevtCodigo] FOREIGN KEY([tevtCodigo])
REFERENCES [dbo].[TurnoEventoTipo] ([tevtCodigo])
GO
ALTER TABLE [dbo].[SalaEsperaEventoTipo] CHECK CONSTRAINT [FK_dbo.SalaEsperaEventoTipo_dbo.TurnoEventoTipo_tevtCodigo]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Servicio_dbo.CentroCosto_cecoCodigo] FOREIGN KEY([cecoCodigo])
REFERENCES [dbo].[CentroCosto] ([cecoCodigo])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_dbo.Servicio_dbo.CentroCosto_cecoCodigo]
GO
ALTER TABLE [dbo].[ServicioCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ServicioCobertura_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServicioCobertura] CHECK CONSTRAINT [FK_dbo.ServicioCobertura_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[ServicioCobertura]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ServicioCobertura_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServicioCobertura] CHECK CONSTRAINT [FK_dbo.ServicioCobertura_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[ServicioProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ServicioProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServicioProcedimiento] CHECK CONSTRAINT [FK_dbo.ServicioProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[ServicioProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ServicioProcedimiento_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServicioProcedimiento] CHECK CONSTRAINT [FK_dbo.ServicioProcedimiento_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[Sillon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sillon_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[Sillon] CHECK CONSTRAINT [FK_dbo.Sillon_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[Sillon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sillon_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Sillon] CHECK CONSTRAINT [FK_dbo.Sillon_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[SillonProtocolo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SillonProtocolo_dbo.ProtocoloInfusion_prinCodigo] FOREIGN KEY([prinCodigo])
REFERENCES [dbo].[ProtocoloInfusion] ([prinCodigo])
GO
ALTER TABLE [dbo].[SillonProtocolo] CHECK CONSTRAINT [FK_dbo.SillonProtocolo_dbo.ProtocoloInfusion_prinCodigo]
GO
ALTER TABLE [dbo].[SillonProtocolo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SillonProtocolo_dbo.Sillon_sillCodigo] FOREIGN KEY([sillCodigo])
REFERENCES [dbo].[Sillon] ([sillCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SillonProtocolo] CHECK CONSTRAINT [FK_dbo.SillonProtocolo_dbo.Sillon_sillCodigo]
GO
ALTER TABLE [dbo].[SistemaVinculadoEntidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SistemaVinculadoEntidad_dbo.SistemaVinculado_siviCodigo] FOREIGN KEY([siviCodigo])
REFERENCES [dbo].[SistemaVinculado] ([siviCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SistemaVinculadoEntidad] CHECK CONSTRAINT [FK_dbo.SistemaVinculadoEntidad_dbo.SistemaVinculado_siviCodigo]
GO
ALTER TABLE [dbo].[SistemaVinculadoMapeo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SistemaVinculadoMapeo_dbo.SistemaVinculado_siviCodigo] FOREIGN KEY([siviCodigo])
REFERENCES [dbo].[SistemaVinculado] ([siviCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SistemaVinculadoMapeo] CHECK CONSTRAINT [FK_dbo.SistemaVinculadoMapeo_dbo.SistemaVinculado_siviCodigo]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Stock_dbo.ArticuloOrigen_arorCodigo] FOREIGN KEY([arorCodigo])
REFERENCES [dbo].[ArticuloOrigen] ([arorCodigo])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_dbo.Stock_dbo.ArticuloOrigen_arorCodigo]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Stock_dbo.Deposito_depoCodigo] FOREIGN KEY([depoCodigo])
REFERENCES [dbo].[Deposito] ([depoCodigo])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_dbo.Stock_dbo.Deposito_depoCodigo]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Stock_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_dbo.Stock_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Stock_dbo.NomencladorLote_noloCodigo] FOREIGN KEY([noloCodigo])
REFERENCES [dbo].[NomencladorLote] ([noloCodigo])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_dbo.Stock_dbo.NomencladorLote_noloCodigo]
GO
ALTER TABLE [dbo].[SubEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SubEspecialidad_dbo.Especialidad_espeCodigo] FOREIGN KEY([espeCodigo])
REFERENCES [dbo].[Especialidad] ([espeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubEspecialidad] CHECK CONSTRAINT [FK_dbo.SubEspecialidad_dbo.Especialidad_espeCodigo]
GO
ALTER TABLE [dbo].[SubTipoAlertaPaciente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SubTipoAlertaPaciente_dbo.TipoAlertaPaciente_tialCodigo] FOREIGN KEY([tialCodigo])
REFERENCES [dbo].[TipoAlertaPaciente] ([tialCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubTipoAlertaPaciente] CHECK CONSTRAINT [FK_dbo.SubTipoAlertaPaciente_dbo.TipoAlertaPaciente_tialCodigo]
GO
ALTER TABLE [dbo].[TablaOMSPercentil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TablaOMSPercentil_dbo.TablaTipoOMS_tomsCodigo] FOREIGN KEY([tomsCodigo])
REFERENCES [dbo].[TablaTipoOMS] ([tomsCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TablaOMSPercentil] CHECK CONSTRAINT [FK_dbo.TablaOMSPercentil_dbo.TablaTipoOMS_tomsCodigo]
GO
ALTER TABLE [dbo].[TablaOMSZscore]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TablaOMSZscore_dbo.TablaTipoOMS_tomsCodigo] FOREIGN KEY([tomsCodigo])
REFERENCES [dbo].[TablaTipoOMS] ([tomsCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TablaOMSZscore] CHECK CONSTRAINT [FK_dbo.TablaOMSZscore_dbo.TablaTipoOMS_tomsCodigo]
GO
ALTER TABLE [dbo].[Taller]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Taller_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Taller] CHECK CONSTRAINT [FK_dbo.Taller_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[Taller]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Taller_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Taller] CHECK CONSTRAINT [FK_dbo.Taller_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[Taller]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Taller_dbo.TallerTipo_tatiCodigo] FOREIGN KEY([tatiCodigo])
REFERENCES [dbo].[TallerTipo] ([tatiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Taller] CHECK CONSTRAINT [FK_dbo.Taller_dbo.TallerTipo_tatiCodigo]
GO
ALTER TABLE [dbo].[Taller]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Taller_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Taller] CHECK CONSTRAINT [FK_dbo.Taller_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[TallerMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TallerMedico_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TallerMedico] CHECK CONSTRAINT [FK_dbo.TallerMedico_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[TallerMedico]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TallerMedico_dbo.Taller_tallCodigo] FOREIGN KEY([tallCodigo])
REFERENCES [dbo].[Taller] ([tallCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TallerMedico] CHECK CONSTRAINT [FK_dbo.TallerMedico_dbo.Taller_tallCodigo]
GO
ALTER TABLE [dbo].[Talonario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Talonario_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Talonario] CHECK CONSTRAINT [FK_dbo.Talonario_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[Talonario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Talonario_dbo.TipoComprobanteVenta_tcveCodigo] FOREIGN KEY([tcveCodigo])
REFERENCES [dbo].[TipoComprobanteVenta] ([tcveCodigo])
GO
ALTER TABLE [dbo].[Talonario] CHECK CONSTRAINT [FK_dbo.Talonario_dbo.TipoComprobanteVenta_tcveCodigo]
GO
ALTER TABLE [dbo].[Talonario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Talonario_dbo.TipoRecibo_trecCodigo] FOREIGN KEY([trecCodigo])
REFERENCES [dbo].[TipoRecibo] ([trecCodigo])
GO
ALTER TABLE [dbo].[Talonario] CHECK CONSTRAINT [FK_dbo.Talonario_dbo.TipoRecibo_trecCodigo]
GO
ALTER TABLE [dbo].[Talonario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Talonario_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Talonario] CHECK CONSTRAINT [FK_dbo.Talonario_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[TalonarioFechaBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TalonarioFechaBloqueo_dbo.Talonario_taloCodigo] FOREIGN KEY([taloCodigo])
REFERENCES [dbo].[Talonario] ([taloCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TalonarioFechaBloqueo] CHECK CONSTRAINT [FK_dbo.TalonarioFechaBloqueo_dbo.Talonario_taloCodigo]
GO
ALTER TABLE [dbo].[TemplateHCComponente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TemplateHCComponente_dbo.Grupo_grupCodigo] FOREIGN KEY([grupCodigo])
REFERENCES [dbo].[Grupo] ([grupCodigo])
GO
ALTER TABLE [dbo].[TemplateHCComponente] CHECK CONSTRAINT [FK_dbo.TemplateHCComponente_dbo.Grupo_grupCodigo]
GO
ALTER TABLE [dbo].[TemplateHCComponente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TemplateHCComponente_dbo.GrupoPropiedad_grprCodigo] FOREIGN KEY([grprCodigo])
REFERENCES [dbo].[GrupoPropiedad] ([grprCodigo])
GO
ALTER TABLE [dbo].[TemplateHCComponente] CHECK CONSTRAINT [FK_dbo.TemplateHCComponente_dbo.GrupoPropiedad_grprCodigo]
GO
ALTER TABLE [dbo].[TemplateHCComponente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TemplateHCComponente_dbo.TemplateHcContenedor_thcoCodigo] FOREIGN KEY([thcoCodigo])
REFERENCES [dbo].[TemplateHcContenedor] ([thcoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TemplateHCComponente] CHECK CONSTRAINT [FK_dbo.TemplateHCComponente_dbo.TemplateHcContenedor_thcoCodigo]
GO
ALTER TABLE [dbo].[TemplateHCComponente]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TemplateHCComponente_dbo.TemplateHcItem_thciCodigo] FOREIGN KEY([thciCodigo])
REFERENCES [dbo].[TemplateHcItem] ([thciCodigo])
GO
ALTER TABLE [dbo].[TemplateHCComponente] CHECK CONSTRAINT [FK_dbo.TemplateHCComponente_dbo.TemplateHcItem_thciCodigo]
GO
ALTER TABLE [dbo].[TemplateHcContenedor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TemplateHcContenedor_dbo.TemplateHC_tehcCodigo] FOREIGN KEY([tehcCodigo])
REFERENCES [dbo].[TemplateHC] ([tehcCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TemplateHcContenedor] CHECK CONSTRAINT [FK_dbo.TemplateHcContenedor_dbo.TemplateHC_tehcCodigo]
GO
ALTER TABLE [dbo].[TemplateHCPerfil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TemplateHCPerfil_dbo.ApplicationGroup_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroup] ([Id])
GO
ALTER TABLE [dbo].[TemplateHCPerfil] CHECK CONSTRAINT [FK_dbo.TemplateHCPerfil_dbo.ApplicationGroup_ApplicationGroupId]
GO
ALTER TABLE [dbo].[TemplateHCPerfil]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TemplateHCPerfil_dbo.TemplateHC_tehcCodigo] FOREIGN KEY([tehcCodigo])
REFERENCES [dbo].[TemplateHC] ([tehcCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TemplateHCPerfil] CHECK CONSTRAINT [FK_dbo.TemplateHCPerfil_dbo.TemplateHC_tehcCodigo]
GO
ALTER TABLE [dbo].[TipoColumnaNomenclador]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TipoColumnaNomenclador_dbo.TipoGastoNomenclador_tgasCodigo] FOREIGN KEY([tgasCodigo])
REFERENCES [dbo].[TipoGastoNomenclador] ([tgasCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TipoColumnaNomenclador] CHECK CONSTRAINT [FK_dbo.TipoColumnaNomenclador_dbo.TipoGastoNomenclador_tgasCodigo]
GO
ALTER TABLE [dbo].[TipoComprobanteVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TipoComprobanteVenta_dbo.TipoComprobanteVenta_tcveCodigoCredito] FOREIGN KEY([tcveCodigoCredito])
REFERENCES [dbo].[TipoComprobanteVenta] ([tcveCodigo])
GO
ALTER TABLE [dbo].[TipoComprobanteVenta] CHECK CONSTRAINT [FK_dbo.TipoComprobanteVenta_dbo.TipoComprobanteVenta_tcveCodigoCredito]
GO
ALTER TABLE [dbo].[TipoComprobanteVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TipoComprobanteVenta_dbo.TipoTributo_titrCodigo] FOREIGN KEY([titrCodigo])
REFERENCES [dbo].[TipoTributo] ([titrCodigo])
GO
ALTER TABLE [dbo].[TipoComprobanteVenta] CHECK CONSTRAINT [FK_dbo.TipoComprobanteVenta_dbo.TipoTributo_titrCodigo]
GO
ALTER TABLE [dbo].[TipoContratacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TipoContratacion_dbo.IVA_ivapCodigo] FOREIGN KEY([ivapCodigo])
REFERENCES [dbo].[IVA] ([ivapCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TipoContratacion] CHECK CONSTRAINT [FK_dbo.TipoContratacion_dbo.IVA_ivapCodigo]
GO
ALTER TABLE [dbo].[TipoInternacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TipoInternacion_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TipoInternacion] CHECK CONSTRAINT [FK_dbo.TipoInternacion_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[TipoNoFacturacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TipoNoFacturacion_dbo.Ambito_ambiCodigo] FOREIGN KEY([ambiCodigo])
REFERENCES [dbo].[Ambito] ([ambiCodigo])
GO
ALTER TABLE [dbo].[TipoNoFacturacion] CHECK CONSTRAINT [FK_dbo.TipoNoFacturacion_dbo.Ambito_ambiCodigo]
GO
ALTER TABLE [dbo].[Tope]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Tope_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
GO
ALTER TABLE [dbo].[Tope] CHECK CONSTRAINT [FK_dbo.Tope_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[TrackLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TrackLog_dbo.TrackNovedad_trnoCodigo] FOREIGN KEY([trnoCodigo])
REFERENCES [dbo].[TrackNovedad] ([trnoCodigo])
GO
ALTER TABLE [dbo].[TrackLog] CHECK CONSTRAINT [FK_dbo.TrackLog_dbo.TrackNovedad_trnoCodigo]
GO
ALTER TABLE [dbo].[TrackNovedadSistemaVinculado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TrackNovedadSistemaVinculado_dbo.SistemaVinculado_siviCodigo] FOREIGN KEY([siviCodigo])
REFERENCES [dbo].[SistemaVinculado] ([siviCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrackNovedadSistemaVinculado] CHECK CONSTRAINT [FK_dbo.TrackNovedadSistemaVinculado_dbo.SistemaVinculado_siviCodigo]
GO
ALTER TABLE [dbo].[TrackNovedadSistemaVinculado]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TrackNovedadSistemaVinculado_dbo.TrackNovedad_trnoCodigo] FOREIGN KEY([trnoCodigo])
REFERENCES [dbo].[TrackNovedad] ([trnoCodigo])
GO
ALTER TABLE [dbo].[TrackNovedadSistemaVinculado] CHECK CONSTRAINT [FK_dbo.TrackNovedadSistemaVinculado_dbo.TrackNovedad_trnoCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Agrupamiento_agruCodigo] FOREIGN KEY([agruCodigo])
REFERENCES [dbo].[Agrupamiento] ([agruCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Agrupamiento_agruCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.EntradaProtocoloInfusionDia_enpdCodigo] FOREIGN KEY([enpdCodigo])
REFERENCES [dbo].[EntradaProtocoloInfusionDia] ([enpdCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.EntradaProtocoloInfusionDia_enpdCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Equipo_equiCodigo] FOREIGN KEY([equiCodigo])
REFERENCES [dbo].[Equipo] ([equiCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Equipo_equiCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Medico_mediCodigoEfector] FOREIGN KEY([mediCodigoEfector])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Medico_mediCodigoEfector]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.OrdenTurno_ortuCodigo] FOREIGN KEY([ortuCodigo])
REFERENCES [dbo].[OrdenTurno] ([ortuCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.OrdenTurno_ortuCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Sillon_sillCodigo] FOREIGN KEY([sillCodigo])
REFERENCES [dbo].[Sillon] ([sillCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Sillon_sillCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.SubEspecialidad_suesCodigo] FOREIGN KEY([suesCodigo])
REFERENCES [dbo].[SubEspecialidad] ([suesCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.SubEspecialidad_suesCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.TipoEstadoTurno_tetuCodigo] FOREIGN KEY([tetuCodigo])
REFERENCES [dbo].[TipoEstadoTurno] ([tetuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.TipoEstadoTurno_tetuCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.TurnoAuditoria_tuauCodigo] FOREIGN KEY([tuauCodigo])
REFERENCES [dbo].[TurnoAuditoria] ([tuauCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.TurnoAuditoria_tuauCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.TurnoBloqueo_tublCodigo] FOREIGN KEY([tublCodigo])
REFERENCES [dbo].[TurnoBloqueo] ([tublCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.TurnoBloqueo_tublCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.TurnoMigracionMotivo_tummCodigo] FOREIGN KEY([tummCodigo])
REFERENCES [dbo].[TurnoMigracionMotivo] ([tummCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.TurnoMigracionMotivo_tummCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.TurnoPrioridad_tuprCodigo] FOREIGN KEY([tuprCodigo])
REFERENCES [dbo].[TurnoPrioridad] ([tuprCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.TurnoPrioridad_tuprCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.TurnoSolicitud_tusoCodigo] FOREIGN KEY([tusoCodigo])
REFERENCES [dbo].[TurnoSolicitud] ([tusoCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.TurnoSolicitud_tusoCodigo]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Turno_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_dbo.Turno_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[TurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Equipo_equiCodigo] FOREIGN KEY([equiCodigo])
REFERENCES [dbo].[Equipo] ([equiCodigo])
GO
ALTER TABLE [dbo].[TurnoAuditoria] CHECK CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Equipo_equiCodigo]
GO
ALTER TABLE [dbo].[TurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
GO
ALTER TABLE [dbo].[TurnoAuditoria] CHECK CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[TurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[TurnoAuditoria] CHECK CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[TurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
GO
ALTER TABLE [dbo].[TurnoAuditoria] CHECK CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[TurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
GO
ALTER TABLE [dbo].[TurnoAuditoria] CHECK CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[TurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[TurnoAuditoria] CHECK CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[TurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[TurnoAuditoria] CHECK CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[TurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.SubEspecialidad_suesCodigo] FOREIGN KEY([suesCodigo])
REFERENCES [dbo].[SubEspecialidad] ([suesCodigo])
GO
ALTER TABLE [dbo].[TurnoAuditoria] CHECK CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.SubEspecialidad_suesCodigo]
GO
ALTER TABLE [dbo].[TurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.TipoEstadoTurno_tetuCodigo] FOREIGN KEY([tetuCodigo])
REFERENCES [dbo].[TipoEstadoTurno] ([tetuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TurnoAuditoria] CHECK CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.TipoEstadoTurno_tetuCodigo]
GO
ALTER TABLE [dbo].[TurnoAuditoria]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[TurnoAuditoria] CHECK CONSTRAINT [FK_dbo.TurnoAuditoria_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[TurnoBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.Horario_horaCodigo] FOREIGN KEY([horaCodigo])
REFERENCES [dbo].[Horario] ([horaCodigo])
GO
ALTER TABLE [dbo].[TurnoBloqueo] CHECK CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.Horario_horaCodigo]
GO
ALTER TABLE [dbo].[TurnoBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[TurnoBloqueo] CHECK CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[TurnoBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.ReprogramacionCriterio_recrCodigo] FOREIGN KEY([recrCodigo])
REFERENCES [dbo].[ReprogramacionCriterio] ([recrCodigo])
GO
ALTER TABLE [dbo].[TurnoBloqueo] CHECK CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.ReprogramacionCriterio_recrCodigo]
GO
ALTER TABLE [dbo].[TurnoBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.ReprogramacionMotivo_remoCodigo] FOREIGN KEY([remoCodigo])
REFERENCES [dbo].[ReprogramacionMotivo] ([remoCodigo])
GO
ALTER TABLE [dbo].[TurnoBloqueo] CHECK CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.ReprogramacionMotivo_remoCodigo]
GO
ALTER TABLE [dbo].[TurnoBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[TurnoBloqueo] CHECK CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[TurnoBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.Sillon_sillCodigo] FOREIGN KEY([sillCodigo])
REFERENCES [dbo].[Sillon] ([sillCodigo])
GO
ALTER TABLE [dbo].[TurnoBloqueo] CHECK CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.Sillon_sillCodigo]
GO
ALTER TABLE [dbo].[TurnoBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.TurnoBloqueoTipo_tubtCodigo] FOREIGN KEY([tubtCodigo])
REFERENCES [dbo].[TurnoBloqueoTipo] ([tubtCodigo])
GO
ALTER TABLE [dbo].[TurnoBloqueo] CHECK CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.TurnoBloqueoTipo_tubtCodigo]
GO
ALTER TABLE [dbo].[TurnoBloqueo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[TurnoBloqueo] CHECK CONSTRAINT [FK_dbo.TurnoBloqueo_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[TurnoEvento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoEvento_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TurnoEvento] CHECK CONSTRAINT [FK_dbo.TurnoEvento_dbo.AspNetUsers_userId]
GO
ALTER TABLE [dbo].[TurnoEvento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoEvento_dbo.SalaEspera_saesCodigo] FOREIGN KEY([saesCodigo])
REFERENCES [dbo].[SalaEspera] ([saesCodigo])
GO
ALTER TABLE [dbo].[TurnoEvento] CHECK CONSTRAINT [FK_dbo.TurnoEvento_dbo.SalaEspera_saesCodigo]
GO
ALTER TABLE [dbo].[TurnoEvento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoEvento_dbo.Turno_turnCodigo] FOREIGN KEY([turnCodigo])
REFERENCES [dbo].[Turno] ([turnCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TurnoEvento] CHECK CONSTRAINT [FK_dbo.TurnoEvento_dbo.Turno_turnCodigo]
GO
ALTER TABLE [dbo].[TurnoEvento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoEvento_dbo.TurnoEventoTipo_tevtCodigo] FOREIGN KEY([tevtCodigo])
REFERENCES [dbo].[TurnoEventoTipo] ([tevtCodigo])
GO
ALTER TABLE [dbo].[TurnoEvento] CHECK CONSTRAINT [FK_dbo.TurnoEvento_dbo.TurnoEventoTipo_tevtCodigo]
GO
ALTER TABLE [dbo].[TurnoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
GO
ALTER TABLE [dbo].[TurnoProcedimiento] CHECK CONSTRAINT [FK_dbo.TurnoProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[TurnoProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoProcedimiento_dbo.Turno_turnCodigo] FOREIGN KEY([turnCodigo])
REFERENCES [dbo].[Turno] ([turnCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TurnoProcedimiento] CHECK CONSTRAINT [FK_dbo.TurnoProcedimiento_dbo.Turno_turnCodigo]
GO
ALTER TABLE [dbo].[TurnoSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.Medico_mediCodigo] FOREIGN KEY([mediCodigo])
REFERENCES [dbo].[Medico] ([mediCodigo])
GO
ALTER TABLE [dbo].[TurnoSolicitud] CHECK CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.Medico_mediCodigo]
GO
ALTER TABLE [dbo].[TurnoSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.Paciente_paciCodigo] FOREIGN KEY([paciCodigo])
REFERENCES [dbo].[Paciente] ([paciCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TurnoSolicitud] CHECK CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.Paciente_paciCodigo]
GO
ALTER TABLE [dbo].[TurnoSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.Plan_planCodigo] FOREIGN KEY([planCodigo])
REFERENCES [dbo].[Plan] ([planCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TurnoSolicitud] CHECK CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.Plan_planCodigo]
GO
ALTER TABLE [dbo].[TurnoSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.Servicio_servCodigo] FOREIGN KEY([servCodigo])
REFERENCES [dbo].[Servicio] ([servCodigo])
GO
ALTER TABLE [dbo].[TurnoSolicitud] CHECK CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.Servicio_servCodigo]
GO
ALTER TABLE [dbo].[TurnoSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.SubEspecialidad_suesCodigo] FOREIGN KEY([suesCodigo])
REFERENCES [dbo].[SubEspecialidad] ([suesCodigo])
GO
ALTER TABLE [dbo].[TurnoSolicitud] CHECK CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.SubEspecialidad_suesCodigo]
GO
ALTER TABLE [dbo].[TurnoSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[TurnoSolicitud] CHECK CONSTRAINT [FK_dbo.TurnoSolicitud_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[TurnoSolicitudProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoSolicitudProcedimiento_dbo.Procedimiento_procCodigo] FOREIGN KEY([procCodigo])
REFERENCES [dbo].[Procedimiento] ([procCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TurnoSolicitudProcedimiento] CHECK CONSTRAINT [FK_dbo.TurnoSolicitudProcedimiento_dbo.Procedimiento_procCodigo]
GO
ALTER TABLE [dbo].[TurnoSolicitudProcedimiento]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TurnoSolicitudProcedimiento_dbo.TurnoSolicitud_tusoCodigo] FOREIGN KEY([tusoCodigo])
REFERENCES [dbo].[TurnoSolicitud] ([tusoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TurnoSolicitudProcedimiento] CHECK CONSTRAINT [FK_dbo.TurnoSolicitudProcedimiento_dbo.TurnoSolicitud_tusoCodigo]
GO
ALTER TABLE [dbo].[Ubicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ubicacion_dbo.Localidad_locaCodigo] FOREIGN KEY([locaCodigo])
REFERENCES [dbo].[Localidad] ([locaCodigo])
GO
ALTER TABLE [dbo].[Ubicacion] CHECK CONSTRAINT [FK_dbo.Ubicacion_dbo.Localidad_locaCodigo]
GO
ALTER TABLE [dbo].[Ubicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Ubicacion_dbo.TipoDependencia_tideCodigo] FOREIGN KEY([tideCodigo])
REFERENCES [dbo].[TipoDependencia] ([tideCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ubicacion] CHECK CONSTRAINT [FK_dbo.Ubicacion_dbo.TipoDependencia_tideCodigo]
GO
ALTER TABLE [dbo].[UbicacionLocalidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UbicacionLocalidad_dbo.Localidad_locaCodigo] FOREIGN KEY([locaCodigo])
REFERENCES [dbo].[Localidad] ([locaCodigo])
GO
ALTER TABLE [dbo].[UbicacionLocalidad] CHECK CONSTRAINT [FK_dbo.UbicacionLocalidad_dbo.Localidad_locaCodigo]
GO
ALTER TABLE [dbo].[UbicacionLocalidad]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UbicacionLocalidad_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UbicacionLocalidad] CHECK CONSTRAINT [FK_dbo.UbicacionLocalidad_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[UsuarioAcceso]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioAcceso_dbo.Acceso_acceCodigo] FOREIGN KEY([acceCodigo])
REFERENCES [dbo].[Acceso] ([acceCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsuarioAcceso] CHECK CONSTRAINT [FK_dbo.UsuarioAcceso_dbo.Acceso_acceCodigo]
GO
ALTER TABLE [dbo].[UsuarioAcceso]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioAcceso_dbo.AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UsuarioAcceso] CHECK CONSTRAINT [FK_dbo.UsuarioAcceso_dbo.AspNetUsers_Id]
GO
ALTER TABLE [dbo].[UsuarioJson]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioJson_dbo.AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UsuarioJson] CHECK CONSTRAINT [FK_dbo.UsuarioJson_dbo.AspNetUsers_Id]
GO
ALTER TABLE [dbo].[UsuarioLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioLog_dbo.Area_areaCodigo] FOREIGN KEY([areaCodigo])
REFERENCES [dbo].[Area] ([areaCodigo])
GO
ALTER TABLE [dbo].[UsuarioLog] CHECK CONSTRAINT [FK_dbo.UsuarioLog_dbo.Area_areaCodigo]
GO
ALTER TABLE [dbo].[UsuarioLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioLog_dbo.AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UsuarioLog] CHECK CONSTRAINT [FK_dbo.UsuarioLog_dbo.AspNetUsers_Id]
GO
ALTER TABLE [dbo].[UsuarioLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioLog_dbo.Consultorio_consCodigo] FOREIGN KEY([consCodigo])
REFERENCES [dbo].[Consultorio] ([consCodigo])
GO
ALTER TABLE [dbo].[UsuarioLog] CHECK CONSTRAINT [FK_dbo.UsuarioLog_dbo.Consultorio_consCodigo]
GO
ALTER TABLE [dbo].[UsuarioLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioLog_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsuarioLog] CHECK CONSTRAINT [FK_dbo.UsuarioLog_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[UsuarioPuntoVenta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioPuntoVenta_dbo.UsuarioUbicacion_usubCodigo] FOREIGN KEY([usubCodigo])
REFERENCES [dbo].[UsuarioUbicacion] ([usubCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsuarioPuntoVenta] CHECK CONSTRAINT [FK_dbo.UsuarioPuntoVenta_dbo.UsuarioUbicacion_usubCodigo]
GO
ALTER TABLE [dbo].[UsuarioUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioUbicacion_dbo.AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UsuarioUbicacion] CHECK CONSTRAINT [FK_dbo.UsuarioUbicacion_dbo.AspNetUsers_Id]
GO
ALTER TABLE [dbo].[UsuarioUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UsuarioUbicacion_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[UsuarioUbicacion] CHECK CONSTRAINT [FK_dbo.UsuarioUbicacion_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[Vacuna]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vacuna_dbo.Snomed_snomCodigo] FOREIGN KEY([snomCodigo])
REFERENCES [dbo].[Snomed] ([snomCodigo])
GO
ALTER TABLE [dbo].[Vacuna] CHECK CONSTRAINT [FK_dbo.Vacuna_dbo.Snomed_snomCodigo]
GO
ALTER TABLE [dbo].[VacunaDosisEtario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VacunaDosisEtario_dbo.Vacuna_vacuCodigo] FOREIGN KEY([vacuCodigo])
REFERENCES [dbo].[Vacuna] ([vacuCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VacunaDosisEtario] CHECK CONSTRAINT [FK_dbo.VacunaDosisEtario_dbo.Vacuna_vacuCodigo]
GO
ALTER TABLE [dbo].[VacunaDosisEtario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VacunaDosisEtario_dbo.VacunaDosis_vadoCodigo] FOREIGN KEY([vadoCodigo])
REFERENCES [dbo].[VacunaDosis] ([vadoCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VacunaDosisEtario] CHECK CONSTRAINT [FK_dbo.VacunaDosisEtario_dbo.VacunaDosis_vadoCodigo]
GO
ALTER TABLE [dbo].[VacunaDosisEtario]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VacunaDosisEtario_dbo.VacunaRangoEtario_vareCodigo] FOREIGN KEY([vareCodigo])
REFERENCES [dbo].[VacunaRangoEtario] ([vareCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VacunaDosisEtario] CHECK CONSTRAINT [FK_dbo.VacunaDosisEtario_dbo.VacunaRangoEtario_vareCodigo]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Venta_dbo.Caja_cajaCodigo] FOREIGN KEY([cajaCodigo])
REFERENCES [dbo].[Caja] ([cajaCodigo])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_dbo.Venta_dbo.Caja_cajaCodigo]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Venta_dbo.CondicionVenta_coveCodigo] FOREIGN KEY([coveCodigo])
REFERENCES [dbo].[CondicionVenta] ([coveCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_dbo.Venta_dbo.CondicionVenta_coveCodigo]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Venta_dbo.Empresa_emprCodigo] FOREIGN KEY([emprCodigo])
REFERENCES [dbo].[Empresa] ([emprCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_dbo.Venta_dbo.Empresa_emprCodigo]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Venta_dbo.EntidadFacturable_enfaCodigo] FOREIGN KEY([enfaCodigo])
REFERENCES [dbo].[EntidadFacturable] ([enfaCodigo])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_dbo.Venta_dbo.EntidadFacturable_enfaCodigo]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Venta_dbo.Persona_persCodigo] FOREIGN KEY([persCodigo])
REFERENCES [dbo].[Persona] ([persCodigo])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_dbo.Venta_dbo.Persona_persCodigo]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Venta_dbo.Talonario_taloCodigo] FOREIGN KEY([taloCodigo])
REFERENCES [dbo].[Talonario] ([taloCodigo])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_dbo.Venta_dbo.Talonario_taloCodigo]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Venta_dbo.TipoComprobanteVenta_tcveCodigo] FOREIGN KEY([tcveCodigo])
REFERENCES [dbo].[TipoComprobanteVenta] ([tcveCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_dbo.Venta_dbo.TipoComprobanteVenta_tcveCodigo]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Venta_dbo.Ubicacion_ubicCodigo] FOREIGN KEY([ubicCodigo])
REFERENCES [dbo].[Ubicacion] ([ubicCodigo])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_dbo.Venta_dbo.Ubicacion_ubicCodigo]
GO
ALTER TABLE [dbo].[VentaAnexo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaAnexo_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
GO
ALTER TABLE [dbo].[VentaAnexo] CHECK CONSTRAINT [FK_dbo.VentaAnexo_dbo.Venta_ventCodigo]
GO
ALTER TABLE [dbo].[VentaArchivo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaArchivo_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VentaArchivo] CHECK CONSTRAINT [FK_dbo.VentaArchivo_dbo.Venta_ventCodigo]
GO
ALTER TABLE [dbo].[VentaCancelacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaCancelacion_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
GO
ALTER TABLE [dbo].[VentaCancelacion] CHECK CONSTRAINT [FK_dbo.VentaCancelacion_dbo.Venta_ventCodigo]
GO
ALTER TABLE [dbo].[VentaCancelacion]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaCancelacion_dbo.Venta_ventCodigoCancela] FOREIGN KEY([ventCodigoCancela])
REFERENCES [dbo].[Venta] ([ventCodigo])
GO
ALTER TABLE [dbo].[VentaCancelacion] CHECK CONSTRAINT [FK_dbo.VentaCancelacion_dbo.Venta_ventCodigoCancela]
GO
ALTER TABLE [dbo].[VentaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaItem_dbo.IVA_ivapCodigo] FOREIGN KEY([ivapCodigo])
REFERENCES [dbo].[IVA] ([ivapCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VentaItem] CHECK CONSTRAINT [FK_dbo.VentaItem_dbo.IVA_ivapCodigo]
GO
ALTER TABLE [dbo].[VentaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaItem_dbo.Moneda_moneCodigo] FOREIGN KEY([moneCodigo])
REFERENCES [dbo].[Moneda] ([moneCodigo])
GO
ALTER TABLE [dbo].[VentaItem] CHECK CONSTRAINT [FK_dbo.VentaItem_dbo.Moneda_moneCodigo]
GO
ALTER TABLE [dbo].[VentaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaItem_dbo.Nomenclador_nomeCodigo] FOREIGN KEY([nomeCodigo])
REFERENCES [dbo].[Nomenclador] ([nomeCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VentaItem] CHECK CONSTRAINT [FK_dbo.VentaItem_dbo.Nomenclador_nomeCodigo]
GO
ALTER TABLE [dbo].[VentaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaItem_dbo.PacienteNomenclador_panoCodigo] FOREIGN KEY([panoCodigo])
REFERENCES [dbo].[PacienteNomenclador] ([panoCodigo])
GO
ALTER TABLE [dbo].[VentaItem] CHECK CONSTRAINT [FK_dbo.VentaItem_dbo.PacienteNomenclador_panoCodigo]
GO
ALTER TABLE [dbo].[VentaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaItem_dbo.PacienteNomencladorEntidadFacturable_pnefCodigo] FOREIGN KEY([pnefCodigo])
REFERENCES [dbo].[PacienteNomencladorEntidadFacturable] ([pnefCodigo])
GO
ALTER TABLE [dbo].[VentaItem] CHECK CONSTRAINT [FK_dbo.VentaItem_dbo.PacienteNomencladorEntidadFacturable_pnefCodigo]
GO
ALTER TABLE [dbo].[VentaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaItem_dbo.PacienteNomencladorRefacturacion_panrCodigo] FOREIGN KEY([panrCodigo])
REFERENCES [dbo].[PacienteNomencladorRefacturacion] ([panrCodigo])
GO
ALTER TABLE [dbo].[VentaItem] CHECK CONSTRAINT [FK_dbo.VentaItem_dbo.PacienteNomencladorRefacturacion_panrCodigo]
GO
ALTER TABLE [dbo].[VentaItem]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaItem_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VentaItem] CHECK CONSTRAINT [FK_dbo.VentaItem_dbo.Venta_ventCodigo]
GO
ALTER TABLE [dbo].[VentaIva]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaIva_dbo.IVA_ivapCodigo] FOREIGN KEY([ivapCodigo])
REFERENCES [dbo].[IVA] ([ivapCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VentaIva] CHECK CONSTRAINT [FK_dbo.VentaIva_dbo.IVA_ivapCodigo]
GO
ALTER TABLE [dbo].[VentaIva]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaIva_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VentaIva] CHECK CONSTRAINT [FK_dbo.VentaIva_dbo.Venta_ventCodigo]
GO
ALTER TABLE [dbo].[VentaTributo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaTributo_dbo.TipoTributo_titrCodigo] FOREIGN KEY([titrCodigo])
REFERENCES [dbo].[TipoTributo] ([titrCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VentaTributo] CHECK CONSTRAINT [FK_dbo.VentaTributo_dbo.TipoTributo_titrCodigo]
GO
ALTER TABLE [dbo].[VentaTributo]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VentaTributo_dbo.Venta_ventCodigo] FOREIGN KEY([ventCodigo])
REFERENCES [dbo].[Venta] ([ventCodigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VentaTributo] CHECK CONSTRAINT [FK_dbo.VentaTributo_dbo.Venta_ventCodigo]
GO
