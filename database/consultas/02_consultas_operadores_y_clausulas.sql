-- 7.3. Operadores lógicos y relacionales
-- 7.3.1. AND, OR, NOT
SELECT *
FROM paciente
WHERE tipo_sangre = "A+" AND genero_nacimiento = "M";

SELECT *
FROM paciente
WHERE tipo_sangre = "B+" OR tipo_sangre = "B-";

SELECT *
FROM paciente
WHERE NOT tipo_sangre = "AB+";

-- 7.3.2. BETWEEN, LIKE, IN, IS NULL, CASE, VISTAS
SELECT *
FROM medico
WHERE hora_inicio BETWEEN "06:00:00" AND "14:00:00";

SELECT *
FROM medico
WHERE nombres LIKE "M%";

SELECT *
FROM medico
WHERE turno IN ("Mañana", "Noche");

SELECT *
FROM medico
WHERE telefono IS NULL;

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

CREATE OR REPLACE VIEW paciente_cita_vista AS
	SELECT p.codigo_paciente, CONCAT(p.nombres, " ", p.apellidos) AS nombre_completo, p.telefono, c.fecha, c.hora
    FROM paciente p
    INNER JOIN cita c
    ON p.id_paciente = c.id_paciente;
   
SELECT * FROM paciente_cita_vista;