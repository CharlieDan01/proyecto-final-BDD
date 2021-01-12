USE MASTER;
GO
if DB_ID (N'TheSamsClub') IS NOT NULL
DROP DATABASE TheSamsClub;
GO
CREATE DATABASE TheSamsClub
ON
(NAME=TheSamsClub_dat,
FILENAME ='C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TheSamsClub.mdf',
SIZE= 10,
MAXSIZE=50,
FILEGROWTH=5)
LOG ON
(NAME= TheSamsClub_log,
FILENAME ='C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TheSamsClub.ldf',
SIZE= 5MB,
MAXSIZE=25MB,
FILEGROWTH=5MB);
GO
USE TheSamsClub;
GO
-----------------------------------------------///TABLAS///------------------------------------
CREATE TABLE Compañia_Pedrote(
Id_compañia INT IDENTITY(1,1), 
nombre varchar (20)NOT NULL,
ubicacion varchar (40)NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_CompañiaPedrote PRIMARY KEY (Id_compañia)
);
CREATE TABLE Ejecutivo_Pedrote(
Id_ejecutivo INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_EjecutivoPedrote PRIMARY KEY (Id_ejecutivo)
);
CREATE TABLE Gerente_Pedrote(
Id_gerentePedrote INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_GerentePedrote PRIMARY KEY (Id_gerentePedrote)
);
CREATE TABLE Proveedor_Pedrote(
Id_proveedor INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_ProveedorPedrote PRIMARY KEY (Id_proveedor)
);
CREATE TABLE Lider_pedrote(
Id_lider INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_LiderPedrote PRIMARY KEY (Id_lider)
);
CREATE TABLE Sublider_pedrote(
Id_sublider INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
objetivo varchar (4) NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_SubiderPedrote PRIMARY KEY (Id_sublider)
);
CREATE TABLE Demostrador_pedrote(
Id_demostrador INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
objetivo varchar (4) NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_DemostradorPedrote PRIMARY KEY (Id_demostrador)
);
CREATE TABLE Producto(
Id_producto INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
oferta varchar (5)NOT NULL,
precio varchar (5)NOT NULL,
descripcion varchar (50),
estatus bit DEFAULT 1
CONSTRAINT PK_producto_general PRIMARY KEY (Id_producto)
);
CREATE TABLE Jefe_Sams_cafe(
Id_jefe_cafe INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_JefeCafé PRIMARY KEY (Id_jefe_cafe)
);
CREATE TABLE Cocinero(
Id_cocinero INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Cocinero_cafe PRIMARY KEY (Id_cocinero)
);
CREATE TABLE Comida(
Id_comida INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
tipo varchar (50)NOT NULL,
precio varchar(3) NOT NULL,
precio_anterior varchar(3) NOT NULL,
fecha DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_comida_sams PRIMARY KEY (Id_comida)
);
CREATE TABLE SocioSams(
Id_socio INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
tipo_membresia varchar(20) NOT NULL,
usuario varchar(30) NOT NULL,
contraseña varchar(10) NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Socio_sams PRIMARY KEY (Id_socio)
);
CREATE TABLE CompraOnline(
Id_compra_online INT IDENTITY(1,1), 
importe varchar (40)NOT NULL,
precio varchar (3) NOT NULL,
fecha DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Compra_online PRIMARY KEY (Id_compra_online)
);
CREATE TABLE SistemaSocios(
Id_SistemaSocios INT IDENTITY(1,1), 
ubicacion varchar (30) NOT NULL,
fecha DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Sistema_Socios PRIMARY KEY (Id_SistemaSocios)
);
CREATE TABLE Membresia(
Id_membresia INT IDENTITY(1,1), 
fecha_vencimiento DATETIME NOT NULL,
tipo_membresia varchar(20) NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_MembresiaSams PRIMARY KEY (Id_membresia)
);
CREATE TABLE EmpleadoMembresias(
Id_empleado_membresias INT IDENTITY(1,1), 
nombre varchar(40) NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_EmpleadoMembresias PRIMARY KEY (Id_empleado_membresias)
);
CREATE TABLE JefeMembresias(
Id_jefe_membresias INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Jefe_Membresias PRIMARY KEY (Id_jefe_membresias)
);
CREATE TABLE Cajas(
Id_caja INT IDENTITY(1,1), 
sistemascobro varchar (40)NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_caja PRIMARY KEY (Id_caja)
);
CREATE TABLE cajero(
Id_cajero INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_cajero_sams PRIMARY KEY (Id_cajero)
);
CREATE TABLE Jefe_Cajas(
Id_jefe_cajas INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_JefeCajas PRIMARY KEY (Id_jefe_cajas)
);
CREATE TABLE SistemaCobro(
Id_SistemaCobro INT IDENTITY(1,1), 
fecha DATETIME NOT NULL,
ubicacion varchar (20) NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Sistema_cobro PRIMARY KEY (Id_SistemaCobro)
);
CREATE TABLE JefePiso(
Id_jefe_piso INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Jefe_piso PRIMARY KEY (Id_jefe_piso)
);
CREATE TABLE SubjefePiso(
Id_subjefe_piso INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Subjefe_piso PRIMARY KEY (Id_subjefe_piso)
);
CREATE TABLE EmpleadoPiso(
Id_empleado_piso INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Empleado_piso PRIMARY KEY (Id_empleado_piso)
);
CREATE TABLE TareaAsignada(
Id_tarea INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
tipo varchar (5)NOT NULL,
pasillo varchar (2)NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Tarea_asignada PRIMARY KEY (Id_tarea)
);
CREATE TABLE Gerente(
Id_gerente INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_gerente PRIMARY KEY (Id_gerente)
);
CREATE TABLE Subgerente(
Id_subgerente INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_sub_gerente PRIMARY KEY (Id_subgerente)
);
CREATE TABLE JefeLimpieza(
Id_jefelimpieza INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Jefe_limpieza PRIMARY KEY (Id_jefelimpieza)
);
CREATE TABLE Conserje(
Id_conserje INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_conserjeLimpieza PRIMARY KEY (Id_conserje)
);
CREATE TABLE Area(
Id_area INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_area PRIMARY KEY (Id_area)
);
CREATE TABLE ControlPrevencion(
Id_encargado_prevencion INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
tarea varchar (30),
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Control_prevencion PRIMARY KEY (Id_encargado_prevencion)
);
CREATE TABLE EmpleadoPrevencion(
Id_empleado_prevencion INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
tarea varchar (30),
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_empleadoPrevencion PRIMARY KEY (Id_empleado_prevencion)
);
CREATE TABLE Areaprevenir(
Id_area_prevenir INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_areaPrevenir PRIMARY KEY (Id_area_prevenir)
);
CREATE TABLE JefeRecibo(
Id_jefeRecibo INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Jefe_Recibo PRIMARY KEY (Id_jefeRecibo)
);
CREATE TABLE CamionRecibo(
Id_camion INT IDENTITY(1,1), 
nombreChofer varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Camion_Recibo PRIMARY KEY (Id_camion)
);
CREATE TABLE NuevoProducto(
Id_nuevoProducto INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
tipo varchar (20)NOT NULL,
descripcion varchar (60)NOT NULL,
fecha_recibo DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Nuevo_Producto PRIMARY KEY (Id_nuevoProducto)
);
CREATE TABLE JefeDeli(
Id_EncargadoDeli INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Jefe_Deli PRIMARY KEY (Id_EncargadoDeli)
);
CREATE TABLE CarniceroSams(
Id_carnicero INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Carnicero_Sams PRIMARY KEY (Id_carnicero)
);
CREATE TABLE PanaderoSams(
Id_panadero INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Panadero_Sams PRIMARY KEY (Id_panadero)
);
CREATE TABLE TareaDeli(
Id_TareaDeli INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
tipo varchar (40)NOT NULL,
fecha DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Tarea_Deli PRIMARY KEY (Id_TareaDeli)
);
CREATE TABLE JefeCongelados(
Id_EncargadoCongelados INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Jefe_Congelados PRIMARY KEY (Id_EncargadoCongelados)
);
CREATE TABLE EmpleadosCongelados(
Id_EmpleadoCongelados INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Empleado_Congelados PRIMARY KEY (Id_EmpleadoCongelados)
);
CREATE TABLE CajeroInbursa(
Id_CajeroInbursa INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Cajero_Inbursa PRIMARY KEY (Id_CajeroInbursa)
);
CREATE TABLE GerenteInbursa(
Id_GerenteInbursa INT IDENTITY(1,1), 
nombre varchar (40)NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
estatus bit DEFAULT 1,
contraseña varchar (8) NOT NULL
CONSTRAINT PK_Gerente_Inbursa PRIMARY KEY (Id_GerenteInbursa)
);
CREATE TABLE CajaInbursa(
Id_CajaInbursa INT IDENTITY(1,1), 
Sistema varchar (40)NOT NULL,
estatus bit DEFAULT 1,
CONSTRAINT PK_Caja_Inbursa PRIMARY KEY (Id_CajaInbursa)
);
CREATE TABLE SistemaInbursa(
Id_SistemaInbursa INT IDENTITY(1,1), 
fecha DATETIME NOT NULL,
ubicacion varchar (30) NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Sistema_inbursa PRIMARY KEY (Id_SistemaInbursa)
);
CREATE TABLE SistemaCentral(
Id_SistemaCentral INT IDENTITY(1,1), 
dueños varchar (40) NOT NULL,
fecha DATETIME NOT NULL,
ubicacion varchar (30) NOT NULL,
estatus bit DEFAULT 1
CONSTRAINT PK_Sistema_central PRIMARY KEY (Id_SistemaCentral)
);
GO
---------------------------------///INDICES///-----------------------------------------
CREATE INDEX  IX_CompañiaPedrote ON Compañia_Pedrote (Id_compañia);
GO
CREATE INDEX  IX_GerentePedrote ON Gerente_Pedrote (Id_gerentePedrote);
GO
CREATE INDEX  IX_Ejecutivo_Pedrote ON Ejecutivo_Pedrote (Id_ejecutivo);
GO
CREATE INDEX  IX_ProveedorPedrote ON Proveedor_Pedrote (Id_proveedor);
GO
CREATE INDEX  IX_LiderPedrote ON Lider_pedrote (Id_lider);
GO
CREATE INDEX  IX_SubliderPedrote ON Sublider_pedrote (Id_sublider);
GO
CREATE INDEX  IX_DemostradorPedrote ON Demostrador_pedrote (Id_demostrador);
GO
CREATE INDEX  IX_Producto ON Producto (Id_producto);
GO
CREATE INDEX  IX_Jefe_Sams_cafe ON Jefe_Sams_cafe (Id_jefe_cafe);
GO
CREATE INDEX  IX_Cocinero ON Cocinero (Id_cocinero);
GO
CREATE INDEX  IX_Comida ON Comida (Id_comida);
GO
CREATE INDEX  IX_SocioSams ON SocioSams (Id_socio);
GO
CREATE INDEX  IX_CompraOnline ON CompraOnline (Id_compra_online);
GO
CREATE INDEX  IX_SistemaSocios ON SistemaSocios (Id_SistemaSocios);
GO
CREATE INDEX  IX_Membresia ON Membresia (Id_membresia);
GO
CREATE INDEX  IX_EmpleadoMembresias ON EmpleadoMembresias (Id_empleado_membresias);
GO
CREATE INDEX  IX_JefeMembresias ON JefeMembresias (Id_jefe_membresias);
GO
CREATE INDEX  IX_Cajas ON Cajas (Id_caja);
GO
CREATE INDEX  IX_cajero ON cajero (Id_cajero);
GO
CREATE INDEX  IX_Jefe_Cajas ON Jefe_Cajas (Id_jefe_cajas);
GO
CREATE INDEX  IX_SistemaCobro ON SistemaCobro (Id_SistemaCobro);
GO
CREATE INDEX  IX_JefePiso ON JefePiso (Id_jefe_piso);
GO
CREATE INDEX  IX_SubjefePiso ON SubjefePiso (Id_subjefe_piso);
GO
CREATE INDEX  IX_EmpleadoPiso ON EmpleadoPiso (Id_empleado_piso);
GO
CREATE INDEX  IX_TareaAsignada ON TareaAsignada (Id_tarea);
GO
CREATE INDEX  IX_Gerente ON Gerente (Id_gerente);
GO
CREATE INDEX  IX_Subgerente ON Subgerente (Id_subgerente);
GO
CREATE INDEX  IX_JefeLimpieza ON JefeLimpieza (Id_jefelimpieza);
GO
CREATE INDEX  IX_Conserje ON Conserje (Id_conserje);
GO
CREATE INDEX  IX_Area ON Area (Id_area);
GO
CREATE INDEX  IX_ControlPrevencion ON ControlPrevencion (Id_encargado_prevencion);
GO
CREATE INDEX  IX_EmpleadoPrevencion ON EmpleadoPrevencion (Id_empleado_prevencion);
GO
CREATE INDEX  IX_Areaprevenir ON Areaprevenir (Id_area_prevenir);
GO
CREATE INDEX  IX_JefeRecibo ON JefeRecibo (Id_jefeRecibo);
GO
CREATE INDEX  IX_CamionRecibo ON CamionRecibo (Id_camion);
GO
CREATE INDEX  IX_NuevoProducto ON NuevoProducto (Id_nuevoProducto);
GO
CREATE INDEX  IX_JefeDeli ON JefeDeli (Id_EncargadoDeli);
GO
CREATE INDEX  IX_CarniceroSams ON CarniceroSams (Id_carnicero);
GO
CREATE INDEX  IX_PanaderoSams ON PanaderoSams (Id_panadero);
GO
CREATE INDEX  IX_TareaDeli ON TareaDeli (Id_TareaDeli);
GO
CREATE INDEX  IX_JefeCongelados ON JefeCongelados (Id_EncargadoCongelados);
GO
CREATE INDEX  IX_EmpleadosCongelados ON EmpleadosCongelados (Id_EmpleadoCongelados);
GO
CREATE INDEX  IX_CajeroInbursa ON CajeroInbursa (Id_CajeroInbursa);
GO
CREATE INDEX  IX_GerenteInbursa ON GerenteInbursa (Id_GerenteInbursa);
GO
CREATE INDEX  IX_CajaInbursa ON CajaInbursa (Id_CajaInbursa);
GO
CREATE INDEX  IX_SistemaInbursa ON SistemaInbursa (Id_SistemaInbursa);
GO
CREATE INDEX  IX_SistemaCentral ON  SistemaCentral(Id_SistemaCentral);
GO
-------------------------------///RELACIONES///-----------------------------------------
