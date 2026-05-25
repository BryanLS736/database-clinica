-- 7.3. Operadores lógicos y relacionales
-- 7.3.1. AND, OR, NOT

-- Consulta que muestra a todos los pacientes con tipo de sangre A+ y de género Masculino
SELECT *
FROM paciente
WHERE tipo_sangre = "A+" AND genero_nacimiento = "M";

-- Consulta que muestra a todos los pacientes con tipo de sangre B+ o de tipo de sangre B-
SELECT *
FROM paciente
WHERE tipo_sangre = "B+" OR tipo_sangre = "B-";

-- Consulta que muestra a todos los pacientes que NO tengan el tipo de sangre AB+
SELECT *
FROM paciente
WHERE NOT tipo_sangre = "AB+";


-- 7.3.2. BETWEEN, LIKE, IN, IS NULL, CASE, VISTAS

-- Consulta que devuelve a todos los médicos que su hora de inicio esté entre las 6 de la mañana y las 2 de la tarde
SELECT *
FROM medico
WHERE hora_inicio BETWEEN "06:00:00" AND "14:00:00";

-- Consulta que devuelve a todos los médicos que su nombre empiece por la letra M
SELECT *
FROM medico
WHERE nombres LIKE "M%";

-- Consulta que devuelve a todos los médicos donde su turno sea Mañana o Noche
SELECT *
FROM medico
WHERE turno IN ("Mañana", "Noche");

-- Consulta que devuelve a todos los médicos donde su telefono sea NULL
SELECT *
FROM medico
WHERE telefono IS NULL;

-- Consulta que devuelve a todos los pacientes de la tabla pacientes, además muestra una columna clasificacion_edad donde se va a clasificar al paciente segun su edad
SELECT codigo_paciente, CONCAT(nombres," ", apellidos) AS nombre_completo, TIMESTAMPDIFF(YEAR, fecha_nacimiento, NOW()) AS edad, 
(CASE
	WHEN TIMESTAMPDIFF(YEAR, fecha_nacimiento, NOW()) < 12 THEN "Niño"
	WHEN TIMESTAMPDIFF(YEAR, fecha_nacimiento, NOW()) < 18 THEN "Adolescente"
    WHEN TIMESTAMPDIFF(YEAR, fecha_nacimiento, NOW()) < 27 THEN "Joven"
    WHEN TIMESTAMPDIFF(YEAR, fecha_nacimiento, NOW()) < 60 THEN "Adulto"
    WHEN TIMESTAMPDIFF(YEAR, fecha_nacimiento, NOW()) < 75 THEN "Adulto mayor"
	ELSE "Anciano"
END) AS clasificacion_edad
FROM paciente;

-- Creación de una vista que junta la tabla paciente con cita
CREATE OR REPLACE VIEW paciente_cita_vista AS
	SELECT p.codigo_paciente, CONCAT(p.nombres, " ", p.apellidos) AS nombre_completo, p.telefono, c.fecha, c.hora
    FROM paciente p
    INNER JOIN cita c
    ON p.id_paciente = c.id_paciente;
   
SELECT * FROM paciente_cita_vista;
