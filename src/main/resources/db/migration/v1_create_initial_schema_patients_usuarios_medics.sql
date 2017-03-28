CREATE TABLE medicos
(
    id INTEGER DEFAULT nextval('medicos_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    correo VARCHAR(255) NOT NULL,
    especialidad VARCHAR(40) NOT NULL,
    password VARCHAR(40) NOT NULL,
    centro VARCHAR(40) NOT NULL
);
CREATE TABLE patients
(
    id INTEGER DEFAULT nextval('patients_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    password VARCHAR(40),
    email VARCHAR(255) NOT NULL,
    center VARCHAR(100) NOT NULL,
    medicalhistory VARCHAR(255) NOT NULL
);
CREATE TABLE usuarios
(
    id INTEGER DEFAULT nextval('usuarios_id_seq'::regclass) PRIMARY KEY NOT NULL,
    correo VARCHAR(255),
    password VARCHAR(40) NOT NULL,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40)
);
CREATE UNIQUE INDEX medicos_id_uindex ON medicos (id);
CREATE UNIQUE INDEX patients_id_uindex ON patients (id);
CREATE UNIQUE INDEX "Usuarios_id_uindex" ON usuarios (id);
