-- 7.4. Consultas JOIN

-- Consultas que muestran al medico y su especialidad en letra, no en numero de id

-- 7.4.1. INNER JOIN
-- Se van a mostrar registros que tengan coincidencias de ambas tablas
-- Muestra a todos los médicos junto con la especialidad que tiene cada uno.
SELECT m.codigo_medico, CONCAT(m.nombres, " ", m.apellidos) AS nombre_completo, e.nombre_especialidad
FROM medico m
INNER JOIN medico_especialidad me
ON m.id_medico = me.id_medico
INNER JOIN especialidad e
ON me.id_especialidad = e.id_especialidad;

-- 7.4.2. LEFT JOIN
-- Se van a mostrar todos registros de la tabla de la izquierda y sus coincidencias de la derecha
SELECT m.codigo_medico, CONCAT(m.nombres, " ", m.apellidos) AS nombre_completo, e.nombre_especialidad
FROM medico m
LEFT JOIN medico_especialidad me
ON m.id_medico = me.id_medico
LEFT JOIN especialidad e
ON me.id_especialidad = e.id_especialidad;

-- 7.4.3. RIGHT JOIN
-- Se van a mostrar todos registros de la tabla de la derecha y sus coincidencias de la izquierda
SELECT m.codigo_medico, CONCAT(m.nombres, " ", m.apellidos) AS nombre_completo, e.nombre_especialidad
FROM medico m
RIGHT JOIN medico_especialidad me
ON m.id_medico = me.id_medico
RIGHT JOIN especialidad e
ON me.id_especialidad = e.id_especialidad;

-- 7.4.4. CROSS JOIN
-- Muestra el producto cartesiano de la tabla medico y especialidad, o sea todas las posibles combinaciones de ambos
SELECT m.codigo_medico, CONCAT(m.nombres, " ", m.apellidos) AS nombre_completo, e.nombre_especialidad
FROM medico m
CROSS JOIN especialidad e;

-- 7.4.5. FULL JOIN
-- Muestra todas las filas de ambas tablas
SELECT m.codigo_medico, CONCAT(m.nombres, " ", m.apellidos) AS nombre_completo, e.nombre_especialidad
FROM medico m
LEFT JOIN medico_especialidad me
ON m.id_medico = me.id_medico
LEFT JOIN especialidad e
ON me.id_especialidad = e.id_especialidad
UNION
SELECT m.codigo_medico, CONCAT(m.nombres, " ", m.apellidos) AS nombre_completo, e.nombre_especialidad
FROM medico m
RIGHT JOIN medico_especialidad me
ON m.id_medico = me.id_medico
RIGHT JOIN especialidad e
ON me.id_especialidad = e.id_especialidad;
