-- Para registrar una nueva cita y generar la boleta con el detalle-boleta

START TRANSACTION;
INSERT INTO cita(id_paciente,id_medico,id_recepcionista,id_consultorio,id_especialidad,fecha,hora,tipo_cita,duracion_minutos,estado_cita)
VALUES(10,10,2,4,2,'2026-08-10','10:30:00','CONSULTA GENERAL',30,'Pendiente');


INSERT INTO boleta_venta(id_cita,id_clinica,numero_boleta)
VALUES(29,1,'BV-2026-0016');

INSERT INTO detalle_boleta(id_boleta_venta,concepto,precio_unitario,descuento,valor_venta,igv,precio_neto)
VALUES(16,'Consulta Pediatrica',130.00,0.00,106.60,23.40,130.00);


COMMIT;
