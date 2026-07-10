USE clinica_db;

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

-- Funciones de Conversion
-- CAST(): Convierte la fecha a tipo CHAR
SELECT id_cita, CAST(fecha AS CHAR) AS fecha_texto
FROM cita;

-- CONVERT(): Convierte la hora a tipo CHAR
SELECT id_cita, CONVERT(hora, CHAR) AS hora_texto
FROM cita;