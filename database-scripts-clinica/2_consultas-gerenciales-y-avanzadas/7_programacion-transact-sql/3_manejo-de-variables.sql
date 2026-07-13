-- Calcular cuántos años tiene un paciente usando variables de sesión
SET @dni_buscado = '79431625';
SET @fecha_nac = (SELECT fecha_nacimiento FROM paciente WHERE dni = @dni_buscado);
SET @edad_actual = TIMESTAMPDIFF(YEAR, @fecha_nac, CURDATE());
-- Muestra
SELECT @dni_buscado AS dni, @fecha_nac AS nacimiento, @edad_actual AS edad;

-- Variables locales dentro de un procedimiento almacenado
-- DROP PROCEDURE IF EXISTS sp_resumen_citas_medico;
DELIMITER //
CREATE PROCEDURE sp_resumen_citas_medico(IN p_id_medico INT)
BEGIN
    DECLARE v_total_citas INT DEFAULT 0;
    DECLARE v_citas_atendidas INT DEFAULT 0;
    DECLARE v_citas_pendientes INT DEFAULT 0;
    DECLARE v_citas_canceladas INT DEFAULT 0;
    DECLARE v_nombre_medico VARCHAR(200);

    -- Obtener nombre completo del médico
    SELECT CONCAT(nombres, ' ', apellidos) INTO v_nombre_medico
    FROM medico
    WHERE id_medico = p_id_medico;

    -- Contar citas totales
    SELECT COUNT(*) INTO v_total_citas
    FROM cita
    WHERE id_medico = p_id_medico;

    -- Contar citas atendidas
    SELECT COUNT(*) INTO v_citas_atendidas
    FROM cita
    WHERE id_medico = p_id_medico AND estado_cita = 'Atendida';
    
    -- Contar citas pendientes
    SELECT COUNT(*) INTO v_citas_pendientes
    FROM cita
    WHERE id_medico = p_id_medico AND estado_cita = 'Pendiente';

    -- Contar citas canceladas
    SELECT COUNT(*) INTO v_citas_canceladas
    FROM cita
    WHERE id_medico = p_id_medico AND estado_cita = 'Cancelada';

    SELECT
        v_nombre_medico AS medico,
        v_total_citas AS total_citas,
        v_citas_atendidas AS atendidas,
        v_citas_pendientes AS pendientes,
        v_citas_canceladas AS canceladas;
END //
DELIMITER ;
-- Llamado al procedimiento almacenado
CALL sp_resumen_citas_medico(1);