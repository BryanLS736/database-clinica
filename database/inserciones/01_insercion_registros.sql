/* ------ REGISTRO DE TODOS LOS DATOS ------*/

-- Inserción de PACIENTES
INSERT INTO paciente (codigo_paciente, dni, nombres, apellidos, tipo_sangre, fecha_nacimiento, genero_nacimiento, direccion_cliente, telefono)
VALUES  ('PAC001','48392017','Juan Alberto','Pérez Mendoza','A+','1990-05-10','M','Av. Siempre Viva 123','942 120 725'),
		('PAC002','71645829','Maria Fernanda','Lopez Ramirez','A+','2000-08-15','F','Av Lima 456','945 218 763'),
		('PAC003','30587146','Carlos Alberto','Rojas Vargas','B+','1995-03-20','M','Jr Arequipa 200','912 337 552'),
		('PAC004','92816473','Ana Lucia','Torres Mendoza','AB+','2002-01-11','F','Av Brasil 900','934 221 876'),
		('PAC005','56473821','Luis Enrique','Gomez Silva','O-','1997-07-19','M','Av Colonial 120','956 772 134'),
		('PAC006','14725836','Sofia Valentina','Diaz Herrera','A-','2004-09-01','F','Jr Tacna 880','923 445 671'),
		('PAC007','83920571','Pedro Antonio','Castillo Flores','B-','1993-04-14','M','Av Marina 500','965 214 378'),
		('PAC008','67294158','Camila Alejandra','Mendoza Ruiz','AB-','2001-12-22','F','Av Grau 101','941 287 563'),
		('PAC009','25168394','Miguel Angel','Salas Paredes','O+','1999-10-18','M','Av Mexico 450','978 451 236'),
		('PAC010','79431625','Valeria Nicole','Ruiz Torres','A+','2003-02-03','F','Jr Cusco 741','932 145 876'),
		('PAC011','50827419','Jose Manuel','Vargas Romero','B+','1990-06-25','M','Av Universitaria 600','954 812 367'),
		('PAC012','36192584','Daniela Cristina','Paredes Castro','O-','1996-11-09','F','Av La Paz 222','987 123 654'),
		('PAC013','98541732','Kevin Alexander','Silva Navarro','A-','2005-03-08','M','Jr Ica 998','944 521 378'),
		('PAC014','42068375','Fernanda Isabel','Cruz Medina','AB+','1994-01-29','F','Av Angamos 550','966 332 145'),
		('PAC015','17359486','Jorge Luis','Reyes Campos','O+','1992-08-12','M','Av Javier Prado 800','955 741 236'),
		('PAC016','85612947','Patricia Elena','Navarro Rios','B-','1998-05-17','F','Jr Piura 330','988 214 563'),
		('PAC017','29475813','Ricardo Andres','Flores Salazar','A+','1989-07-07','M','Av Benavides 450','977 563 214'),
		('PAC018','63184759','Gabriela Sofia','Ortega Leon','O-','2001-10-10','F','Av Faucett 780','933 218 745'),
		('PAC019','74821530','Diego Sebastian','Herrera Cruz','B+','1997-04-04','M','Jr Moquegua 112','922 145 367'),
		('PAC020','51937628','Elena Maribel','Ramos Delgado','AB-','2000-06-30','F','Av Primavera 777','911 874 563');
	    
-- Inserción de MÉDICOS
INSERT INTO medico (codigo_medico,dni, nombres, apellidos, telefono, correo, turno, hora_inicio, hora_fin)
VALUES 
		-- Medicina Interna
		('MED001','48613248','María','Gómez Prado','925413682','mariagomezprado@ricardopalma.com','Mañana','06:00:00','14:00:00'),
		('MED002','41396825','Luis Fernando','Garcia Ramos','981364275','luisgarciaramos@ricardopalma.com','Tarde','14:00:00','22:00:00'),
		('MED003','79421638','Miguel Angel','Torres Flores','956214873','migueltorresflores@ricardopalma.com','Noche','22:00:00','06:00:00'),
		('MED004','26853197','Javier Enrique','Salas Romero','989475216','javiersalasromero@ricardopalma.com','Mañana','06:00:00','14:00:00'),
		('MED005','93168452','Fernando Jose','Ruiz Herrera','943218675','fernandoruizherrera@ricardopalma.com','Tarde','14:00:00','22:00:00'),
		('MED006','54721836','Ricardo Manuel','Flores Diaz','965374218','ricardofloresdiaz@ricardopalma.com','Noche','22:00:00','06:00:00'),

		-- Pediatría
		('MED007','68429715','Patricia Elena','Diaz Castro','984216375','patriciadiazcastro@ricardopalma.com','Mañana','06:00:00','14:00:00'),
		('MED008','31587426','Andrea Lucia','Castillo Vega','951372684','andreacastillovega@ricardopalma.com','Tarde','14:00:00','22:00:00'),
		('MED009','79632514','Lucia Fernanda','Mendoza Ruiz','973641852','luciamendozaruiz@ricardopalma.com','Mañana','06:00:00','14:00:00'),
		('MED010','42861953','Sandra Milagros','Vega Paredes','932875416','sandravegaparedes@ricardopalma.com','Noche','22:00:00','06:00:00'),

		-- Ginecología
		('MED011','87315264','Daniela Cristina','Paredes Soto','944376218','danielaparedessoto@ricardopalma.com','Mañana','06:00:00','14:00:00'),
		('MED012','52143897','Rosa Maria','Herrera Campos','986521347','rosaherreracampos@ricardopalma.com','Tarde','14:00:00','22:00:00'),

		-- Cardiología
		('MED013','74286315','Jose Antonio','Ramos Silva','978613425','joseramossilva@ricardopalma.com','Mañana','06:00:00','14:00:00'),
		('MED014','19652487','Pedro Luis','Lopez Medina','952741638','pedrolopezmedina@ricardopalma.com','Tarde','14:00:00','22:00:00'),
		('MED015','83421756','Marco Aurelio','Vargas Torres','967325184','marcovargastorres@ricardopalma.com','Noche','22:00:00','06:00:00'),
		('MED016','67589314','Victor Manuel','Salazar Rojas','941628375','victorsalazarrojas@ricardopalma.com','Mañana','06:00:00','14:00:00'),

		-- Dermatología
		('MED017','24857136','Claudia Patricia','Navarro Leon','983641257','claudianavarroleon@ricardopalma.com','Tarde','14:00:00','22:00:00'),
		('MED018','95731642','Monica Isabel','Campos Diaz','954871326','monicacamposdiaz@ricardopalma.com','Mañana','06:00:00','14:00:00'),

		-- Oftalmología
		('MED019','38692475','Eduardo Javier','Reyes Gomez','977154326','eduardoreyesgomez@ricardopalma.com','Mañana','06:00:00','14:00:00'),
		('MED020','71425896','Victor Hugo','Castro Silva','946283715','victorcastrosilva@ricardopalma.com','Tarde','14:00:00','22:00:00'),
		('MED021','52974168','Raul Ernesto','Ortega Ruiz','968372541','raulortegaruiz@ricardopalma.com','Noche','22:00:00','06:00:00'),

		('MED022','75436278','Felipe Juan','Sanchez Mendoza','999736412','felipesanchez@ricardopalma.com', 'Tarde', '14:00:00', '22:00:00'),
        ('MED023','72653412','Laura Luna','Espinoza Ramos','912112384','lauraespinoza@ricardopalma.com','Tarde','14:00:00','22:00:00'),
		('MED024','65398879','Pedro Leonel','Alvarez Torres','941178231','pedroalvarez@ricardopalma.com','Noche','22:00:00','06:00:00');

-- Inserción de ESPECIALIDADES
INSERT INTO especialidad (nombre_especialidad,descripcion,estado)
VALUES
		('MEDICINA INTERNA','Diagnóstico y tratamiento de enfermedades internas','Activo'),
		('PEDIATRIA','Atención médica infantil','Activo'),
		('GINECOLOGIA','Salud reproductiva femenina','Activo'),
		('CARDIOLOGIA','Tratamiento de enfermedades cardíacas','Activo'),
		('DERMATOLOGIA','Tratamiento de enfermedades de la piel','Activo'),
		('OFTALMOLOGIA','Atención y salud visual','Activo'),
        ('NEUROLOGIA', 'Tratamiento del sistema nervioso', 'Activo'),
        ('TRAUMATOLOGIA','Tratamiento del sistema óseo','Activo'),
		('PSIQUIATRIA','Salud mental','Activo');


-- Inserción de MÉDICOS CON SUS ESPECIALIDADES
INSERT INTO medico_especialidad (id_medico,id_especialidad)
VALUES
		(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),
		(7,2),(8,2),(9,2),(10,2),
		(11,3),(12,3),
		(13,4),(14,4),(15,4),(16,4),
		(17,5),(18,5),
		(19,6),(20,6),(21,6);


-- Inserción de SEDES
INSERT INTO clinica (ruc,razon_social,distrito_ubicado,direccion_clinica,telefono,correo)
VALUES
		('20100121809','Administradora Clinica RICARDO PALMA S.A.','San Isidro','Av. Salaverry 1200','01 455 6677','sedeSanIsidro@ricardopalma.com'),
		('20100121809','Administradora Clinica RICARDO PALMA S.A.','Chorrillos','Av. Larco 850','01 488 9922','sedeChorrillos@ricardopalma.com');


-- Inserción de CONSULTORIOS  (FOREING_KEY)
INSERT INTO consultorio (id_especialidad,nombre_consultorio,numero_sala,piso)
VALUES
		(1,'Consultorio Medicina Interna A',101,1),
		(1,'Consultorio Medicina Interna B',102,1),
		(2,'Consultorio Pediatria A',103,1),
		(2,'Consultorio Pediatria B',201,2),
		(3,'Consultorio Ginecologia',202,2),
		(4,'Consultorio Cardiologia A',301,3),
		(4,'Consultorio Cardiologia B',302,3),
		(5,'Consultorio Dermatologia',401,4),
		(6,'Consultorio Oftalmologia',402,4),
		(1,'Consultorio Medicina Interna C',501,5),
		(2,'Consultorio Pediatria C',502,5);
        

-- Inserción de RECEPCIONISTAS 
INSERT INTO recepcionista (codigo_recepcionista, dni, nombres, apellidos, telefono, correo)
VALUES
		('RECEP001','84257136','Lucia Fernanda','Ramirez Torres','987 452 163','luciaramireztorres@ricardopalma.com'),
		('RECEP002','31586427','Andrea Milagros','Lopez Herrera','954 218 736','andrealopezherrera@ricardopalma.com'),
		('RECEP003','79624153','Fernando Alonso','Torres Vega','978 364 125','fernandotorresvega@ricardopalma.com'),
		('RECEP004','52874196','Paola Cristina','Castillo Rios','943 625 781','paolacastillorios@ricardopalma.com');
        
-- Inserción de CITAS (FOREING_KEY)
INSERT INTO cita (id_paciente,id_medico,id_recepcionista,id_consultorio,fecha,hora,tipo_cita,duracion_minutos,estado_cita)
VALUES
		(1,1,1,1,'2026-05-20','08:00:00','CONSULTA GENERAL',30,'Pendiente'),
		(2,2,2,1,'2026-05-20','15:00:00','CONTROL',45,'Pendiente'),
		(3,3,3,1,'2026-05-20','22:30:00','TERAPIA',90,'Pendiente'),
		(4,4,4,2,'2026-05-21','09:00:00','CONSULTA GENERAL',30,'Pendiente'),
		(5,5,1,2,'2026-05-21','16:00:00','CHEQUEO',45,'Pendiente'),
		(6,6,2,2,'2026-05-21','23:00:00','TERAPIA',90,'Pendiente'),
		(7,7,3,3,'2026-05-22','08:30:00','CONSULTA GENERAL',30,'Pendiente'),
		(8,8,4,4,'2026-05-22','15:30:00','CONTROL',45,'Pendiente'),
		(9,9,1,4,'2026-05-22','10:00:00','CONSULTA GENERAL',30,'Pendiente'),
		(10,10,2,4,'2026-05-22','22:15:00','TERAPIA',90,'Pendiente'),
		(11,11,3,5,'2026-05-23','08:00:00','CONSULTA GENERAL',30,'Pendiente'),
		(12,12,4,5,'2026-05-23','14:30:00','CONTROL',45,'Pendiente'),
		(13,13,1,6,'2026-05-23','09:30:00','CONSULTA GENERAL',30,'Pendiente'),
		(14,14,2,6,'2026-05-23','16:30:00','CHEQUEO',45,'Pendiente'),
		(15,15,3,7,'2026-05-23','22:00:00','TERAPIA',90,'Pendiente'),
		(16,16,4,7,'2026-05-24','07:30:00','CONSULTA GENERAL',30,'Pendiente'),
		(17,17,1,8,'2026-05-24','15:00:00','CONTROL',45,'Pendiente'),
		(18,18,2,8,'2026-05-24','08:45:00','CONTROL',45,'Pendiente'),
		(19,19,3,9,'2026-05-24','10:15:00','CONSULTA GENERAL',30,'Pendiente'),
		(20,20,4,9,'2026-05-24','17:00:00','CONSULTA GENERAL',30,'Pendiente'),
		(1,21,1,9,'2026-05-25','23:30:00','CHEQUEO',45,'Pendiente'),
		(2,1,2,10,'2026-05-25','06:30:00','CONSULTA GENERAL',30,'Pendiente'),
		(3,2,3,10,'2026-05-25','15:30:00','CONTROL',45,'Pendiente'),
		(4,3,4,10,'2026-05-25','22:45:00','TERAPIA',90,'Pendiente'),
		(5,4,1,11,'2026-05-26','09:15:00','CONSULTA GENERAL',30,'Pendiente'),
		(6,5,2,11,'2026-05-26','16:15:00','CONSULTA GENERAL',30,'Pendiente'),
		(7,6,3,1,'2026-05-26','23:15:00','TERAPIA',90,'Pendiente'),
		(8,7,4,3,'2026-05-26','07:45:00','CONTROL',45,'Pendiente');     


-- Inserción de BOLETA
INSERT INTO boleta_venta (id_cita,id_clinica,numero_boleta)
VALUES
		(1,1,'BV-2026-0001'),
		(2,1,'BV-2026-0002'),
		(3,1,'BV-2026-0003'),
		(4,1,'BV-2026-0004'),
		(5,1,'BV-2026-0005'),
		(6,1,'BV-2026-0006'),
		(7,2,'BV-2026-0007'),
		(8,2,'BV-2026-0008'),
		(9,2,'BV-2026-0009'),
		(10,2,'BV-2026-0010'),
		(11,1,'BV-2026-0011'),
		(12,1,'BV-2026-0012'),
		(13,1,'BV-2026-0013'),
		(14,1,'BV-2026-0014'),
		(15,2,'BV-2026-0015');


-- Inserción de DETALLE DE BOLETA
INSERT INTO detalle_boleta (id_boleta_venta, concepto, precio_unitario, descuento, valor_venta, igv, precio_neto)
VALUES
		-- BOLETA 1
		(1,'Consulta Medicina Interna',120.00,0.00,98.40,21.60,120.00),

		-- BOLETA 2
		(2,'Control Medicina Interna',100.00,0.00,82.00,18.00,100.00),

		-- BOLETA 3 (2 detalles)
		(3,'Emergencia Medicina Interna',250.00,0.00,205.00,45.00,250.00),
		(3,'Monitoreo signos vitales',80.00,0.00,65.60,14.40,80.00),

		-- BOLETA 4
		(4,'Consulta Medicina Interna',120.00,0.00,98.40,21.60,120.00),

		-- BOLETA 5
		(5,'Chequeo Medicina Interna',140.00,0.00,114.80,25.20,140.00),

		-- BOLETA 6 (2 detalles)
		(6,'Emergencia Medicina Interna',250.00,0.00,205.00,45.00,250.00),
		(6,'Examen laboratorio',90.00,0.00,73.80,16.20,90.00),

		-- BOLETA 7
		(7,'Consulta Pediatrica',130.00,0.00,106.60,23.40,130.00),

		-- BOLETA 8
		(8,'Control Pediatrico',100.00,0.00,82.00,18.00,100.00),

		-- BOLETA 9 (2 detalles)
		(9,'Consulta Pediatrica',130.00,0.00,106.60,23.40,130.00),
		(9,'Evaluación nutricional',45.00,0.00,36.90,8.10,45.00),

		-- BOLETA 10
		(10,'Emergencia Pediatrica',260.00,0.00,213.20,46.80,260.00),

		-- BOLETA 11
		(11,'Consulta Ginecologica',150.00,0.00,123.00,27.00,150.00),

		-- BOLETA 12 (2 detalles)
		(12,'Control Ginecologico',120.00,0.00,98.40,21.60,120.00),
		(12,'Ecografia',85.00,0.00,69.70,15.30,85.00),

		-- BOLETA 13
		(13,'Consulta Cardiologica',180.00,0.00,147.60,32.40,180.00),

		-- BOLETA 14
		(14,'Chequeo Cardiologico',160.00,0.00,131.20,28.80,160.00),

		-- BOLETA 15 (2 detalles)
		(15,'Emergencia Cardiologica',320.00,0.00,262.40,57.60,320.00),
		(15,'Electrocardiograma',110.00,0.00,90.20,19.80,110.00);
