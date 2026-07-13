-- COUNT(): cuenta el número de registros
SELECT COUNT(*) AS total_pacientes
FROM paciente;
-- Devuelve cuántos pacientes hay en la tabla

-- SUM(): Suma el total de las ventas netas registradas
SELECT SUM(precio_neto) AS total_ventas
FROM detalle_boleta;
-- Devuelve el monto total de todas las ventas netas

-- AVG(): Calcula el precio promedio de los servicios
SELECT AVG(precio_unitario) AS precio_promedio
FROM detalle_boleta;
-- Devuelve el precio promedio de los servicios registrados.

-- MIN(): Devuelve el valor mínimo de una columna.
SELECT MIN(descuento) AS menor_descuento
FROM detalle_boleta;
-- Devuelve el descuento más bajo registrado, si no hay descuento es 0

-- MAX(): Devuelve el valor máximo de una columna.
SELECT MAX(precio_neto) AS mayor_venta
FROM detalle_boleta;
-- Devuelve la venta con el precio neto más alto