-- 7.4. Consultas JOIN
-- 7.4.1. INNER JOIN
SELECT m.codigo_medico, CONCAT(m.nombres, " ", m.apellidos) AS nombre_completo, e.nombre_especialidad
FROM medico m
INNER JOIN medico_especialidad me
ON m.id_medico = me.id_medico
INNER JOIN especialidad e
ON me.id_especialidad = e.id_especialidad;

-- 7.4.2. LEFT JOIN
SELECT m.codigo_medico, CONCAT(m.nombres, " ", m.apellidos) AS nombre_completo, e.nombre_especialidad
FROM medico m
LEFT JOIN medico_especialidad me
ON m.id_medico = me.id_medico
LEFT JOIN especialidad e
ON me.id_especialidad = e.id_especialidad;

-- 7.4.3. RIGHT JOIN
SELECT m.codigo_medico, CONCAT(m.nombres, " ", m.apellidos) AS nombre_completo, e.nombre_especialidad
FROM medico m
RIGHT JOIN medico_especialidad me
ON m.id_medico = me.id_medico
RIGHT JOIN especialidad e
ON me.id_especialidad = e.id_especialidad;

-- 7.4.4. CROSS JOIN
SELECT m.codigo_medico, CONCAT(m.nombres, " ", m.apellidos) AS nombre_completo, e.nombre_especialidad
FROM medico m
CROSS JOIN especialidad e;

-- 7.4.5. FULL JOIN
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
