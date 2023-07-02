--Queries RELATIONAL SQL (15 = 3 X estudiante)

use CoursantDB
GO
  
--Consultar lista de clientes

Create procedure ListarClientes
As
Begin
	Select nombres, apellidos
	From Usuario;
End;

Exec ListarClientes;

--Este codigo nos muestra los nombres que tengan 2 a o menos
Select nombres, telefono, count(*) from Aten_Cliente
Where nombres like '%a%'
Group by nombres, telefono
having count(*) < 2
Order by count(*) desc


-- Comando update para editar datos ingresados
Select * from Asientos;
update Asientos set Tipoasiento = 'premium' where Numerovuelo >= 440000;
update Asientos set Tipoasiento = 'Economico' where Numerovuelo >= 550000;



--En esta sección se logra visualizar las pujas redondeadas
Select Destinovuelo, Price, nombrealoja,
	floor(Price) as abajo,
	ceiling(Price) as arriba
	from Alojamientos;

--Order By para atender a los clientes por orden de llegada
Select * from Aten_Cliente
	order by nombres;
Select nombres, apellidos, telefono
	from Aten_Cliente order by nombres;


--Procedure obtener nombres, apellidos y descripción
create procedure us_Getname
as
begin

select u.nombres, u.apellidos, a.Descripcion
	from Usuario u
	join  Descripcion d ON u.idUsuario = a.idResul
end
go
exec us_Getname
go


--Consultar cliente con tipo de Asiento
CREATE PROCEDURE usp_listarclienasiento
AS
BEGIN
    SELECT U.nombres, U.apellidos, A.Tipoasiento
    FROM Usuario U
    LEFT JOIN Asientos e ON U.idUsuario = U.idUsuario
    LEFT JOIN Asientos A ON U.idUsuario = A.Tipoasiento;
END;

exec usp_listarclienasiento


--Obtener información del Usuario y tipo de asiento comprado

CREATE PROCEDURE ObtenerInformacionUsuario
    @idUsuario INT
AS
BEGIN
    SELECT U.nombres, U.apellidos, A.Tipoasiento
    FROM Usuario U
    LEFT JOIN Reservar_vuelo RV ON U.idUsuario = RV.idUsuario
    LEFT JOIN Asientos A ON RV.idReservar_vuelo = A.idVuelos
    WHERE U.idUsuario = @idUsuario;
END;

exec ObtenerInformacionUsuario

-- Obtener información de modelos de autos disponibles
--Para la reserva
create procedure ObtenerModelosAutosDisponibles
as
begin
    select modelo
    from Automovil
    where idReserv_auto IS NULL;
end;

EXEC ObtenerModelosAutosDisponibles

--Visualizar Fecha reservada del automovil
create procedure usp_obtenerfecha
    @idReservaAuto INT
as
begin
    select fechainic, fechacadu
    from Reserva_Automovil
    where idReserv_auto = @idReservaAuto;
end;

exec usp_obtenerfecha


-- Visualiza el destino y precio de alojamientos

create procedure usp_ListarDestinosYPrecio
as
begin
    select Destinovuelo, price
    from vuelos
end;

exec usp_ListarDestinosYPrecio


--Procedimiento para visualizar al usuario con la descripción
--que necesite ayuda

create procedure usp_AñadirNomConForo
as
begin
    select U.nombres, U.apellidos, F.informacion
    into Resul
    from Usuario U
    INNER JOIN Aten_Cliente AC ON U.idAtc = AC.idATC
    INNER JOIN Foro F ON AC.idForo = F.idForo;

    select * from Resul;

    drop table Resul
end;

exec usp_AñadirNomConForo


--Permite visualizar el nombre del cliente con los datos de su reserva

create procedure usp_visualizaruseryaloja
as
begin
    select U.nombres AS 'Jimmy', A.nombrealoja AS 'Sleep', A.codi_aloja AS 'AXCDF123099'
    from Usuario U
    INNER JOIN Reservas_alojamiento RA ON U.idUsuario = RA.idUsuario
    INNER JOIN Registro_aloj R ON RA.idReservar_Aloja = R.idReservar_Aloja
    INNER JOIN Alojamientos A ON R.idAloja = A.idAloja;
end;

exec usp_visualizaruseryaloja


--Permite agregar descuentos al usuario

CREATE PROCEDURE usp_descuentousuario
    @idUsuario int,
    @DNI char(8),
    @idDescuento int
AS
BEGIN
    UPDATE Usuario
    SET @idUsuario = @idDescuento
    WHERE idUsuario = @idUsuario;

    INSERT INTO Descuento (idDescuento, DNI, idUsuario)
    VALUES (@idDescuento, @DNI, @idUsuario);
    
    PRINT 'Descuento agregado exitosamente.';
END;

exec usp_descuentousuario


--Visualiza el nombre del tour

CREATE PROCEDURE ListarNombreTour
AS
BEGIN
    SELECT nametour AS 'Paracas Full Day'
    FROM Tour_guiados;
END

exec ListarNombreTour

