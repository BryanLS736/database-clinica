USE clinica_db;

-- CONCAT(): Une nombres y apellidos para mostrar
SELECT CONCAT(nombres, ' ', apellidos) AS nombre_completo
FROM paciente;

-- LENGTH(): 
SELECT nombres, LENGTH(nombres) AS longitud_nombre
FROM medico;

-- SUBSTRING(): 
SELECT dni, SUBSTRING(dni, 1, 4) AS primeros_digitos
FROM paciente;

-- LOWER():
SELECT LOWER(correo) AS correo_minusculas
FROM medico;

-- UPPER(): 
SELECT UPPER(nombre_especialidad) AS especialidad_mayusculas
FROM especialidad;

-- LTRIM():
SELECT LTRIM(direccion_cliente) AS direccion_sin_espacios_izq
FROM paciente;

-- RTRIM()
SELECT RTRIM(telefono) AS telefono_sin_espacios_der
FROM recepcionista;

-- CAST()
SELECT id_cita, CAST(fecha AS CHAR) AS fecha_texto
FROM cita;

-- CONVERT()
SELECT id_cita, CONVERT(hora, CHAR) AS hora_texto
FROM cita;
