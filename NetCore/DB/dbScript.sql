USE [master]
GO
/****** Object:  Database [CursosOnline-UdemyNetCore]    Script Date: 12/11/2020 3:41:24 PM ******/
CREATE DATABASE [CursosOnline-UdemyNetCore]
GO

USE [CursosOnline-UdemyNetCore]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 12/11/2020 3:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentario](
	[ComentarioId] [int] IDENTITY(1,1) NOT NULL,
	[Alumno] [nvarchar](500) NULL,
	[Puntaje] [int] NULL,
	[ComentarioTexto] [nvarchar](max) NULL,
	[CursoId] [int] NULL,
 CONSTRAINT [PK_Comentario] PRIMARY KEY CLUSTERED 
(
	[ComentarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 12/11/2020 3:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[CursoId] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](500) NULL,
	[Descripcion] [nvarchar](1000) NULL,
	[FechaPublicacion] [datetime] NULL,
	[FotoPortada] [varbinary](max) NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[CursoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursoInstructor]    Script Date: 12/11/2020 3:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoInstructor](
	[CursoId] [int] NOT NULL,
	[InstructorId] [int] NOT NULL,
 CONSTRAINT [PK_CursoInstructor] PRIMARY KEY CLUSTERED 
(
	[CursoId] ASC,
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 12/11/2020 3:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](500) NULL,
	[Apellidos] [nvarchar](500) NULL,
	[Grado] [nvarchar](500) NULL,
	[FotoPerfil] [varbinary](max) NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precio]    Script Date: 12/11/2020 3:41:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[PrecioId] [int] IDENTITY(1,1) NOT NULL,
	[PrecioActual] [money] NULL,
	[Promocion] [money] NULL,
	[CursoId] [int] NULL,
 CONSTRAINT [PK_Precio] PRIMARY KEY CLUSTERED 
(
	[PrecioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comentario] ON 

INSERT [dbo].[Comentario] ([ComentarioId], [Alumno], [Puntaje], [ComentarioTexto], [CursoId]) VALUES (1, N'Hector Moreira', 5, N'Excelente', 1)
INSERT [dbo].[Comentario] ([ComentarioId], [Alumno], [Puntaje], [ComentarioTexto], [CursoId]) VALUES (2, N'Teresa Mendoza', 2, N'Medio', 1)
INSERT [dbo].[Comentario] ([ComentarioId], [Alumno], [Puntaje], [ComentarioTexto], [CursoId]) VALUES (3, N'Harry Potter', 5, N'Buen curso', 2)
INSERT [dbo].[Comentario] ([ComentarioId], [Alumno], [Puntaje], [ComentarioTexto], [CursoId]) VALUES (4, N'Diana Prince', 4, N'Bueno', 2)
INSERT [dbo].[Comentario] ([ComentarioId], [Alumno], [Puntaje], [ComentarioTexto], [CursoId]) VALUES (5, N'Bruce Wayne', 5, N'Excelente curso', 1)
SET IDENTITY_INSERT [dbo].[Comentario] OFF
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([CursoId], [Titulo], [Descripcion], [FechaPublicacion], [FotoPortada]) VALUES (1, N'React Hooks', N'Curso de programación en React', CAST(N'2020-01-12T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Curso] ([CursoId], [Titulo], [Descripcion], [FechaPublicacion], [FotoPortada]) VALUES (2, N'ASP.NET Core y React Hooks', N'Curso de Net Core y JS React', CAST(N'2020-02-12T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
INSERT [dbo].[CursoInstructor] ([CursoId], [InstructorId]) VALUES (1, 1)
INSERT [dbo].[CursoInstructor] ([CursoId], [InstructorId]) VALUES (1, 2)
INSERT [dbo].[CursoInstructor] ([CursoId], [InstructorId]) VALUES (2, 2)
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([InstructorId], [Nombre], [Apellidos], [Grado], [FotoPerfil]) VALUES (1, N'Hector', N'Moreira', N'Developer', NULL)
INSERT [dbo].[Instructor] ([InstructorId], [Nombre], [Apellidos], [Grado], [FotoPerfil]) VALUES (2, N'Severus', N'Snape', N'Ingeniero', NULL)
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[Precio] ON 

INSERT [dbo].[Precio] ([PrecioId], [PrecioActual], [Promocion], [CursoId]) VALUES (1, 900.0000, 9.9900, 1)
INSERT [dbo].[Precio] ([PrecioId], [PrecioActual], [Promocion], [CursoId]) VALUES (2, 650.0000, 15.0000, 2)
SET IDENTITY_INSERT [dbo].[Precio] OFF
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Curso] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Curso] ([CursoId])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Comentario_Curso]
GO
ALTER TABLE [dbo].[CursoInstructor]  WITH CHECK ADD  CONSTRAINT [FK_Curso_Instructor_CursoId] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Curso] ([CursoId])
GO
ALTER TABLE [dbo].[CursoInstructor] CHECK CONSTRAINT [FK_Curso_Instructor_CursoId]
GO
ALTER TABLE [dbo].[Precio]  WITH CHECK ADD  CONSTRAINT [FK_Precio_Curso] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Curso] ([CursoId])
GO
ALTER TABLE [dbo].[Precio] CHECK CONSTRAINT [FK_Precio_Curso]
GO
USE [master]
GO
ALTER DATABASE [CursosOnline-UdemyNetCore] SET  READ_WRITE 
GO
