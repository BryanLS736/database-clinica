
/*-------------COMANDO DDL (ALTER, DROP)----------*/

-- MODIFICAR la columna codigo_paciente de la TABLA paciente
ALTER TABLE paciente
MODIFY COLUMN codigo_paciente VARCHAR(50);

-- ELIMINAR la TABLA metodo_pago
DROP TABLE metodo_pago;