
Create database CoursantDB
go
Use CoursantDB
go

-- Crear tabla: usuario
Create table Usuario (
	idUsuario int  NOT NULL primary key,
	nombres varchar(40),
	apellidos varchar(40),
	DNI char(8),
	telefono char(9) NULL,
	idAtc int,
	idTuris int,
	);

CREATE TABLE Aten_Cliente(
	idATC int primary key not null,
	nombres varchar(50) not null,
	apellidos varchar(50) not null,
	telefono char(9)null, 
	idForo int,
	idGuia int,
	);


--Crear tabla: Reservas_alojamiento
Create table Reservas_alojamiento (
	idReservar_aloja int  NOT NULL primary key,
	Destinovuelo varchar(50),
	Fechaing time,
	Fechasal time,
	idUsuario int,
	);


CREATE TABLE Automovil(
	idAuto int primary key not null,
	placa varchar(7) not null,
	modelo varchar(30) null,
	lincencia char(9) not null,
	idReserv_auto int,
	);

CREATE TABLE Reserva_Automovil(
	idReserv_auto int primary key not null,
	modelo varchar(30) null,
	fechainic time not null,
	fechacadu time not null,
	IdUsuario int,
	);

CREATE TABLE Foro(
	idForo int primary key not null,
	informacion varchar(300) null,
	DNI char(9) not null,
	);

--Crear tabla: Alojamientos
Create table Alojamientos (
	idAloja int  NOT NULL primary key,
	Destinovuelo varchar(50),
	Price decimal(6,2),
	nombrealoja varchar(40),
	idReservar_Aloja int,
	);

-- Crear tabla: Registro_Alojamiento
Create table Registro_aloj(
	idRegis_aloj int  NOT NULL primary key,
	nombre_aloja varchar(40),
	codi_aloja char(11),
	idAloja int,
	idResul int,
	);

-- Crear tabla: Resultado_aloj
Create table Resultado_aloj (
	idResul int  NOT NULL primary key,
	Descripcion varchar(200)NULL,
	codi_aloj char(11) NOT NULL,
	);


--Crear tabla: Aerolineas
Create table Aerolineas (
	idAerolineas int Not null primary key,
	nombres varchar(40),
	star char(5),
	idUsuario int,
	);

-- Crear tabla: Reservar_vuelo
Create table Reservar_vuelo (
	idReservar_vuelo int  NOT NULL primary key,
	Origenvuelo varchar(50) NOT NULL,
	Destinovuelo varchar(50) NOT NULL,
	Fechaida datetime NOT NULL,
	Fechareturn datetime NOT NULL,
	idAerolineas int,
	idRegiVuelo int,
	idUsuario int,
	);

--drop table Reservar_vuelo

-- Crear tabla: Registro_vuelo
Create table Registro_vuelo (
	idRegivue int  Not null primary key,
	numerovuelo char(11) NOT NULL,
	nombres varchar(40) NOT NULL,
	idComp int,
	);

-- Crear tabla: Equipaje_extra
Create table Equipaje_extra (
	idEquipaje int not null primary key,
	codi_equipaje char(11) not null,
	idRegiVue int,
	);

-- Crear tabla: Vuelos
Create table vuelos(
	idVuelos int  not null primary key,
	destinovuelo varchar(50) NOT NULL,
	price decimal(6,2) NOT NULL,
	numerovuelo char(11) NOT NULL,
	idReservar_vuelo int,
	idSubasta int,
	);
	
-- Crear tabla: Comparar_precios_de_vuelos
Create table Comparar_precios_de_vuelos (
	idComp int  not null primary key,
	origenvuelo varchar(50) NOT NULL,
	destinovuelo varchar(50) NOT NULL,
	idVuelos int,
	);

--Crear tabla: Calendario
Create table Calendario (
	idCalendario int  NOT NULL primary key,
	Fecha date NULL,
	idComp int,
	);

-- Crear tabla: Subastas_asientos
Create table Subastas_asientos (
	idsubasta int  NOT NULL primary key,
	nombres varchar (40) NOT NULL,
	apellidos varchar(40) NOT NULL,
	DNI char(8) NULL,
	Destinovuelo varchar(40) NOT NULL,
	puja decimal(6,2) not null,
	idReservar_vuelo int,
	idAsientos int,
	);

-- Crear tabla: Asientos
Create table Asientos (
	idAsientos int  NOT NULL primary key,
	Numerovuelo char(7) not null,
	Tipoasiento varchar(20) null,
	idVuelos int,
	);

--Crear tabla: Descuento
Create table Descuento (
	idDescuento int  NOT NULL primary key,
	DNI char(8),
	idUsuario int,
	);

-- Crear tabla: Millas
Create table Millas (
	idContador int  not null primary key,
	nombres varchar (40),
	apellidos varchar(40),
	DNI char(8),
	idDescuento int,
	);

--Crear tabla: Cupones
Create table cupones(
	idCupon int  not null primary key,
	codi_cupon varchar(20) NOT NULL,
	idDescuento int,
	);

--Crear tabla Reservas_vip
Create table Reservas_vip (
	idVip int  NOT NULL primary key,
	DNI char(8)not null,
	codi_cupon varchar(20) not null,
	idCupon int,
	);

--Crear tabla: Paquetes_turisticos
Create table Paquetes_turisticos (
	idTuris int  NOT NULL primary key,
	Destinovuelo varchar(50) NOT NULL,
	Fechaida time NOT NULL,
	Fechareturn time  NOT NULL,
	idTour int,
	);


CREATE TABLE Tour_guiados(
	idTour int primary key  not null,
	nametour varchar(50) not null,
	);

CREATE TABLE Asesor_Pasaporte(
	idPasaporte int primary key  not null,
	nombres varchar(40) not null,
	DNI char(8) not null,
	idAtc int,
	);

CREATE TABLE Guia_app (
	idGuia int primary key  not null,
	Destinovuelo varchar(50) not null
	);


--Insertar valores

Insert into Usuario (idUsuario, nombres, apellidos, DNI, telefono) Values
					(1001,'Sali', 'Snechk', '75689123', '999951369'),
					(1002,'Miluzka', 'Switch', '45978318', '978315869'),
					(1003,'Santiago', 'Meram', '09548651', '916872321'),
					(1004,'Lucas', 'Norma', '76498321', '987239823'),
					(1006,'Jimmy', 'Mi', '71362478', '938975623' ),
					(1007,'Andy', 'kalipto', '71962378', '937863223' ),
					(1008,'Antonio', 'Luzik', '78552423', '915788623' ),
					(1009,'Milton', 'Uzuki', '79642578', '941287635' ),
					(1010,'Miky', 'Newton', '74196788', '998745632' ),
					(1011,'Michael', 'Nermal', '79674828', '978541268' ),
					(1012,'Jeremy', 'Deyder', '71365478', '978965412' ),
					(1013,'Dina', 'Michael', '72578478', '978254136' ),
					(1014,'Danae', 'Romulo', '78478678', '974158962' );


Insert into Aten_Cliente (idATC, nombres, apellidos, telefono) Values
					(101,'Sali', 'Snechk','999951369'),
					(102, 'Miluzka', 'Switch', '978315869'),
					(103, 'Santiago', 'Meram', '916872321'),
					(104, 'Lucas', 'Norma',  '987239823'),
					(105, 'Jimmy', 'luzk','938975623'),
					(106, 'Luisa', 'Kize',  '986639823'),
					(107, 'Ana', 'Buenaventura',  '987239843'),
					(108, 'Amanda', 'Miandez',  '987216723'),
					(109, 'Angelica', 'Amirola',  '984589823'),
					(110, 'Snat', 'Ampaya',  '987284623'),
					(111, 'Senna', 'Rodriguez',  '987234873'),
					(112, 'Kaya', 'Gutierrez',  '987234713'),
					(113, 'Mia', 'schk',  '987785223'),
					(114, 'Norma', 'Nora',  '987974313');
	

Insert into Reservas_alojamiento (idReservar_aloja, Destinovuelo, Fechaing, Fechasal) Values
					(1111,'Trujillo', '01-27-2024','02-05-2024' ),
					(2222, 'Cusco', '05-26-2023', '05-30-2023' ),
					(3333, 'Santiago', '12-15-2023', '12-25-2023' ),
					(4444, 'Buenos Aires', '11-11-2023',  '12-11-2023' ),
					(5555, 'Piura', '02-08-2023','02-11-2023' ),
					(6666, 'Lima', '03-20-2023', '03-25-2023'),
					(7777, 'Rio de Janeiro', '08-10-2023', '08-15-2023'),
					(8888, 'Barcelona', '09-05-2023', '09-15-2023'),
					(9999, 'Tokio', '06-01-2024', '06-10-2024'),
					(1010, 'New York', '04-15-2023', '04-20-2023');

Insert into Automovil(idAuto, placa, modelo, lincencia) Values
					(1111,'BXA-345', 'Tucson','872345985' ),
					(1112, 'CAC-912', 'Elantra', '334569112' ),
					(1113, 'DE0.81A', 'Corolla', '668812745' ),
					(1114, 'BES-001', 'Yaris',  '112134098' ),
					(1115, 'PEN-1AA', 'Sentra','347645918' ),
					(1116, 'ABC-123', 'Civic', '987654321'),
					(1117, 'DEF-456', 'Accord', '123456789'),
					(1118, 'GHI-789', 'CR-V', '654321987'),
					(1119, 'JKL-012', 'Pilot', '789456123'),
					(1120, 'MNO-345', 'Fit', '321654987');

Insert into Reserva_Automovil(idReserv_auto, modelo, fechainic, fechacadu) VALUES
					(1001, 'Yaris', '27.01.2024', '29.01.2024'),
					(1002, 'Corolla', '10.11.2024', '12.11.2024'),
					(1003, 'Sentra', '30.01.2024', '01.02.2024'),
					(1004, 'Elantra', '17.05.2024', '19.05.2024'),
					(1005, 'Tucson', '31.10.2024', '02.11.2024'),
					(1006, 'Civic', '15.02.2024', '18.02.2024'),
					(1007, 'Accord', '20.06.2024', '23.06.2024'),
					(1008, 'CR-V', '05.09.2024', '08.09.2024'),
					(1009, 'Pilot', '10.04.2024', '13.04.2024'),
					(1010, 'Fit', '25.07.2024', '28.07.2024');


Insert into Foro (idForo,informacion,DNI) Values
					(001,'Necesito ayuda con mi tramite', '71785462'),
					(002, 'Necesito ayuda con su app', '48516771'),
					(003, 'No me funciona su soporte', '61604334'),
					(004, 'El sistema presenta problemas', '09312831'),
					(005, 'Deben añadir más opciones', '48192817'),
					(006, 'Tengo una sugerencia para mejorar el servicio', '27163928'),
					(007, '¿Cuál es el horario de atención al cliente?', '75612983'),
					(008, '¿Dónde puedo encontrar los términos y condiciones?', '62948571'),
					(009, '¿Qué documentos necesito para solicitar un préstamo?', '91372856'),
					(010, '¿Cuánto tiempo tarda la entrega de los productos?', '39281047');


Insert into Registro_aloj (idRegis_aloj, nombre_aloja, codi_aloja) Values
					(0021,'Sleep', 'AXCDF123099'),
					(0022, 'Madrid', 'AXCDF123100'),
					(0023, 'Dulces Sueños', 'AXCDF123101'),
					(0024, 'La Perla', 'AXCDF123102'),
					(0025, 'Sleep Paz', 'AXCDF123103'),
					(0026, 'Hotel Paradise', 'AXCDF123104'),
					(0027, 'Sunset Resort', 'AXCDF123105'),
					(0028, 'Beachfront Villa', 'AXCDF123106'),
					(0029, 'Mountain Retreat', 'AXCDF123107'),
					(0030, 'City View Apartments', 'AXCDF123108');

Insert into Alojamientos (idAloja, Destinovuelo, Price, nombrealoja) Values
					(0011,'Bolivia', 100.00, 'Sleep Paz'),
					(0012, 'Trujillo', 25.00, 'Sleep'),
					(0013, 'Arequipa', 25.0, 'Dulces Sueños'),
					(0014, 'España', 450.00, 'Madrid'),
					(0015, 'Huancayo', 20.00,'La Perla');

Insert into Resultado_aloj (idResul, Descripcion, codi_aloj) Values
					(0021,'Buen alojamiento para descansar', 'AXCDF123099'),
					(0022, 'Alojamiento con buen ambiente', 'AXCDF123100'),
					(0023, 'Contamos con sala de juegos', 'AXCDF123101'),
					(0024, 'Camas Matrimoniales, camarotes', 'AXCDF123102'),
					(0025, 'Buen ambiente, sin ningun ruido', 'AXCDF123103'),
					(0026, 'Habitaciones amplias y cómodas', 'AXCDF123104'),
					(0027, 'Vistas espectaculares al mar', 'AXCDF123105'),
					(0028, 'Piscina y spa disponibles', 'AXCDF123106'),
					(0029, 'Excelente servicio de atención al cliente', 'AXCDF123107'),
					(0030, 'Desayuno incluido en la tarifa', 'AXCDF123108');


Insert into Aerolineas (idAerolineas, nombres, star) Values
					(01,'Star Peru', '4'),
					(02, 'LATAM AIRLINE', '5'),
					(03, 'SKY AIRLINE', '5'),
					(04, 'JetSmart', '3.5'),
					(05, 'VivaAir', '3'),
					(06, 'Avianca', '4.5'),
					(07, 'Copa Airlines', '4'),
					(08, 'Delta Airlines', '4.5'),
					(09, 'Emirates', '5'),
					(10, 'British Airways', '4.5');

Insert into vuelos( idvuelos, destinovuelo, price, numerovuelo ) Values
				  (01, 'Mexico', 99, '45698775231' ),
	  			  (02, 'Espana', 40.9, '45978318687' ),
				  (03, 'Nueva Zelanda', 84.5, '09548651001' ),	
				  (04, 'Australia', 74.5, '76498321635' ),
				  (05, 'Alemania', 400.5,	 '71552378987' ),
				  (06, 'Francia', 120.75, '91756324857'),
				  (07, 'Japón', 250.25, '28974362198'),
				  (08, 'Canadá', 180.5, '35678210947'),
				  (09, 'Italia', 320.0, '67891234567'),
				  (10, 'Brasil', 150.0, '12874356987');

Insert into Millas( idContador, nombres, apellidos, DNI ) Values
				  (111, 'Omar Daryn', 'Mirvin Moky', '45698775' ),
	  			  (222, 'Diana Deny', 'Swetch Swuizh', '45983168' ),
				  (333, 'Matias Daniel', 'Zmich Menzh', '05486601' ),	
				  (444, 'Martin Marvin', 'Vech Vilj', '76483255' ),
				  (555, 'Chupetin Realplaza', 'Mizjd Mviuj','73789874' ),
				  (666, 'Carla Daniela', 'López Gómez', '91756324'),
				  (777, 'Juan Carlos', 'Ramírez Pérez', '28974362'),
				  (888, 'María Fernanda', 'Hernández Sánchez', '35678210'),
				  (999, 'Pedro Luis', 'García Rodríguez', '67891234'),
				  (1010, 'Ana María', 'Martínez López', '12874356');

Insert into Asientos( idAsientos, Numerovuelo,Tipoasiento) Values
					(151, '550001', 'Premium'),
	  				(152, '440001', 'Economico'),
					(153, '440002', 'Economico'),	
					(241, '550002', 'Premium'),
					(242, '550003', 'Premium'),
					(154, '440003', 'Economico'),
					(243, '550004', 'Premium'),
					(156, '440004', 'Economico'),
					(244, '550005', 'Premium'),
					(245, '440005', 'Economico');	

Insert into Subastas_asientos( idsubasta, Ns, apellidos, DNI, Destinovuelo, puja ) Values
					(111, 'Omar Daryn', 'Mirvin Moky', '46958775', 'Mexico', 22.5 ),
	  				(222, 'Diana Deny', 'Swetch Swuizh', '45983168', 'Francia', 45.5 ),
					(333, 'Matias Daniel', 'Zmich Menzh', '05426601', 'Espana', 24.5 ),	
					(444, 'Martin Marvin', 'Vech Vilj', '76483255', 'Argentina', 45.5 ),
					(555, 'Chupetin Realplaza', 'Mizjd Mviuj','74389874', 'Alemania', 25.2 ),
					(666, 'Carla Daniela', 'López Gómez', '91756324', 'Japón', 35.0),
					(777, 'Juan Carlos', 'Ramírez Pérez', '28974362', 'Estados Unidos', 50.0),
					(888, 'María Fernanda', 'Hernández Sánchez', '35678210', 'Canadá', 40.5),
					(999, 'Pedro Luis', 'García Rodríguez', '67891234', 'Brasil', 32.0),
					(1010, 'Ana María', 'Martínez López', '12874356', 'Perú', 28.75);

Insert into Reservar_vuelo( idReservar_vuelo, Origenvuelo,Destinovuelo, Fechaida, Fechareturn ) Values
					(111, 'Mexico', 'Lima', '02.11.2023', '02.03.2023'  ),
	  				(222, 'Lima', 'Portugal', '04.10.2023', '05.12.2023'  ),
					(333, 'Peru', 'Reino Unido', '05.05.2023', '05.10.2023'  ),	
					(444, 'Arequipa', 'Nueva Zelanda', '09.10.2023', '10.01.2023' ),
					(555, 'Cusco', 'China','07.06.2023', '07.05.2023' ),
					(666, 'Lima', 'Estados Unidos', '12.09.2023', '12.05.2023'),
					(777, 'Lima', 'España', '08.10.2023', '08.04.2023'),
					(888, 'Santiago', 'Argentina', '06.02.2023', '06.04.2023'),
					(999, 'Cusco', 'Colombia', '11.05.2023', '11.06.2023'),
					(1000, 'Lima', 'Chile', '09.01.2023', '09.10.2023');

Insert into Asesor_Pasaporte( idPasaporte, nombres, DNI ) Values
					( 11, 'Pablo Casas', '78154325'),
	  				( 22, 'Aldair Fuentes', '34567901'),
					( 33, 'Jean Diaz', '09567431'),	
					( 44, 'Alberto Kanashiro', '77123451'),
					( 55, 'Dario Bravo', '42356985'),
					(66, 'María Torres', '91756324'),
					(77, 'Carlos Sánchez', '28974362'),
					(88, 'Ana Rodríguez', '35678210'),
					(99, 'Juan Pérez', '67891234'),
					(101, 'Laura Gómez', '12874356');
	
INSERT INTO Calendario (idCalendario, Fecha) VALUES
					(1011, '02.11.2023'),
					(1012, '08.12.2023'),
					(1013, '11.11.2023'),
					(1014, '12.03.2023'),
					(1015, '10.05.2023'),
					(1016, '07.12.2023'),
					(1017, '01.10.2023'),
					(1018, '04.03.2023'),
					(1019, '06.11.2023'),
					(1020, '08.06.2023');
	

Insert into Comparar_precios_de_vuelos( idComp, origenvuelo,destinovuelo) Values
					( 211, 'Mexico', 'Lima'),
	  				( 212, 'Lima', 'Portugal'),
					( 213, 'Peru', 'Reino Unido'),	
					( 214, 'Arequipa', 'Nueva Zelanda'),
					( 215, 'Cusco', 'China'),
					( 216, 'Pisco', 'Colombia'),
					( 217, 'Piura', 'Chile'),
					( 218, 'Chiclayo', 'Argentina'),
					( 219, 'Trujillo', 'Australia'),
					( 220, 'Iquitos', 'España');

Insert into cupones( idCupon, codi_cupon) Values
					( 15, 'HX8W4T7NXBTA6J'),
	  				( 16, 'KHT7FGED4NPJJD'),
					( 17, 'NQLYKMHYTSQKWP'),	
					( 18, 'Y4FCNLXLF7RKP3'),
					( 19, 'CP9SRMWBJRQDG9'),
					( 20, 'ASDHASJXCNXZCZ'),
					( 21, 'OIEUOIAJCKNKAN'),
					( 22, 'ASDLAIWUDIASID'),
					( 23, 'ZXCNSJLAHDUHIA'),
					( 24, 'QWIUQWIAMXMXAS');

Insert into Descuento( idDescuento, DNI) Values
					( 20, '78654312'),
	  				( 30, '75672341'),
					( 40, '76837213'),	
					( 50, '76321896'),
					( 60, '77443256'),
					( 70, '71834833'),
					( 80, '75939431'),
					( 90, '71293934'),
					( 100, '73432823');

Insert into Equipaje_extra( idEquipaje, codi_equipaje) Values
					( 21, '7UQSXV7RGH'),
	  				( 31, 'U8PCRUB7CR'),
					( 41, '4NPFHEBFKW'),	
					( 51, '6NTM2QPM87'),
					( 61, 'QH97UE4E6Z'),
					( 71, 'ZXMZXASAKS'),
					( 81, 'ASDXMZMXAL'),
					( 91, 'SMASJUDLAÑ'),
					( 101, 'ASDASDMNAM'),
					( 111, 'QOWQISAMZA');

Insert into Guia_app( idGuia, Destinovuelo) Values
					( 01, 'Tarapoto'),
	  				( 02, 'Huancayo'),
					( 03, 'Piura'),
					( 04, 'Madrid'),
					( 05, 'Roma'),
					( 06, 'Santiago'),
					( 07, 'Buenos Aires'),
					( 08, 'Londres'),
					( 09, 'Berlin'),
					( 10, 'Roma');

INSERT INTO Paquetes_turisticos (idTuris, Destinovuelo, Fechaida, Fechareturn) VALUES
					(111, 'Mexico', '01.01.2023', '02.11.2023'),
					(222, 'Trujillo', '15.04.2023', '20.04.2023'),
					(333, 'Roma', '01.05.2023', '05.05.2023'),
					(444, 'Arequipa', '23.09.2023', '30.09.2023'),
					(555, 'Cusco', '06.07.2023', '16.07.2023'),
					(666, 'Lima', '10.05.2023', '20.05.2023'),
					(777, 'Berlin', '06.08.2023', '17.05.2023'),
					(888, 'Santiago', '17.09.2023', '26.05.2023'),
					(999, 'Madrid', '13.02.2023', '22.05.2023'),
					(101010, 'Bogota', '16.01.2023', '24.05.2023');


Insert into Registro_vuelo( idRegivue, numerovuelo, nombres) Values
					( 211, '3537327383', 'Fernado'),
	  				( 212, '7644476956', 'Francisco'),
					( 213, '9933623945', 'Italo'),	
					( 214, '4745375322', 'Gabriel'),
					( 215, '4789792599', 'Kevin'),
					( 216, '5758023023', 'Mario'),
					( 217, '7457632838', 'Esteban'),
					( 218, '4757493944', 'Daniel'),
					( 219, '3234374332', 'Matias'),
					( 220, '7584837322', 'Manuel');

Insert into Reservas_vip( idVip, DNI,codi_cupon) Values
					( 211, '78152341', 'WHRHPFEJ2DEZVTW'),
	  				( 212, '45673212', 'S625DEPUEAB27GN'),
					( 213, '65431231', 'KV8T479SDAERJCE'),	
					( 214, '06273138', 'MLHT24VYPPA8E9K'),
					( 215, '79987123', 'DT53MMR8TDLJHXC'),
					( 216, '72932323', 'WSADASDXZLASASA'),
					( 217, '71273422', 'SAWEKNSXKNKSMAA'),
					( 218, '71283493', 'WEASAMZAWEWEFDA'),
					( 219, '72643849', 'QWUWYEIUDASADFX'),
					( 220, '71283443', 'IWUEIWEMSAWPEDX');


Insert into Tour_guiados( idTour, nametour) Values
					( 15, 'Paracas Full Day'),
	  				( 16, 'TrujiTour'),
					( 17, 'GorilasTour'),	
					( 18, 'Los Chullachaqui'),
					( 19, 'Inca Trillogy'),
					( 20, 'Machu Picchu Adventure'),
                    ( 21, 'Amazon Rainforest Expedition'),
                    ( 22, 'Colca Canyon Trek'),
                    ( 23, 'Uros and Taquile Islands Tour'),
                    ( 24, 'Sacred Valley Excursion');


--Establecer llaves foraneas a tablas creadas

ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_idAtc FOREIGN KEY (idAtc) REFERENCES Aten_Cliente (idATC)
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_idTuris FOREIGN KEY (idTuris) REFERENCES Paquetes_turisticos (idTuris)
ALTER TABLE Aten_Cliente ADD CONSTRAINT FK_Usuario_idForo FOREIGN KEY (idForo) REFERENCES Foro (idForo)
ALTER TABLE Aten_Cliente ADD CONSTRAINT FK_Usuario_idGuia FOREIGN KEY (idGuia) REFERENCES Guia_app (idGuia)
ALTER TABLE Reservas_alojamiento ADD CONSTRAINT FK_Usuario_idUs FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
ALTER TABLE Automovil ADD CONSTRAINT FK_Usuario_idReserv_auto FOREIGN KEY (idReserv_auto) REFERENCES Reserva_Automovil (idReserv_auto)
ALTER TABLE Reserva_Automovil ADD CONSTRAINT FK_Usuario_idUser FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
ALTER TABLE Alojamientos ADD CONSTRAINT FK_Usuario_idReserv_aloja FOREIGN KEY (idReservar_Aloja) REFERENCES Reservas_alojamiento (idReservar_Aloja)
ALTER TABLE Registro_aloj ADD CONSTRAINT FK_Usuario_idAloja FOREIGN KEY (idAloja) REFERENCES Alojamientos (idAloja)
ALTER TABLE Registro_aloj ADD CONSTRAINT FK_Usuario_idResul FOREIGN KEY (idResul) REFERENCES Resultado_aloj (idResul)
ALTER TABLE Aerolineas ADD CONSTRAINT FK_Reserva_Automovil_idUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
ALTER TABLE Reservar_vuelo ADD CONSTRAINT FK_Reservar_vuelo_idAerolineas FOREIGN KEY (idAerolineas) REFERENCES Aerolineas (idAerolineas)
ALTER TABLE Reservar_vuelo ADD CONSTRAINT FK_Reservar_vuelo_idRegiVuelo FOREIGN KEY (idRegiVuelo) REFERENCES Registro_vuelo (idRegivue)
ALTER TABLE Reservar_vuelo ADD CONSTRAINT FK_Reservar_vuelo_idUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
ALTER TABLE Registro_vuelo ADD CONSTRAINT FK_Registro_vuelo_idComp FOREIGN KEY (idComp) REFERENCES Comparar_precios_de_vuelos (idComp)
ALTER TABLE Equipaje_extra ADD CONSTRAINT FK_Equipaje_extra_idRegiVue FOREIGN KEY (idRegiVue) REFERENCES Registro_vuelo (idRegiVue)
ALTER TABLE vuelos ADD CONSTRAINT FK_vuelos_idReservar_vuelo FOREIGN KEY (idReservar_vuelo) REFERENCES Reservar_vuelo (idReservar_vuelo)
ALTER TABLE vuelos ADD CONSTRAINT FK_vuelos_idSubasta FOREIGN KEY (idSubasta) REFERENCES Subastas_asientos (idsubasta)
ALTER TABLE Comparar_precios_de_vuelos ADD CONSTRAINT FK_Comparar_precios_de_vuelos_idVuelos FOREIGN KEY (idVuelos) REFERENCES vuelos (idVuelos)
ALTER TABLE Calendario ADD CONSTRAINT FK_Calendario_idComp FOREIGN KEY (idComp) REFERENCES Comparar_precios_de_vuelos (idComp)
ALTER TABLE Subastas_asientos ADD CONSTRAINT FK_Subastas_asientos_idReservar_vuelo FOREIGN KEY (idReservar_vuelo) REFERENCES Reservar_vuelo (idReservar_vuelo)
ALTER TABLE Subastas_asientos ADD CONSTRAINT FK_Subastas_asientos_idAsientos FOREIGN KEY (idAsientos) REFERENCES Asientos (idAsientos)
ALTER TABLE Asientos ADD CONSTRAINT FK_Asientos_idVuelos FOREIGN KEY (idVuelos) REFERENCES vuelos (idVuelos)
ALTER TABLE Descuento ADD CONSTRAINT FK_Descuento_idUsuario FOREIGN KEY (idUsuario) REFERENCES Usuario (idUsuario)
ALTER TABLE Millas ADD CONSTRAINT FK_Millas_idDescuento FOREIGN KEY (idDescuento) REFERENCES Descuento (idDescuento)
ALTER TABLE cupones ADD CONSTRAINT FK_cupones_idDescuento FOREIGN KEY (idDescuento) REFERENCES Descuento (idDescuento)
ALTER TABLE Reservas_vip ADD CONSTRAINT FK_Reservas_vip_idCupon FOREIGN KEY (idCupon) REFERENCES cupones (idCupon)
ALTER TABLE Paquetes_turisticos ADD CONSTRAINT FK_Paquetes_turisticos_idTour FOREIGN KEY (idTour) REFERENCES Tour_guiados (idTour)
ALTER TABLE Asesor_Pasaporte ADD CONSTRAINT FK_Asesor_Pasaporte_idAtc FOREIGN KEY (idAtc) REFERENCES Aten_Cliente (idATC


--Eliminar llaves

--ALTER TABLE Usuario drop CONSTRAINT FK_Usuario_idAtc;
--ALTER TABLE Usuario drop CONSTRAINT FK_Usuario_idTuris; 
--ALTER TABLE Aten_Cliente drop CONSTRAINT FK_Usuario_idForo ;
--ALTER TABLE Aten_Cliente drop CONSTRAINT FK_Usuario_idGuia ;
--ALTER TABLE Reservas_alojamiento drop CONSTRAINT FK_Usuario_idUs;
--ALTER TABLE Automovil drop CONSTRAINT FK_Usuario_idReserv_auto ;
--ALTER TABLE Reserva_Automovil drop CONSTRAINT FK_Usuario_idUser ;
--ALTER TABLE Alojamientos Drop CONSTRAINT FK_Usuario_idReserv_aloja ;
--ALTER TABLE Registro_aloj Drop CONSTRAINT FK_Usuario_idAloja;
--ALTER TABLE Registro_aloj Drop CONSTRAINT FK_Usuario_idResul ;
--ALTER TABLE Aerolineas Drop CONSTRAINT FK_Reserva_Automovil_idUsuario ;
--ALTER TABLE Reservar_vuelo Drop CONSTRAINT FK_Reservar_vuelo_idAerolineas ;
--ALTER TABLE Reservar_vuelo drop CONSTRAINT FK_Reservar_vuelo_idRegiVuelo ;
--ALTER TABLE Reservar_vuelo drop CONSTRAINT FK_Reservar_vuelo_idUsuario;
--ALTER TABLE Registro_vuelo Drop CONSTRAINT FK_Registro_vuelo_idComp;
--ALTER TABLE Equipaje_extra Drop CONSTRAINT FK_Equipaje_extra_idRegiVue;
--ALTER TABLE vuelos Drop CONSTRAINT FK_vuelos_idReservar_vuelo ;
--ALTER TABLE vuelos Drop CONSTRAINT FK_vuelos_idSubasta ;
--ALTER TABLE Comparar_precios_de_vuelos Drop CONSTRAINT FK_Comparar_precios_de_vuelos_idVuelos ;
--ALTER TABLE Calendario drop CONSTRAINT FK_Calendario_idComp;
--ALTER TABLE Subastas_asientos Drop CONSTRAINT FK_Subastas_asientos_idReservar_vuelo;
--ALTER TABLE Subastas_asientos drop CONSTRAINT FK_Subastas_asientos_idAsientos ;
--ALTER TABLE Asientos Drop CONSTRAINT FK_Asientos_idVuelos ;
--ALTER TABLE Descuento Drop CONSTRAINT FK_Descuento_idUsuario ;
--ALTER TABLE Millas Drop CONSTRAINT FK_Millas_idDescuento ;
--ALTER TABLE cupones Drop CONSTRAINT FK_cupones_idDescuento ;
--ALTER TABLE Reservas_vip Drop CONSTRAINT FK_Reservas_vip_idCupon ;
--ALTER TABLE Paquetes_turisticos Drop CONSTRAINT FK_Paquetes_turisticos_idTour;
--ALTER TABLE Asesor_Pasaporte Drop CONSTRAINT FK_Asesor_Pasaporte_idAtc;
