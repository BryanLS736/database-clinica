SELECT * FROM paciente;
SELECT * FROM medico;
SELECT * FROM especialidad;
SELECT * FROM medico_especialidad;
SELECT * FROM clinica;
SELECT * FROM consultorio;
SELECT * FROM recepcionista;
SELECT * FROM cita;
SELECT * FROM boleta_venta;
SELECT * FROM detalle_boleta;

-- SELECCIONAR nombres y apellidos de pacientes con tipo de sangre O+
SELECT nombres, apellidos, tipo_sangre
FROM paciente
WHERE tipo_sangre = 'O+';

-- Actualizar la dirección y teléfono de un paciente
UPDATE paciente
SET direccion_cliente = 'Av. Los Olivos 456', telefono = '948 265 128'
WHERE codigo_paciente = 'PAC001';

-- Cambiar el turno de un médico
UPDATE medico
SET turno = 'Tarde', hora_inicio = '14:00:00', hora_fin = '22:00:00'
WHERE dni = '26853197';

-- Eliminar un paciente por su código
-- DELETE FROM paciente
-- WHERE codigo_paciente = 'PAC001';

-- Eliminar un médico por su DNI
-- DELETE FROM medico
-- WHERE dni = '26853197';