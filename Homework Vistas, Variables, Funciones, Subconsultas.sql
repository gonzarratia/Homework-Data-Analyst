-- Crear la base de datos
CREATE DATABASE StartupSoftware;

-- Usar la base de datos 
USE StartupSoftware;

-- Crear tabla 'Clientes'
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Contacto VARCHAR(100),
    Email VARCHAR(100)
);

-- Crear tabla 'Proyectos'
CREATE TABLE Proyectos (
    ProyectoID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(255),
    FechaInicio DATE,
    FechaFin DATE,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Crear tabla 'Empleados'
CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Posicion NVARCHAR(100),
    Salario DECIMAL(10, 2)
);

-- Crear tabla 'AsignacionesProyecto'
CREATE TABLE AsignacionesProyecto (
    EmpleadoID INT,
    ProyectoID INT,
    HorasAsignadas INT,
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID),
    FOREIGN KEY (ProyectoID) REFERENCES Proyectos(ProyectoID),
    PRIMARY KEY (EmpleadoID, ProyectoID)
);

-- Crear tabla 'Facturas'
CREATE TABLE Facturas (
    FacturaID INT PRIMARY KEY,
    ProyectoID INT,
    Monto DECIMAL(10, 2),
    FechaEmision DATE,
    Estado VARCHAR(50),
    FOREIGN KEY (ProyectoID) REFERENCES Proyectos(ProyectoID)
);



-- Insertar datos en tablas

-- Tabla Clientes
INSERT INTO Clientes (ClienteID, Nombre, Contacto, Email) VALUES
(1, 'TechSoluciones', 'Sofía Gómez', 'sgomez@techsoluciones.com'),
(2, 'InnovaTech', 'Miguel Torres', 'mtorres@innovatech.com'),
(3, 'DevServices', 'Ana Ruiz', 'aruiz@devservices.com'),
(4, 'Soluciones Digitales', 'Carlos Fernández', 'cfernandez@soludigi.com'),
(5, 'NextGen Tech', 'Laura Jiménez', 'ljimenez@nextgentech.com'),
(6, 'GlobalTech', 'Sergio López', 'slopez@globaltech.com'),
(7, 'IT Solutions', 'Patricia Martín', 'pmartin@itsolutions.com'),
(8, 'TechPlus', 'Raúl Sanz', 'rsanz@techplus.com'),
(9, 'Innovar', 'Beatriz Vidal', 'bvidal@innovar.com'),
(10, 'Software Pro', 'David Guerrero', 'dguerrero@softwarepro.com');

-- Tabla Proyectos
INSERT INTO Proyectos (ProyectoID, Nombre, Descripcion, FechaInicio, FechaFin, ClienteID) VALUES
(1, 'Proyecto Alpha', 'Desarrollo Web', '2023-01-15', '2023-06-15', 1),
(2, 'Proyecto Beta', 'Aplicación Móvil', '2023-02-01', '2023-07-01', 2),
(3, 'Proyecto Gamma', 'Sistema de Gestión', '2023-03-10', '2023-09-10', 3),
(4, 'Proyecto Delta', 'Análisis de Datos', '2023-01-20', '2023-05-20', 4),
(5, 'Proyecto Epsilon', 'Optimización de Redes', '2023-04-05', '2023-10-05', 5),
(6, 'Proyecto Zeta', 'Automatización de Procesos', '2023-05-15', '2023-11-15', 6),
(7, 'Proyecto Eta', 'Desarrollo de Juego', '2023-02-20', '2023-08-20', 7),
(8, 'Proyecto Theta', 'Realidad Aumentada', '2023-03-25', '2023-09-25', 8),
(9, 'Proyecto Iota', 'Seguridad Informática', '2023-06-10', '2024-01-10', 9),
(10, 'Proyecto Kappa', 'Inteligencia Artificial', '2023-07-05', '2024-01-05', 10);

-- Tabla Empleados
INSERT INTO Empleados (EmpleadoID, Nombre, Posicion, Salario) VALUES
(1, 'Luisa Fernández', 'Desarrolladora Web', 30000),
(2, 'Carlos Ramírez', 'Analista de Sistemas', 32000),
(3, 'Marta Domínguez', 'Especialista en IA', 35000),
(4, 'Jorge Martín', 'Ingeniero de Software', 33000),
(5, 'Ana López', 'Diseñadora Gráfica', 29000),
(6, 'David Sánchez', 'Desarrollador de Juegos', 31000),
(7, 'Sofía Castro', 'Desarrolladora de Aplicaciones Móviles', 30000),
(8, 'Miguel Ángel Torres', 'Especialista en Seguridad', 34000),
(9, 'Clara Gutiérrez', 'Ingeniera de Datos', 35500),
(10, 'Roberto Núñez', 'Arquitecto de Software', 36000);

-- Tabla AsignacionesProyecto
INSERT INTO AsignacionesProyecto (EmpleadoID, ProyectoID, HorasAsignadas) VALUES
(1, 1, 120),
(2, 2, 80),
(3, 3, 100),
(4, 4, 110),
(5, 5, 90),
(6, 6, 130),
(7, 7, 100),
(8, 8, 120),
(9, 9, 110),
(10, 10, 100),
(1, 2, 60),
(2, 3, 70),
(3, 4, 80),
(4, 5, 90),
(5, 6, 100),
(6, 7, 110),
(7, 8, 120),
(8, 9, 130),
(9, 10, 140),
(10, 1, 150);

-- Tabla Facturas
INSERT INTO Facturas (FacturaID, ProyectoID, Monto, FechaEmision, Estado) VALUES
(1, 1, 10000, '2023-02-01', 'Emitida'),
(2, 2, 15000, '2023-03-01', 'Emitida'),
(3, 3, 12000, '2023-04-01', 'Emitida'),
(4, 4, 13000, '2023-05-01', 'Pendiente'),
(5, 5, 11000, '2023-06-01', 'Emitida'),
(6, 6, 14000, '2023-07-01', 'Pendiente'),
(7, 7, 9000, '2023-08-01', 'Emitida'),
(8, 8, 8000, '2023-09-01', 'Pendiente'),
(9, 9, 12500, '2023-10-01', 'Emitida'),
(10, 10, 14500, '2023-11-01', 'Emitida');


-- Crear una vista que muestre los proyectos junto con la información del cliente

CREATE VIEW VistaProyectosClientes AS

SELECT p.ProyectoID, p.Nombre, p.FechaInicio, p.FechaFin, c.Nombre AS Cliente
FROM Proyectos p
JOIN Clientes c ON p.ClienteID = c.ClienteID;


/*ejemplo de vista sin usar la sentencia JOIN la cual proporcionará una lista de proyectos 
con el total de horas asignadas a cada uno, basándose únicamente en la información de la 
tabla AsignacionesProyecto, sin necesidad de combinar datos de otras tablas.*/

CREATE VIEW VistaResumenProyectos AS
SELECT ProyectoID, SUM(HorasAsignadas) AS HorasTotalesAsignadas
FROM AsignacionesProyecto
GROUP BY ProyectoID;


-- Crear la tabla Ordenes
CREATE TABLE Ordenes (
    OrdenID INT IDENTITY(1,1) PRIMARY KEY,
    Detalle VARCHAR(255),
    Monto DECIMAL(10, 2)
);

-- Insertar datos en la tabla Ordenes
INSERT INTO Ordenes (Detalle, Monto) 
VALUES 
    ('Compra de Software', 200.00),
    ('Servicio de Consultoría', 500.00),
    ('Licencia de Base de Datos', 300.00),
    ('Soporte Técnico', 150.00),
    ('Desarrollo de Aplicación Web', 1200.00),
    ('Renovación de Hosting', 100.00),
    ('Mantenimiento de Servidores', 400.00),
    ('Compra de Hardware', 800.00),
    ('Instalación de Redes', 450.00),
    ('Auditoría de Seguridad', 550.00);


-- Insertar una fila adicional en la tabla Ordenes
INSERT INTO Ordenes (Detalle, Monto) VALUES ('Servicio de Cloud Computing', 650.00);
-- Utilizar @@IDENTITY para obtener el ID de la última orden insertada
SELECT @@IDENTITY AS UltimaOrdenID;

--@@ROWCOUNT devuelve el número de filas afectadas por la última sentencia ejecutada en el mismo contexto.
INSERT INTO Clientes (ClienteID, Nombre, Contacto, Email)
VALUES (11, 'Nueva Empresa', 'Juan Pérez', 'jperez@nuevaempresa.com');
SELECT @@ROWCOUNT AS FilasAfectadas;

--Una vez que una variable ha sido declarada, puedes asignarle un valor utilizando la palabra clave SET o la instrucción SELECT. 
DECLARE @Edad INT;
SET @Edad = 30;
--Usando SELECT (útil cuando estás asignando el resultado de una consulta):
DECLARE @SalarioPromedio DECIMAL(10,2);
SELECT @SalarioPromedio = AVG(Salario) FROM Empleados;


-- Declarar una variable para el ID del proyecto y asignarle un valor
DECLARE @ProyectoID INT = 1;
-- Declarar otra variable para almacenar el total de horas asignadas al proyecto
DECLARE @TotalHoras INT;
-- Calcular la suma de horas asignadas al proyecto especificado
SELECT @TotalHoras = SUM(HorasAsignadas)
FROM AsignacionesProyecto
WHERE ProyectoID = @ProyectoID;
-- Mostrar el total de horas asignadas al proyecto
SELECT @TotalHoras AS 'Total Horas Asignadas';


----------------------------------------------------------------------------------------------------------
--Funciones Escalares

/*Obtener la longitud de los nombres de los proyectos en la base de datos StartupSoftware, 
así como calcular la diferencia en días entre la FechaInicio y la FechaFin de cada proyecto. Utilizaremos las funciones escalares LEN() 
para la longitud de la cadena y DATEDIFF() para la diferencia de fechas.*/
SELECT 
    Nombre, 
    LEN(Nombre) AS LongitudNombre,
    FechaInicio, 
    FechaFin,
    DATEDIFF(day, FechaInicio, FechaFin) AS DuracionDias
FROM 
    Proyectos;

/*Convertir los nombres de los proyectos a mayúsculas y también calcular un identificador único concatenando el ProyectoID con una cadena,
podríamos hacerlo de la siguiente manera:*/
SELECT 
    UPPER(Nombre) AS NombreMayuscula,
    'ID_' + CAST(ProyectoID AS VARCHAR) AS IdentificadorUnico
FROM 
    Proyectos;


---------------------------------------------------------------------------------------------------------------------------------
--Funciones de Tabla

/*Crear una función de tabla que nos permita obtener los proyectos de un cliente específico, 
pasando el ClienteID como parámetro. Usaremos una función de tabla de valores en línea para este ejemplo.*/

CREATE FUNCTION dbo.ProyectosPorCliente (@ClienteID INT)
RETURNS TABLE
AS
RETURN (

    SELECT ProyectoID, Nombre, Descripcion, FechaInicio, FechaFin

    FROM Proyectos

    WHERE ClienteID = @ClienteID

);

SELECT * FROM ProyectosPorCliente(1) AS [Proyectos Del Cliente]


--Procedimientos Almacenados
--📥Parámetros de Entrada
CREATE PROCEDURE ObtenerInfoCliente
    @ClienteID INT
AS
BEGIN
    SELECT * FROM Clientes WHERE ClienteID = @ClienteID;
END;

--Ejecución
EXEC ObtenerInfoCliente 5


--📤Parámetros de Salida
CREATE PROCEDURE ContarProyectosCliente
    @ClienteID INT,
    @CantidadProyectos INT OUTPUT
AS
BEGIN
    SELECT @CantidadProyectos = COUNT(*) FROM Proyectos WHERE ClienteID = @ClienteID;
END;

--Para ejecutar este procedimiento y obtener el valor del parámetro de salida, podrías usar:
DECLARE @TotalProyectos INT;
EXEC ContarProyectosCliente @ClienteID = 3, @CantidadProyectos = @TotalProyectos OUTPUT;
SELECT @TotalProyectos AS 'Total de Proyectos';

--📥📤Parámetros de Entrada/Salida
CREATE PROCEDURE AjustarSalario
    @EmpleadoID INT,
    @SalarioAjustado DECIMAL(10,2) OUTPUT
AS
BEGIN
    -- Supongamos que hay una lógica compleja aquí para ajustar el salario
    SELECT @SalarioAjustado = Salario * 1.1 FROM Empleados WHERE EmpleadoID = @EmpleadoID;
END;
--Al ejecutar este procedimiento, proporcionarías tanto el @EmpleadoID (como entrada) como un lugar para almacenar el @SalarioAjustado (como salida).
DECLARE @NuevoSalario DECIMAL(10,2);
EXEC AjustarSalario @EmpleadoID = 4, @SalarioAjustado = @NuevoSalario OUTPUT;
SELECT @NuevoSalario AS 'Salario Ajustado';



-- Procedimiento para agregar un nuevo cliente:
--Este procedimiento utiliza parámetros de entrada para insertar un nuevo cliente en la base de datos.

ALTER PROCEDURE AgregarCliente
    @ClienteID INT,
	@Nombre VARCHAR(100),
    @Contacto VARCHAR(100),
    @Email VARCHAR(100)

AS
BEGIN

    INSERT INTO Clientes (ClienteID, Nombre, Contacto, Email)
    VALUES (@ClienteID,@Nombre, @Contacto, @Email);

END;

EXEC AgregarCliente @ClienteID = 12, @Nombre = TecnoCompro, @Contacto = [Armando Marcelo] , @Email = [armandmarc@tecnocompro.com]

---- Procedimiento que utiliza una función:
--Llama a una función para calcular el salario anual de un empleado y luego lo actualiza en la base de datos.

CREATE PROCEDURE ActualizarSalarioAnual
    @EmpleadoID INT,
    @SalarioMensual DECIMAL(10, 2)
AS
BEGIN

    DECLARE @SalarioAnual DECIMAL(10, 2);
    SELECT @SalarioAnual = CalcularSalarioAnual(@SalarioMensual);

    UPDATE Empleados
    SET SalarioAnual = @SalarioAnual
    WHERE EmpleadoID = @EmpleadoID;

END;

-- Procedimiento que llama a una vista:
--Un procedimiento puede utilizar una vista para recuperar datos específicos, como en este ejemplo donde se obtienen los detalles de un proyecto.
CREATE PROCEDURE ObtenerDetallesProyecto
    @ProyectoID INT
AS
BEGIN
    SELECT * FROM VistaDetallesProyecto
    WHERE ProyectoID = @ProyectoID;
END;



---Subconsultas autónomas
/*Supongamos que quieres obtener los nombres de los proyectos que tienen un número de horas asignadas superior al promedio de horas asignadas en 
todos los proyectos. Primero, podrías calcular el promedio de horas asignadas con una subconsulta autónoma y luego usar este valor para filtrar
los proyectos en la consulta principal.*/
SELECT Nombre, Descripcion
FROM Proyectos
WHERE ProyectoID IN (
    SELECT ProyectoID
    FROM AsignacionesProyecto
    GROUP BY ProyectoID
    HAVING AVG(HorasAsignadas) > (
        SELECT AVG(HorasAsignadas)
        FROM AsignacionesProyecto
    )
);

--Subconsultas correlacionadas
/*Listar todos los empleados junto con el total de horas asignadas a ellos en proyectos, 
pero solo para aquellos empleados que han trabajado más horas que 
el promedio de horas trabajadas por empleado en todos los proyectos.*/
SELECT e.EmpleadoID, e.Nombre, (
    SELECT SUM(HorasAsignadas)
    FROM AsignacionesProyecto ap
    WHERE ap.EmpleadoID = e.EmpleadoID
) AS TotalHoras
FROM Empleados e
WHERE (
    SELECT SUM(HorasAsignadas)
    FROM AsignacionesProyecto ap
    WHERE ap.EmpleadoID = e.EmpleadoID
) > (
    SELECT AVG(TotalHoras)
    FROM (
        SELECT SUM(HorasAsignadas) AS TotalHoras
        FROM AsignacionesProyecto
        GROUP BY EmpleadoID
    ) AS PromedioHoras
);

/*En este ejemplo, la subconsulta que calcula el SUM(HorasAsignadas) para cada empleado es correlacionada, 
ya que hace referencia a e.EmpleadoID de la consulta principal. Además, utilizamos una subconsulta autónoma 
dentro de otra subconsulta correlacionada para calcular el promedio de horas trabajadas por todos los empleados, 
demostrando cómo se pueden combinar ambos tipos de subconsultas para formular consultas complejas.*/


--✏️ Consigna
/*Análisis y gestión de proyectos en StartupSoftware
Bienvenido a este ejercicio práctico centrado en la gestión y análisis de datos usando SQL Server, diseñado específicamente para aplicar y reforzar las habilidades aprendidas en esta clase. 
En este conjunto de tareas, nos enfocaremos en el entorno de la startup ficticia: StartupSoftware, especializada en el desarrollo de soluciones de software, la cual hemos desarrollado durante la clase. 
StartupSoftware cuenta con una base de datos que incluye información detallada sobre clientes, proyectos, empleados, asignaciones de trabajo y facturación. 
A través de los ejercicios propuestos, aprenderás cómo manipular y extraer información valiosa de esta base de datos, empleando diversas funcionalidades de SQL Server.*/
SELECT * FROM 
--1 Vista de proyectos con fechas de inicio y fin:
--Crea una vista llamada VistaFechasProyectos que muestre los nombres de los proyectos con sus respectivas fechas de inicio y fin.

CREATE VIEW VistaFechasProyectos AS 
SELECT 
	Nombre, 
	FechaInicio, 
	FechaFin,
	DATEDIFF(day,FechaInicio,FechaFin) AS [Días de Proyectos]
FROM Proyectos

SELECT * FROM VistaFechasProyectos;

--2 Variables de resumen de empleados:
--Utiliza variables locales para calcular el salario total y --el número promedio de horas asignadas a proyectos por empleado.
DECLARE @SalarioTotal DECIMAL(10,2);
DECLARE @PromedioHoras DECIMAL(10,2);

SELECT
	@SalarioTotal = SUM(E.Salario),
	@PromedioHoras = AVG(AP.HorasAsignadas)
FROM 
	Empleados E, 
	AsignacionesProyecto AP
WHERE E.EmpleadoID = AP.EmpleadoID

SELECT 
	@SalarioTotal AS [Salario Total], 
	@PromedioHoras AS [Promedio Horas]


--3 Función UDF para contar proyectos por cliente:
--Crea una función UDF que reciba un ClienteID y devuelva el número total de proyectos asociados a ese cliente.
CREATE PROCEDURE ContarProyectosPorCliente
	@ClienteID INT,
	@ProyectosAsignados INT OUTPUT
AS
BEGIN
	SELECT @ProyectosAsignados = COUNT(*) 
	FROM Proyectos
	WHERE ClienteID = @ClienteID;
END;

--Para ejecutar se utiliza:
DECLARE @TotalProyectos INT;
EXEC 
	ContarProyectosPorCliente @ClienteID = 4, 
	@ProyectosAsignados = @TotalProyectos OUTPUT;

SELECT @TotalProyectos AS 'Total de Proyectos';


--4 Procedimiento almacenado para detalles del empleado:
--Desarrolla un procedimiento almacenado llamado DetallesEmpleado que, dado un EmpleadoID, devuelva su nombre, posición y salario.
CREATE PROCEDURE DetallesEmpleado
	@EmpleadoID INT
AS
BEGIN
	SELECT 
		Nombre,
		Posicion,
		Salario
	FROM Empleados
	WHERE EmpleadoID = @EmpleadoID
END

EXEC DetallesEmpleado @EmpleadoID = 4;


--5 Subconsulta para proyectos con facturas pendientes:
--Escribe una consulta que liste todos los proyectos que tienen al menos una factura en estado 'Pendiente', mostrando el nombre del proyecto y la descripción.
SELECT 
	Nombre, 
	Descripcion
FROM Proyectos P
WHERE 
	P.ProyectoID IN (
		SELECT F.ProyectoID
		FROM Facturas F
		WHERE F.Estado = 'Pendiente'
    );