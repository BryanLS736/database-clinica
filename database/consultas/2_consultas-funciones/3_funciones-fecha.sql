
/*---- FUNCIONES FECHA (DAY, MONTH, YEAR, DATEDIFF, DATE_ADD)-----*/

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
