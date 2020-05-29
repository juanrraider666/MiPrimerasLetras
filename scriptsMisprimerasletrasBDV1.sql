USE [MisPirmerasLetras]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[id_alumno] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[primer_apellido] [varchar](100) NULL,
	[segundo_apellido] [varchar](100) NULL,
	[fecha_nacimiento] [datetime] NULL,
	[acudiente] [varchar](100) NULL,
	[direccion] [varchar](100) NULL,
	[telefono] [varchar](100) NULL,
	[correo] [varchar](100) NULL,
	[ocupacion] [varchar](100) NULL,
	[observaciones] [text] NULL,
	[fecha_creacion] [datetime] NULL,
	[fecha_modificacion] [datetime] NULL,
	[creado_por] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[area]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[area](
	[id_area] [int] IDENTITY(1,1) NOT NULL,
	[area] [varchar](100) NULL,
	[usuario_creacion] [varchar](100) NULL,
	[usuario_modificacion] [varchar](100) NULL,
	[fecha_creacion] [datetime] NULL,
	[fecha_modificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dia_hora]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dia_hora](
	[id_dia_hora] [int] IDENTITY(1,1) NOT NULL,
	[hora_inicial] [varchar](100) NULL,
	[hora_final] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dia_hora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grado]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grado](
	[id_grado] [int] IDENTITY(1,1) NOT NULL,
	[grado] [varchar](100) NULL,
	[usuario_creacion] [varchar](100) NULL,
	[fecha_creacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_grado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gradoMateria]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gradoMateria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fk_materia] [int] NULL,
	[fk_grado] [int] NULL,
	[horas] [int] NULL,
	[restantes] [int] NULL,
 CONSTRAINT [PK_gradoMateria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grupo]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grupo](
	[id_grupo] [int] IDENTITY(1,1) NOT NULL,
	[fk_grado] [int] NULL,
	[grupo] [varchar](100) NULL,
	[usuario_creacion] [varchar](100) NULL,
	[fecha_creacion] [datetime] NULL,
	[fk_usuario] [int] NULL,
	[fk_salon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[horario]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[horario](
	[id_horario] [int] IDENTITY(1,1) NOT NULL,
	[fk_grupo] [int] NULL,
	[fk_dia_hora] [int] NULL,
	[fecha_creacion] [datetime] NULL,
	[fecha_modificaion] [datetime] NULL,
	[usuario_creacion] [varchar](100) NULL,
	[usuario_modificacion] [varchar](100) NULL,
	[dia] [varchar](50) NULL,
	[fk_materia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia](
	[id_materia] [int] IDENTITY(1,1) NOT NULL,
	[fk_area] [int] NULL,
	[materia] [varchar](100) NULL,
	[usuario_creacion] [varchar](100) NULL,
	[fecha_creacion] [datetime] NULL,
	[fecha_modificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matricula]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matricula](
	[IdMatricula] [int] IDENTITY(1,1) NOT NULL,
	[fecha_matricula] [datetime] NULL,
	[fk_alumno] [int] NULL,
	[fk_grupo] [int] NULL,
	[usuario_creacion] [varchar](50) NULL,
	[fecha_creacion] [datetime] NULL,
	[ano_lectivo] [datetime] NULL,
	[estado] [tinyint] NULL,
 CONSTRAINT [PK_Matricula] PRIMARY KEY CLUSTERED 
(
	[IdMatricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nota]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nota](
	[id_nota] [int] IDENTITY(1,1) NOT NULL,
	[fk_alumno] [int] NULL,
	[fk_materia] [int] NULL,
	[valor_nota] [float] NULL,
	[periodo] [varchar](100) NULL,
	[usuario_creacion] [varchar](100) NULL,
	[usuario_modificacion] [varchar](100) NULL,
	[fecha_creacion] [datetime] NULL,
	[fecha_modificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[id_pago] [int] IDENTITY(1,1) NOT NULL,
	[total] [decimal](10, 1) NULL,
	[saldo] [decimal](10, 1) NULL,
	[abono] [decimal](10, 1) NULL,
	[mes] [varchar](52) NULL,
	[paz_y_salvo] [bit] NULL,
	[usuario_modificacion] [varchar](100) NULL,
	[fecha_creacion] [datetime] NULL,
	[fecha_modificacion] [datetime] NULL,
	[ticket] [varchar](50) NULL,
	[fecha_limite] [varchar](50) NULL,
	[fk_matricula] [int] NULL,
	[fk_alumno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parametros]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parametros](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[valor] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Parametros] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perfiles]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfiles](
	[id_perfil] [int] NOT NULL,
	[perfil] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_perfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salon]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salon](
	[id_salon] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[sede] [varchar](100) NULL,
	[usuario_creacion] [varchar](100) NULL,
	[fecha_creacion] [datetime] NULL,
	[fecha_modificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_salon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[fk_perfiles] [int] NULL,
	[nombre] [varchar](100) NULL,
	[primer_apellido] [varchar](100) NULL,
	[segundo_apellido] [varchar](100) NULL,
	[correo] [varchar](100) NULL,
	[contrasena] [varchar](100) NULL,
	[estado] [bit] NULL,
	[fecha_creacion] [datetime] NULL,
	[fecha_modificacion] [datetime] NULL,
	[usuario_creacion] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Matricula] ADD  CONSTRAINT [DF_Matricula_estado]  DEFAULT ((0)) FOR [estado]
GO
ALTER TABLE [dbo].[gradoMateria]  WITH CHECK ADD  CONSTRAINT [FK_gradoMateria_grado] FOREIGN KEY([fk_grado])
REFERENCES [dbo].[grado] ([id_grado])
GO
ALTER TABLE [dbo].[gradoMateria] CHECK CONSTRAINT [FK_gradoMateria_grado]
GO
ALTER TABLE [dbo].[gradoMateria]  WITH CHECK ADD  CONSTRAINT [FK_gradoMateria_materia] FOREIGN KEY([fk_materia])
REFERENCES [dbo].[materia] ([id_materia])
GO
ALTER TABLE [dbo].[gradoMateria] CHECK CONSTRAINT [FK_gradoMateria_materia]
GO
ALTER TABLE [dbo].[grupo]  WITH CHECK ADD FOREIGN KEY([fk_grado])
REFERENCES [dbo].[grado] ([id_grado])
GO
ALTER TABLE [dbo].[grupo]  WITH CHECK ADD  CONSTRAINT [FK_grupo_salon] FOREIGN KEY([fk_salon])
REFERENCES [dbo].[salon] ([id_salon])
GO
ALTER TABLE [dbo].[grupo] CHECK CONSTRAINT [FK_grupo_salon]
GO
ALTER TABLE [dbo].[horario]  WITH CHECK ADD FOREIGN KEY([fk_dia_hora])
REFERENCES [dbo].[dia_hora] ([id_dia_hora])
GO
ALTER TABLE [dbo].[horario]  WITH CHECK ADD FOREIGN KEY([fk_grupo])
REFERENCES [dbo].[grupo] ([id_grupo])
GO
ALTER TABLE [dbo].[horario]  WITH CHECK ADD FOREIGN KEY([fk_grupo])
REFERENCES [dbo].[grupo] ([id_grupo])
GO
ALTER TABLE [dbo].[horario]  WITH CHECK ADD  CONSTRAINT [FK_horario_materia] FOREIGN KEY([fk_materia])
REFERENCES [dbo].[materia] ([id_materia])
GO
ALTER TABLE [dbo].[horario] CHECK CONSTRAINT [FK_horario_materia]
GO
ALTER TABLE [dbo].[materia]  WITH CHECK ADD FOREIGN KEY([fk_area])
REFERENCES [dbo].[area] ([id_area])
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_Alumnos] FOREIGN KEY([fk_alumno])
REFERENCES [dbo].[Alumnos] ([id_alumno])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_Alumnos]
GO
ALTER TABLE [dbo].[Matricula]  WITH CHECK ADD  CONSTRAINT [FK_Matricula_grupo] FOREIGN KEY([fk_grupo])
REFERENCES [dbo].[grupo] ([id_grupo])
GO
ALTER TABLE [dbo].[Matricula] CHECK CONSTRAINT [FK_Matricula_grupo]
GO
ALTER TABLE [dbo].[nota]  WITH CHECK ADD FOREIGN KEY([fk_alumno])
REFERENCES [dbo].[Alumnos] ([id_alumno])
GO
ALTER TABLE [dbo].[nota]  WITH CHECK ADD FOREIGN KEY([fk_materia])
REFERENCES [dbo].[materia] ([id_materia])
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Alumnos] FOREIGN KEY([fk_alumno])
REFERENCES [dbo].[Alumnos] ([id_alumno])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Alumnos]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Matricula] FOREIGN KEY([fk_matricula])
REFERENCES [dbo].[Matricula] ([IdMatricula])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Matricula]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD FOREIGN KEY([fk_perfiles])
REFERENCES [dbo].[perfiles] ([id_perfil])
GO
/****** Object:  StoredProcedure [dbo].[PR_consultar_usuario_login]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_consultar_usuario_login]   
		  @usuario VARCHAR(29)
		 ,@contrasena VARCHAR(20)   
AS   
	BEGIN   
		SELECT correo
			   ,contrasena
			   ,nombre
			   ,primer_apellido
			   ,p.perfil
			   ,g.id_grupo
		FROM usuario u
		inner join perfiles p on u.fk_perfiles = p.id_perfil
		inner join grupo g on g.fk_usuario = u.id_usuario
			WHERE u.usuario_creacion=@usuario 
					AND contrasena=@contrasena
END
GO
/****** Object:  StoredProcedure [dbo].[PR_estudiantes_grupo]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PR_estudiantes_grupo]
	-- Add the parameters for the stored procedure here
	 @Param1 int
AS

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select a.nombre, a.primer_apellido from Alumnos  a
inner join Matricula mt ON mt.fk_alumno = a.id_alumno
where mt.fk_grupo = @Param1; 

GO
/****** Object:  StoredProcedure [dbo].[PR_estudiantes_materia]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PR_estudiantes_materia]
	-- Add the parameters for the stored procedure here
	 @Param1 int
AS

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT a.nombre, a.primer_apellido from Alumnos  a
inner join Matricula mt ON mt.fk_alumno = a.id_alumno
inner join horario h ON h.fk_grupo = mt.fk_grupo
inner join materia m ON m.id_materia = h.fk_materia
where m.id_materia = @Param1; 

GO
/****** Object:  StoredProcedure [dbo].[PR_Insertar_Alumnos]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[PR_Insertar_Alumnos]
 @nombres varchar(50),
 @PrimerApellido varchar(50),
 @SegundoApellido varchar(50),
 @FechaNacimiento DateTime,
 @Acudiente Varchar(50),
 @Direccion varchar(50),
 @Telefono int,
 @Correo varchar(50),
 @Observaciones varchar(200),
 @ocupacion varchar(50)
 AS
 BEGIN
 INSERT INTO Alumnos(nombre,primer_apellido,segundo_apellido,fecha_nacimiento,acudiente,direccion,telefono,correo,ocupacion,observaciones,fecha_creacion,fecha_modificacion,creado_por)
 VALUES(@nombres,@PrimerApellido,@SegundoApellido,@FechaNacimiento,@Acudiente,@Direccion,@Telefono,@Correo,@ocupacion,@Observaciones,getdate(),getdate(),'flasso');
 SELECT SCOPE_IDENTITY();
 END
GO
/****** Object:  StoredProcedure [dbo].[PR_insertar_grado]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_insertar_grado]   
		 @grado VARCHAR(100)
		,@usuario_creacion VARCHAR(100)
		 
AS   
	BEGIN
		INSERT INTO grado(grado, usuario_creacion, fecha_creacion)
			VALUES (@grado,@usuario_creacion,GETDATE())
SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[PR_insertar_gradoMateria]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_insertar_gradoMateria]   
		 @fk_materia int
		,@fk_grado int
		,@horas int 
		 
AS   
	BEGIN
		INSERT INTO gradoMateria(fk_materia, fk_grado, horas)
			VALUES (@fk_materia,@fk_grado, @horas)
SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[PR_insertar_grupo]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_insertar_grupo]   
		 @grado VARCHAR(100)
		,@usuario_creacion VARCHAR(100)
		,@fecha_creacion DATETIME
		 
AS   
	BEGIN
		INSERT INTO grado(grado, usuario_creacion, fecha_creacion)
			VALUES (@grado,@usuario_creacion,GETDATE())
SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[PR_insertar_Matricula]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[PR_insertar_Matricula]
 @fk_alumno int,
 @fk_grupo int,
 @usuario_creacion Varchar(50)
 AS
 BEGIN
 INSERT INTO Matricula(fecha_matricula,fk_alumno,fk_grupo,usuario_creacion,fecha_creacion)
 VALUES(getdate(),@fk_alumno,@fk_grupo,'flasso',getdate());
 END
GO
/****** Object:  StoredProcedure [dbo].[PR_insertar_Nota]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[PR_insertar_Nota]
 @fk_alumno int,
 @fk_materia int,
 @valor_nota float,
 @periodo varchar(100),
 @usuario_creacion varchar(100)
 AS
 BEGIN
 INSERT INTO nota(fk_alumno,fk_materia,valor_nota, periodo, usuario_creacion, fecha_creacion)
 VALUES(@fk_alumno,@fk_materia,@valor_nota,@periodo,@usuario_creacion,getdate());
 SELECT SCOPE_IDENTITY();
 END
GO
/****** Object:  StoredProcedure [dbo].[PR_insertar_Pago]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[PR_insertar_Pago]
 @fk_alumno int,
 @total decimal(10,1),
 @saldo decimal(10, 1),
 @abono decimal(10, 1),
 @mes varchar(52),
 @usuario_modificacion varchar(100),
 @fecha_limite varchar(50)
 AS
 BEGIN
 INSERT INTO Pagos(fk_alumno,total,saldo, abono, mes,paz_y_salvo, usuario_modificacion,fecha_creacion,fecha_modificacion,ticket,fecha_limite)
 VALUES(@fk_alumno,@total,@saldo,@abono,@mes,0,@usuario_modificacion,getdate(),NULL,'0000000000',@fecha_limite);
 SELECT SCOPE_IDENTITY();
 END
GO
/****** Object:  StoredProcedure [dbo].[PR_Insertar_Usuario]    Script Date: 5/29/2020 6:27:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PR_Insertar_Usuario]   
		 @fk_perfiles INT
		,@nombre VARCHAR(100)
		,@primer_apellido VARCHAR(100)
		,@segundo_apellido VARCHAR(100)
		,@correo VARCHAR(100)
		,@estado BIT
		,@contrasena VARCHAR(100)  
AS   
	BEGIN
		INSERT INTO usuario(fk_perfiles,nombre,primer_apellido,segundo_apellido,correo,estado,contrasena,fecha_creacion,fecha_modificacion,usuario_creacion)
			VALUES (@fk_perfiles,@nombre,@primer_apellido,@segundo_apellido,@correo,@estado,@contrasena,GETDATE(),GETDATE(),'fLASSO')
END
GO
