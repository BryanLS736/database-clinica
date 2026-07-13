USE clinica_db;

-- Cursor que trae la información del cliente, fecha de su cita y la hora
-- DROP PROCEDURE IF EXISTS sp_listar_citas_pendientes;
DELIMITER //
CREATE PROCEDURE sp_listar_citas_pendientes()
BEGIN
    DECLARE v_paciente VARCHAR(200);
    DECLARE v_fecha DATE;
    DECLARE v_hora TIME;
    DECLARE fin INT DEFAULT FALSE;

    DECLARE cur CURSOR FOR
        SELECT CONCAT(p.nombres, ' ', p.apellidos),
               c.fecha,
               c.hora
        FROM cita c
        JOIN paciente p ON c.id_paciente = p.id_paciente
        WHERE c.estado_cita = 'Pendiente';

    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET fin = TRUE;

    OPEN cur;

    bucle: LOOP
        FETCH cur INTO v_paciente, v_fecha, v_hora;

        IF fin THEN
            LEAVE bucle;
        END IF;

        SELECT CONCAT(
            'Paciente: ', v_paciente,
            ' Fecha: ', v_fecha,
            ' Hora: ', v_hora
        ) AS informacion;
    END LOOP;

    CLOSE cur;
END //
DELIMITER ;
-- Llamado al procedimiento almacenado que contiene un cursor
CALL sp_listar_citas_pendientes();
