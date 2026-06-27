/---- IF ELSE ---/

-- Si queremos saber si un paciente ya está registrado en la base de datos
DELIMITER //
CREATE PROCEDURE verificar_paciente_registrado(IN p_dni INT)
BEGIN
	IF (EXISTS (SELECT 1 
				FROM paciente 
                WHERE dni = p_dni)) THEN
		SELECT codigo_paciente,CONCAT(nombres,' ',apellidos) AS Nombre_completo, fecha_nacimiento,'Paciente Registrado!' AS ESTADO
        FROM paciente
        WHERE p_dni = dni;
    ELSE
		SELECT 'El paciente NO está registrado.' AS Estado;
	END IF;
END//

DELIMITER ;

CALL verificar_paciente_registrado(70491376);