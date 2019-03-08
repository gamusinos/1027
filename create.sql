
CREATE TABLE MONITOR (
	id_monitor int NOT NULL,
	nombre varchar(30) NOT NULL ,   
	nif varchar(9)  NOT NULL,
    email varchar(10) NOT NULL,
	cuentaBancaria varchar(30) NOT NULL,
   	CONSTRAINT pk_monitor PRIMARY KEY (id_monitor)
);


CREATE TABLE ACTIVIDADES_POR_MONITOR (
	id_monitor int NOT NULL,
	id_actividad varchar(10) NOT NULL,
    	CONSTRAINT pk_actividadesPorMonitor PRIMARY KEY (id_monitor, id_actividad),
	CONSTRAINT fk_actividad FOREIGN KEY (id_actividad) REFERENCES ACTIVIDAD (id_actividad) ON DELETE  CASCADE  ON UPDATE  CASCADE,
	CONSTRAINT fk_monitor FOREIGN KEY (id_monitor) REFERENCES MONITOR (id_monitor) ON DELETE  CASCADE  ON UPDATE  CASCADE
);

CREATE TABLE CERTIFICADOS(
	id_certificado varchar(10) NOT NULL,
	nombre varchar(10) NOT NULL,
	descripcion varchar(50),
	CONSTRAINT pk_certificado PRIMARY KEY (id_certificado)
);

CREATE TABLE CERTIFICADOS_MONITOR(
	id_certificado varchar(10) NOT NULL,
	id_monitor int NOT NULL,
	CONSTRAINT pk_certicadosmonitor PRIMARY KEY (id_certificado, id_monitor),
	CONSTRAINT fk_certificado FOREIGN KEY (id_certificado) REFERENCES CERTIFICADOS (id_certificado) ON DELETE  RESTRICT  ON UPDATE  CASCADE,
	CONSTRAINT fk_monitorC FOREIGN KEY (id_monitor) REFERENCES MONITOR (id_monitor) ON DELETE  CASCADE  ON UPDATE  CASCADE 

);

CREATE TABLE CLIENTE (
	id_cliente int NOT NULL,	
    dni varchar(9)  NOT NULL,
	sexo varchar(10), 
	añoNacimiento int,
    email varchar(10) NOT NULL,
    CONSTRAINT pk_cliente PRIMARY KEY (id_cliente)
);

CREATE TABLE PREFERENCIAS_CLIENTE (
	id_cliente int NOT NULL,	
    id_tipo varchar(9) NOT NULL,
    CONSTRAINT pk_preferenciasCliente PRIMARY KEY (id_cliente,id_tipo),
	CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente) ON DELETE  CASCADE  ON UPDATE  CASCADE,
	CONSTRAINT fk_tipo_actividad FOREIGN KEY (id_tipo) REFERENCES TIPO_ACTIVIDAD (id_tipo) ON DELETE  CASCADE  ON UPDATE  CASCADE
);


CREATE TABLE ACTIVIDAD (
    id_actividad varchar(10)  NOT NULL,
	nombre varchar(10) NOT NULL,
	lugar varchar(50) NOT NULL, 
	hora varchar(10),
	duracion date NOT NULL,
	descripcion varchar (100) NOT NULL,
	precio int,
	asistentesMinimos int,
	asistentesMaximos int,
	observaciones varchar(100),
    CONSTRAINT pk_actividad PRIMARY KEY (id_actividad)
);


CREATE TABLE CATEGORIA_ACTIVIDAD(
	id_tipo varchar(10) NOT NULL,
	id_actividad varchar(10) NOT NULL,
	nivel varchar(10) NOT NULL,
	CONSTRAINT pk_categoriaActividad PRIMARY KEY (id_tipo, id_actividad),
	CONSTRAINT fk_actividadCA FOREIGN KEY (id_actividad) REFERENCES ACTIVIDAD (id_actividad) ON DELETE  CASCADE  ON UPDATE  CASCADE,
	CONSTRAINT fk_tipo_actividadCA FOREIGN KEY (id_tipo) REFERENCES TIPO_ACTIVIDAD (id_tipo) ON DELETE  RESTRICT  ON UPDATE  CASCADE
);

CREATE TABLE TIPO_ACTIVIDAD(
	id_tipo varchar(10) NOT NULL,
	descripcion varchar(100),
	certificado varchar(10),
	CONSTRAINT pk_tipoActividadTIPO PRIMARY KEY (id_tipo),
	CONSTRAINT fk_certificadoTIPOc FOREIGN KEY (certificado) REFERENCES CERTIFICADOS (id_certificado) ON DELETE  RESTRICT  ON UPDATE  CASCADE
);

CREATE TABLE RESERVA(
	id_reserva varchar (20) NOT NULL,
	id_actividad varchar(10) NOT NULL,
	id_cliente int NOT NULL,
	asistentes int NOT NULL,
	precioFinal int NOT NULL,
	precioTotal int NOT NULL,
	numTransaccion int,
	observaciones varchar(100),
	CONSTRAINT pk_reserva PRIMARY KEY (id_reserva),
	CONSTRAINT fk_actividad FOREIGN KEY (id_actividad) REFERENCES ACTIVIDAD (id_actividad) ON DELETE  RESTRICT  ON UPDATE  CASCADE,
	CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente) ON DELETE  RESTRICT  ON UPDATE  CASCADE
);
CREATE TABLE RESERVA_ACEPTADA(
	id_reserva varchar (20) NOT NULL,
	CONSTRAINT pk_reservaAceptada PRIMARY KEY (id_reserva),
	CONSTRAINT fk_reserva FOREIGN KEY (id_reserva) REFERENCES RESERVA (id_reserva) ON DELETE  CASCADE  ON UPDATE  CASCADE
);

CREATE TABLE RESERVA_CANCELADA(
	id_reserva varchar (20) NOT NULL,
	observaciones varchar(100),
	CONSTRAINT pk_reservaCancelada PRIMARY KEY (id_reserva),
	CONSTRAINT fk_reserva FOREIGN KEY (id_reserva) REFERENCES RESERVA (id_reserva) ON DELETE  CASCADE  ON UPDATE  CASCADE
);

CREATE TABLE MONITORES_RESERVA(
	id_reserva varchar(10) NOT NULL,
	id_monitor int NOT NULL,
	CONSTRAINT pk_monitoresReserva PRIMARY KEY (id_reserva, id_monitor),
	CONSTRAINT fk_actividad FOREIGN KEY (id_reserva) REFERENCES RESERVA (id_reserva) ON DELETE  CASCADE  ON UPDATE  CASCADE,
	CONSTRAINT fk_monitor FOREIGN KEY (id_monitor) REFERENCES MONITOR (id_monitor) ON DELETE  CASCADE  ON UPDATE  CASCADE
);
