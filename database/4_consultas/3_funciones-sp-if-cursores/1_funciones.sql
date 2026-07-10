-- Función para contar citas por médico
-- DROP FUNCTION IF EXISTS citasPorMedico;
DELIMITER //
CREATE FUNCTION citasPorMedico(idMedico INT)
RETURNS INT
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM cita
    WHERE id_medico = idMedico;
    RETURN total;
END //
DELIMITER ;

-- Uso de la función en una consulta
SELECT nombres, apellidos, citasPorMedico(id_medico) AS total_citas
FROM medico;