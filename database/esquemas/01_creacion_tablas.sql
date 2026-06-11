
/*BASE DE DATOS - CLÍNICA */

CREATE DATABASE clinica_db;

USE clinica_db;


CREATE TABLE paciente (
	id_paciente INT AUTO_INCREMENT PRIMARY KEY,
	codigo_paciente VARCHAR(25) UNIQUE NOT NULL,
	dni CHAR (8) UNIQUE NOT NULL,
	nombres VARCHAR (100) NOT NULL,
	apellidos VARCHAR (100) NOT NULL,
	tipo_sangre ENUM('A+','A-','B+','B-','AB+','AB-','O+','O-'),
	fecha_nacimiento DATE NOT NULL,
	genero_nacimiento ENUM('F','M'),
	direccion_cliente VARCHAR(150),
	telefono VARCHAR(15),
	fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
	fecha_modificacion DATETIME DEFAULT CURRENT_TIMESTAMP
	ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE medico (
	id_medico INT AUTO_INCREMENT PRIMARY KEY,
	codigo_medico VARCHAR(20) UNIQUE NOT NULL,
	dni CHAR (8) UNIQUE NOT NULL,
	nombres VARCHAR(100) NOT NULL,
	apellidos VARCHAR(100) NOT NULL,
	telefono VARCHAR(15) NOT NULL ,
	correo VARCHAR (100) UNIQUE,
	turno ENUM ('Mañana','Tarde','Noche') NOT NULL,
	hora_inicio TIME NOT NULL,
	hora_fin TIME NOT NULL,
	fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
	fecha_modificacion DATETIME DEFAULT CURRENT_TIMESTAMP
	ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE especialidad (
	id_especialidad INT AUTO_INCREMENT PRIMARY KEY,
	nombre_especialidad VARCHAR (100) UNIQUE NOT NULL,
	descripcion VARCHAR (255) ,
	estado ENUM('Activo','Inactivo') NOT NULL
);

CREATE TABLE medico_especialidad (
	id_medico_especialidad INT AUTO_INCREMENT PRIMARY KEY,
	id_medico INT NOT NULL,
	id_especialidad INT NOT NULL,
	
	FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
	FOREIGN KEY (id_especialidad) REFERENCES especialidad (id_especialidad),
	
	UNIQUE (id_medico, id_especialidad)
);

CREATE TABLE clinica (
	id_clinica INT AUTO_INCREMENT PRIMARY KEY,
	ruc CHAR (11) NOT NULL,
	razon_social VARCHAR (150) NOT NULL,
	distrito_ubicado VARCHAR (25) NOT NULL,
	direccion_clinica  VARCHAR (200) UNIQUE NOT NULL,
	telefono VARCHAR(15) NOT NULL,
	correo VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE consultorio (
	id_consultorio INT AUTO_INCREMENT PRIMARY KEY,
	id_especialidad INT NOT NULL,
	nombre_consultorio VARCHAR (100) UNIQUE NOT NULL,
	numero_sala INT UNIQUE NOT NULL,
	piso INT NOT NULL,
	fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
	fecha_modificacion DATETIME DEFAULT CURRENT_TIMESTAMP
	ON UPDATE CURRENT_TIMESTAMP,
	
	FOREIGN KEY (id_especialidad) REFERENCES especialidad (id_especialidad)
); 

CREATE TABLE recepcionista (
	id_recepcionista INT AUTO_INCREMENT PRIMARY KEY,
	codigo_recepcionista VARCHAR(15) UNIQUE NOT NULL,
	dni CHAR(8) UNIQUE NOT NULL,
	nombres VARCHAR(100) NOT NULL,
	apellidos VARCHAR(100) NOT NULL,
	telefono VARCHAR(15) NOT NULL,
	correo VARCHAR(100) UNIQUE NOT NULL,
	fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
	fecha_modificacion DATETIME DEFAULT CURRENT_TIMESTAMP
	ON UPDATE CURRENT_TIMESTAMP
); 

CREATE TABLE cita (
	id_cita INT AUTO_INCREMENT PRIMARY KEY,
	id_paciente INT NOT NULL,
	id_medico INT NOT NULL,
	id_recepcionista INT NOT NULL,
	id_consultorio INT NOT NULL,
    id_especialidad INT NOT NULL,
	fecha DATE NOT NULL,
	hora TIME NOT NULL,
	tipo_cita ENUM('CONSULTA GENERAL','CONTROL','CHEQUEO','TERAPIA') NOT NULL DEFAULT 'CONSULTA GENERAL',
	duracion_minutos INT NOT NULL DEFAULT 45,
	estado_cita ENUM('Pendiente','Atendida','Cancelada') NOT NULL DEFAULT 'Pendiente',
	fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
	fecha_modificacion DATETIME DEFAULT CURRENT_TIMESTAMP
	ON UPDATE CURRENT_TIMESTAMP,
	
	FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
	FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
	FOREIGN KEY (id_recepcionista) REFERENCES recepcionista(id_recepcionista),
	FOREIGN KEY (id_consultorio) REFERENCES consultorio(id_consultorio),
    FOREIGN KEY (id_especialidad) REFERENCES especialidad(id_especialidad)
);

CREATE TABLE boleta_venta (
	id_boleta_venta INT AUTO_INCREMENT PRIMARY KEY,
	id_cita INT UNIQUE NOT NULL,
	id_clinica INT NOT NULL,
	numero_boleta VARCHAR(30) UNIQUE NOT NULL,
	fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
	fecha_modificacion DATETIME DEFAULT CURRENT_TIMESTAMP
	ON UPDATE CURRENT_TIMESTAMP,
	
	FOREIGN KEY (id_cita) REFERENCES cita (id_cita),
	FOREIGN KEY (id_clinica) REFERENCES clinica (id_clinica)
); 

CREATE TABLE detalle_boleta (
	id_detalle_boleta INT AUTO_INCREMENT PRIMARY KEY,
	id_boleta_venta INT NOT NULL,
	concepto VARCHAR(150) NOT NULL,
	precio_unitario DECIMAL(10,2) NOT NULL,
	descuento DECIMAL(10,2) NOT NULL DEFAULT 0,
	valor_venta DECIMAL(10,2) NOT NULL,
	igv DECIMAL(10,2) NOT NULL,
	precio_neto DECIMAL(10,2) NOT NULL ,
	
	FOREIGN KEY (id_boleta_venta) REFERENCES boleta_venta (id_boleta_venta)
);

CREATE TABLE metodo_pago (
	id_metodo_pago INT AUTO_INCREMENT PRIMARY KEY,
    nombre_metodo_pago VARCHAR(50) NOT NULL
);
