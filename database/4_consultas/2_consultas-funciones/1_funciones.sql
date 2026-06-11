-- COUNT(): cuenta el número de registros
SELECT COUNT(*) AS total_pacientes
FROM paciente;
-- Devuelve cuántos pacientes hay en la tabla

-- SUM(): suma los valores de una columna numérica
SELECT SUM(monto) AS total_ventas
FROM ventas;
-- Devuelve la suma total de los montos de ventas

-- AVG(): calcula el promedio de los valores
SELECT AVG(edad) AS promedio_edad
FROM paciente;
-- Devuelve la edad promedio de los pacientes

-- MAX(): obtiene el valor más grande
SELECT MAX(salario) AS salario_maximo
FROM empleado;
-- Devuelve el salario más alto registrado

-- MIN(): obtiene el valor más pequeño
SELECT MIN(edad) AS edad_minima
FROM paciente;
-- Devuelve la edad más baja registrada