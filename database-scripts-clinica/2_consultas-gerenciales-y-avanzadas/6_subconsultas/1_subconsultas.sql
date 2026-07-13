-- Subconsulta con clausula WHERE
-- MOSTRAR los detalle boleta donde su precio neto sea mayor al promedio
SELECT *
FROM detalle_boleta db1
WHERE db1.precio_neto > (
	SELECT AVG(db2.precio_neto)
    FROM detalle_boleta db2
);

-- Subconsulta usando IN
-- MOSTRAR los consultorios en donde la especialidad este "Activo"
SELECT *
FROM consultorio
WHERE id_especialidad IN (SELECT id_especialidad FROM especialidad WHERE estado = 'Activo');

-- Subconsulta usando EXISTS
-- MOSTRAR los pacientes que tengan al menos una cita registrada
SELECT *
FROM paciente p
WHERE EXISTS (
    SELECT 1
    FROM cita c
    WHERE c.id_paciente = p.id_paciente
);


-- Funciones de fecha
/* Función DAY*/
-- MOSTRAR todas las citas para el DIA 22
SELECT id_cita,fecha,hora 
FROM cita
WHERE DAY(fecha) = 22;

/* Función MONTH*/
-- MOSTRAR todas las citas para el MES de JULIO
SELECT id_cita,fecha,hora 
FROM cita
WHERE MONTH(fecha) = 7;

/* Función YEAR */
-- Mostrar las citas para el año 2026
SELECT id_cita,fecha,hora 
FROM cita
WHERE YEAR(fecha) = 2026;

/* Función DATEDIFF */
-- MOSTRAR los dias que faltan para que se lleva a cabo una cita
SELECT id_cita, fecha , DATEDIFF(fecha, NOW()) AS dias_faltantes
FROM cita;


/* Función DATE_ADD */
-- PROGRAMAR una cita 5 dias después desde que vamos a agendarla
SELECT id_cita, fecha, DATE_ADD(fecha, INTERVAL 5 DAY) AS Fecha_De_Cita
FROM cita;


-- Funciones de cadena
-- CONCAT(): Une nombres y apellidos para formar el nombre completo en una sola columna
SELECT CONCAT(nombres, ' ', apellidos) AS nombre_completo
FROM paciente;

-- LENGTH(): Muestra la cantidad de caracteres del nombre del médico
SELECT nombres, LENGTH(nombres) AS longitud_nombre
FROM medico;

-- SUBSTRING(): Muestra los primeros 4 dígitos del DNI del paciente
SELECT dni, SUBSTRING(dni, 1, 4) AS primeros_digitos
FROM paciente;

-- LOWER(): Convierte el correo a minúsculas
SELECT LOWER(correo) AS correo_minusculas
FROM medico;

-- UPPER(): Convierte el nombre de la especialidad a mayúsculas
SELECT UPPER(nombre_especialidad) AS especialidad_mayusculas
FROM especialidad;

-- LTRIM(): Elimina los espacios en blanco al inicio de la dirección
SELECT LTRIM(direccion_cliente) AS direccion_sin_espacios_izq
FROM paciente;

-- RTRIM(): Elimina los espacios en blanco al final del teléfono
SELECT RTRIM(telefono) AS telefono_sin_espacios_der
FROM recepcionista;


-- Funciones de conversión
-- CAST(): Convierte la fecha a tipo CHAR
SELECT id_cita, CAST(fecha AS CHAR) AS fecha_texto
FROM cita;

-- CONVERT(): Convierte la hora a tipo CHAR
SELECT id_cita, CONVERT(hora, CHAR) AS hora_texto
FROM cita;