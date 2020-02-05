create database proyecto

create table Usuario(
IDUsuario int identity (1,1) not null,
Nombre nvarchar(200) not null,
Apellido nvarchar(200) not null,
Email nvarchar(100) not null,
Password nvarchar(150) not null,
CONSTRAINT PK_Usuarios PRIMARY KEY (IDUsuario)
)

select * from Usuario