
/*-------------COMANDO DML (SELECT, UPDATE, DELETE)----------*/

-- SELECCIONAR todos los pacientes registrados
SELECT * FROM paciente;

-- SELECCIONAR los nombres y apellidos de pacientes con TIPO DE SANGRE "O+"
SELECT nombres, apellidos, tipo_sangre
FROM paciente
WHERE tipo_sangre = 'O+';


-- ACTUALIZAR la dirección y teléfono de un paciente por su código
UPDATE paciente
SET direccion_cliente = 'Av. Los Olivos 456', telefono = '948 265 128'
WHERE codigo_paciente = 'PAC001';

SELECT *
FROM paciente
WHERE codigo_paciente = 'PAC001';

-- ACTUALIZAR el turno de un médico por su DNI
UPDATE medico
SET turno = 'Tarde', hora_inicio = '14:00:00', hora_fin = '22:00:00'
WHERE dni = '41396825';


-- ELIMINAR un especialidad por su NOMBRE
DELETE FROM especialidad
WHERE nombre_especialidad = 'TRAUMATOLOGIA';

-- ELIMINAR un médico por su CÓDIGO
DELETE FROM medico
WHERE codigo_medico = 'MED023';