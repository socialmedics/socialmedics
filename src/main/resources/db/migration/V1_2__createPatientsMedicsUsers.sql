CREATE TABLE public.medicos
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    email VARCHAR(255) UNIQUE ,
    password VARCHAR(40) NOT NULL,
    center VARCHAR(40) NOT NULL,
    access VARCHAR(40) NOT NULL,
    especialidad VARCHAR(40) NOT NULL
);


CREATE TABLE public.patients
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    email VARCHAR(255) UNIQUE ,
    password VARCHAR(40) NOT NULL,
    center VARCHAR(40) NOT NULL
);


CREATE TABLE public.usuarios
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    email VARCHAR(255) UNIQUE ,
    password VARCHAR(40) NOT NULL,
    center VARCHAR(40) NOT NULL,
    type VARCHAR(40) NOT NULL
);

CREATE TABLE public.medicalHistory
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR (40) NOT NULL,
    email VARCHAR (40) NOT NULL,
    sex VARCHAR (40) NOT NULL,
    borndate VARCHAR (40) NOT NULL,
    nationality VARCHAR (40) NOT NULL,
    birthplace VARCHAR (40) NOT NULL,
    historydate VARCHAR (40) NOT NULL,
    historytime VARCHAR (40) NOT NULL,
    doctor VARCHAR (40) NOT NULL
);

INSERT INTO public.patients(name, surname, email, password, center)
VALUES ('Daniel', 'San Juan', 'daniel@email.com', 'admin', 'Perpetuo Socorro');
INSERT INTO public.patients(name, surname, email, password, center)
VALUES ('Stefan', 'Hautz', 'stefan@email.com', 'admin', 'Perpetuo Socorro');
INSERT INTO public.patients(name, surname, email, password, center)
VALUES ('Yonay', 'Cabrera', 'yonay@email.com','admin', 'Perpetuo Socorro');
INSERT INTO public.patients(name, surname, email, password, center)
VALUES ('Jonatan', 'Acosta', 'jonatan@email.com','admin', 'Perpetuo Socorro');

INSERT INTO public.medicalhistory(name,email,sex,borndate,nationality,birthplace,historydate,historytime,doctor)
VALUES ('Daniel San Juan', 'daniel@email.com','Hombre', 'Abril', 'Española', 'España', 'Hoy', 'Ahora', 'Juan Mendez');
INSERT INTO public.medicalhistory(name,email,sex,borndate,nationality,birthplace,historydate,historytime,doctor)
VALUES ('Stefan Hautz', 'stefan@email.com','Hombre', 'Abril', 'Española', 'España', 'Hoy', 'Ahora', 'Juan Mendez');
INSERT INTO public.medicalhistory(name,email,sex,borndate,nationality,birthplace,historydate,historytime,doctor)
VALUES ('Yonay Cabrera', 'yonay@email.com','Hombre', 'Abril', 'Española', 'España', 'Hoy', 'Ahora', 'Juan Mendez');
INSERT INTO public.medicalhistory(name,email,sex,borndate,nationality,birthplace,historydate,historytime,doctor)
VALUES ('Jonatan Acosta', 'jonatan@email.com','Hombre', 'Abril', 'Española', 'España', 'Hoy', 'Ahora', 'Juan Mendez');
