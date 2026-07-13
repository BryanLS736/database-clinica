-- Mostrar todos los médicos de un turno
-- DROP PROCEDURE IF EXISTS mostrar_medicos_turno;
DELIMITER //
CREATE PROCEDURE mostrar_medicos_turno(IN p_turno VARCHAR(10))
BEGIN
    SELECT nombres, apellidos, turno
    FROM medico
    WHERE turno = p_turno;
END //
DELIMITER ;
-- Llamado al procedimiento almacenado
CALL mostrar_medicos_turno("Tarde");
