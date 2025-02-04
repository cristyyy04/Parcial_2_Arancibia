USE [Instituto_parcial2]
GO
/****** Object:  Table [dbo].[Curso_]    Script Date: 11/07/2020 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Curso_](
	[id_curso] [int] IDENTITY(1,1) NOT NULL,
	[disciplina] [varchar](50) NULL,
	[cupo_maximo] [int] NULL,
	[costo_final] [float] NULL,
	[descripcion] [varchar](50) NULL,
	[estado] [int] NULL,
	[cupo_libre] [int] NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_final] [datetime] NULL,
 CONSTRAINT [PK_Curso_] PRIMARY KEY CLUSTERED 
(
	[id_curso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Curso_] ON
INSERT [dbo].[Curso_] ([id_curso], [disciplina], [cupo_maximo], [costo_final], [descripcion], [estado], [cupo_libre], [fecha_inicio], [fecha_final]) VALUES (1, N'IT', 5, 5000, N'PHP', 1, 0, CAST(0x0000AC7000000000 AS DateTime), CAST(0x0000ACC400000000 AS DateTime))
INSERT [dbo].[Curso_] ([id_curso], [disciplina], [cupo_maximo], [costo_final], [descripcion], [estado], [cupo_libre], [fecha_inicio], [fecha_final]) VALUES (2, N'IT', 30, 4000, N'HTML', 1, 24, CAST(0x0000AC6E00000000 AS DateTime), CAST(0x0000ACE000000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Curso_] OFF
/****** Object:  Table [dbo].[Inscripcion_curso]    Script Date: 11/07/2020 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripcion_curso](
	[id_ins] [int] IDENTITY(1,1) NOT NULL,
	[fecha_inscripcion] [datetime] NULL,
	[id_alumno] [int] NULL,
	[id_curso] [int] NULL,
	[costo_alu] [float] NULL,
 CONSTRAINT [PK_Inscripcion_curso] PRIMARY KEY CLUSTERED 
(
	[id_ins] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Inscripcion_curso] ON
INSERT [dbo].[Inscripcion_curso] ([id_ins], [fecha_inscripcion], [id_alumno], [id_curso], [costo_alu]) VALUES (1, CAST(0x0000AC6000000000 AS DateTime), 2, 1, 5000)
INSERT [dbo].[Inscripcion_curso] ([id_ins], [fecha_inscripcion], [id_alumno], [id_curso], [costo_alu]) VALUES (2, CAST(0x0000AC5000000000 AS DateTime), 2, 2, 4000)
INSERT [dbo].[Inscripcion_curso] ([id_ins], [fecha_inscripcion], [id_alumno], [id_curso], [costo_alu]) VALUES (3, CAST(0x0000AC6100000000 AS DateTime), 7, 2, 4000)
INSERT [dbo].[Inscripcion_curso] ([id_ins], [fecha_inscripcion], [id_alumno], [id_curso], [costo_alu]) VALUES (4, CAST(0x0000AC6300000000 AS DateTime), 12, 2, 800)
INSERT [dbo].[Inscripcion_curso] ([id_ins], [fecha_inscripcion], [id_alumno], [id_curso], [costo_alu]) VALUES (5, CAST(0x0000AC6900000000 AS DateTime), 1, 2, 4000)
INSERT [dbo].[Inscripcion_curso] ([id_ins], [fecha_inscripcion], [id_alumno], [id_curso], [costo_alu]) VALUES (6, CAST(0x0000AC6B00000000 AS DateTime), 1, 2, 4000)
SET IDENTITY_INSERT [dbo].[Inscripcion_curso] OFF
/****** Object:  Table [dbo].[Alumno]    Script Date: 11/07/2020 09:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[id_alumno] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[dni] [int] NULL,
	[email] [varchar](50) NULL,
	[estado] [int] NULL,
	[beca] [int] NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[id_alumno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON
INSERT [dbo].[Alumno] ([id_alumno], [nombre], [apellido], [dni], [email], [estado], [beca]) VALUES (1, N'cristina', N'arancibia', 35214219, N'cristina_@gmail.com', 1, 0)
INSERT [dbo].[Alumno] ([id_alumno], [nombre], [apellido], [dni], [email], [estado], [beca]) VALUES (2, N'laura', N'arancibias', 35214218, N'cristina_2@gmail.com', 1, 0)
INSERT [dbo].[Alumno] ([id_alumno], [nombre], [apellido], [dni], [email], [estado], [beca]) VALUES (5, N'paola', N'gomez', 35214216, N'cristina_3@gmail.com', 1, 0)
INSERT [dbo].[Alumno] ([id_alumno], [nombre], [apellido], [dni], [email], [estado], [beca]) VALUES (6, N'lola', N'arancibiaz', 35214217, N'cristina_4@gmail.com', 1, 0)
INSERT [dbo].[Alumno] ([id_alumno], [nombre], [apellido], [dni], [email], [estado], [beca]) VALUES (7, N'paola', N'luisa', 35214215, N'cristina_5@gmail.com', 1, 0)
INSERT [dbo].[Alumno] ([id_alumno], [nombre], [apellido], [dni], [email], [estado], [beca]) VALUES (8, N'juana', N'lopez', 35214214, N'cristina_6@gmail.com', 1, 0)
INSERT [dbo].[Alumno] ([id_alumno], [nombre], [apellido], [dni], [email], [estado], [beca]) VALUES (9, N'juan', N'urquiza', 35214233, N'cristina_2@gmail.com', 1, 80)
INSERT [dbo].[Alumno] ([id_alumno], [nombre], [apellido], [dni], [email], [estado], [beca]) VALUES (10, N'paola', N'piedras', 35214223, N'cristina_9@gmail.com', 1, 0)
INSERT [dbo].[Alumno] ([id_alumno], [nombre], [apellido], [dni], [email], [estado], [beca]) VALUES (11, N'lisa', N'perez', 35214200, N'cristina_43@gmail.com', 1, 0)
INSERT [dbo].[Alumno] ([id_alumno], [nombre], [apellido], [dni], [email], [estado], [beca]) VALUES (12, N'cristina', N'juarez', 35214277, N'cristina_30@gmail.com', 1, 80)
SET IDENTITY_INSERT [dbo].[Alumno] OFF
/****** Object:  StoredProcedure [dbo].[mostrar_todos_inscripciones]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_todos_inscripciones]
as
select i.id_ins,i.id_curso,i.id_alumno, a.nombre,a.apellido,c.descripcion,c.costo_final,c.cupo_maximo,c.cupo_libre,i.fecha_inscripcion,i.costo_alu from Inscripcion_curso i
inner join Curso_ c
on i.id_curso=c.id_curso
inner join Alumno a
on i.id_alumno=a.id_alumno
GO
/****** Object:  StoredProcedure [dbo].[mostrar_todos_cursos_tiene_rec]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_todos_cursos_tiene_rec]
as
select DISTINCT c.* from Inscripcion_curso i
inner join Curso_ c
on c.id_curso=i.id_curso

where c.estado=1
GO
/****** Object:  StoredProcedure [dbo].[mostrar_todos_cursos_rec]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_todos_cursos_rec]
as
select sum(i.costo_alu) as recaudacion_curso,i.id_curso from Inscripcion_curso i
inner join Curso_ c
on c.id_curso=i.id_curso

where c.estado=1
group by i.id_curso;
GO
/****** Object:  StoredProcedure [dbo].[mostrar_todos_cursos]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrar_todos_cursos]
as
select * from Curso_
where estado=1;
GO
/****** Object:  StoredProcedure [dbo].[mostrar_todos_alumnos]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrar_todos_alumnos]
as
select * from Alumno
where estado=1;
GO
/****** Object:  StoredProcedure [dbo].[inscripcion_duplicado]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[inscripcion_duplicado]
@alu int,
@cur int
as
begin

select count(*) as es_duplicado from Inscripcion_curso 
where id_curso = @cur and id_alumno=@alu
end
GO
/****** Object:  StoredProcedure [dbo].[actualizar_curso]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[actualizar_curso]
@descripcion varchar(50),
@disciplina varchar(50),
@costo_final float,
@cupo_maximo int,
@id_curso int,
@fecha_inicio datetime,
@fecha_final datetime
 


AS
BEGIN

UPDATE Curso_
set cupo_maximo=@cupo_maximo,
disciplina=@disciplina,
descripcion=@descripcion,
costo_final=@costo_final,
fecha_inicio=@fecha_inicio,
fecha_final=@fecha_final,
cupo_libre=@cupo_maximo-(select count(id_ins) from Inscripcion_curso where id_curso=@id_curso)

where id_curso=@id_curso;
end
GO
/****** Object:  StoredProcedure [dbo].[fuera_fecha_inicio]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[fuera_fecha_inicio]
@cur int,
@fecha_inscripcion datetime
as
begin

select count(id_curso) as fuera_fecha from Curso_
WHERE fecha_inicio>=@fecha_inscripcion and id_curso=@cur
--where month(fecha_inicio)>=month(@fecha_inscripcion) and year(fecha_inicio)>=year(@fecha_inscripcion) and day(fecha_inicio)>=day(@fecha_inscripcion) and estado=1;
end
GO
/****** Object:  StoredProcedure [dbo].[cupo_completo]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cupo_completo]
@cur int
as
begin

select count(id_curso) as esta_lleno from Curso_
where cupo_libre<=0 and estado=1 and id_curso=@cur;
end
GO
/****** Object:  StoredProcedure [dbo].[crear_inscripcion_curso]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[crear_inscripcion_curso]
@fecha_inscripcion datetime,
@id_curso int,
@id_alumno int
 as
declare @costo float
set @costo=(select costo_final from Curso_ where id_curso=@id_curso)
begin
insert into Inscripcion_curso
(
fecha_inscripcion,
id_curso,
id_alumno,
costo_alu

)
values
(
@fecha_inscripcion,
@id_curso,
@id_alumno,
@costo-(@costo*(select beca from Alumno where id_alumno=@id_alumno)/100)
)
select @@identity as id_ins
update Curso_ set cupo_libre=cupo_libre-1 where id_curso=@id_curso
end
GO
/****** Object:  StoredProcedure [dbo].[crear_curso]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[crear_curso]
@descripcion varchar(50),
@disciplina varchar(50),
@costo_final float,
@cupo_maximo int,
@fecha_inicio datetime,
@fecha_final datetime
 

as
insert into Curso_
(
descripcion,
disciplina, 
cupo_maximo, 
costo_final,
estado,
cupo_libre,
fecha_final,
fecha_inicio

)
values
(
@descripcion,
@disciplina,
@cupo_maximo,
@costo_final,
1,
@cupo_maximo,
@fecha_final,
@fecha_inicio
)
select @@identity as id_curso
GO
/****** Object:  StoredProcedure [dbo].[crear_alumno]    Script Date: 11/07/2020 09:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[crear_alumno]
@nombre varchar(50),
@apellido varchar(50),
@email varchar(50),
@dni int,
@beca int
 

as
insert into Alumno
(
nombre,
apellido, 
dni, 
email,
estado,
beca

)
values
(
@nombre,
@apellido,
@dni,
@email,
1,
@beca
)
select @@identity as id_alumno
GO
/****** Object:  Default [DF_Alumno_beca]    Script Date: 11/07/2020 09:50:52 ******/
ALTER TABLE [dbo].[Alumno] ADD  CONSTRAINT [DF_Alumno_beca]  DEFAULT ((0)) FOR [beca]
GO
/****** Object:  Default [DF__Curso___cupo_lib__0CBAE877]    Script Date: 11/07/2020 09:50:52 ******/
ALTER TABLE [dbo].[Curso_] ADD  CONSTRAINT [DF__Curso___cupo_lib__0CBAE877]  DEFAULT ((0)) FOR [cupo_libre]
GO
