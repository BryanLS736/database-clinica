USE clinica_db;

-- Trigger AFTER UPDATE, que guarda los UPDATE en una tabla auditoria
-- DROP TRIGGER IF EXISTS trg_after_update_cita;
DELIMITER //
CREATE TRIGGER trg_after_update_cita
AFTER UPDATE
ON cita
FOR EACH ROW
BEGIN
	IF OLD.estado_cita <> NEW.estado_cita THEN
		INSERT INTO auditoria_cita (id_cita, accion, estado_anterior, estado_nuevo, usuario_db)
        VALUES (NEW.id_cita, 'UPDATE', OLD.estado_cita, NEW.estado_cita, CURRENT_USER());
    END IF;
END //
DELIMITER ;

-- Trigger AFTER DELETE, que guarda los DELETE en una tabla auditoria
-- DROP TRIGGER IF EXISTS trg_after_delete_cita;
DELIMITER //
CREATE TRIGGER trg_after_delete_cita
AFTER DELETE
ON cita
FOR EACH ROW
BEGIN
	INSERT INTO auditoria_cita (id_cita, accion, estado_anterior, estado_nuevo, usuario_db)
	VALUES (OLD.id_cita, 'DELETE', OLD.estado_cita, NULL, CURRENT_USER());
END //
DELIMITER ;

-- Prueba
UPDATE cita SET estado_cita = 'Pendiente' WHERE id_cita = 1;
SELECT * FROM cita WHERE id_cita = 1;
SELECT * FROM auditoria_cita;
