
/*------------- COMANDOS DQL (GROUP BY, HAVING, IN, EXISTS) -------------*/

-- AGRUPAR las citas por estado y contar cuántas existen en cada uno
SELECT estado_cita, COUNT(*) AS total_citas
FROM cita
GROUP BY estado_cita;


-- MOSTRAR solo los estados que tengan más de 5 citas registradas
SELECT estado_cita, COUNT(*) AS total_citas
FROM cita
GROUP BY estado_cita
HAVING COUNT(*) > 5;

-- MOSTRAR los detalle boleta donde su precio neto sea mayor al promedio
SELECT *
FROM detalle_boleta db1
WHERE db1.precio_neto > (
	SELECT AVG(db2.precio_neto)
    FROM detalle_boleta db2
);

-- MOSTRAR los consultorios en donde la especialidad este "Activo"
SELECT *
FROM consultorio
WHERE id_especialidad IN (SELECT id_especialidad FROM especialidad WHERE estado = 'Activo');


-- MOSTRAR los pacientes que tengan al menos una cita registrada
SELECT *
FROM paciente p
WHERE EXISTS (
    SELECT 1
    FROM cita c
    WHERE c.id_paciente = p.id_paciente
);