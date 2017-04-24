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
    allergy VARCHAR (40) NOT NULL,
    illness VARCHAR (40) NOT NULL,
    diagnosis VARCHAR (40) NOT NULL,
    historydate VARCHAR (40) NOT NULL,
    historytime VARCHAR (40) NOT NULL,
    doctor VARCHAR (40) NOT NULL,
    department VARCHAR (40) NOT NULL
);

CREATE TABLE public.center
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL ,
    address VARCHAR(255) NOT NULL ,
    location VARCHAR(40) NOT NULL,
    province VARCHAR(40) NOT NULL
);

CREATE TABLE public.dates
(
    id SERIAL PRIMARY KEY NOT NULL,
    doctor VARCHAR(255) NOT NULL ,
    patient VARCHAR(255) NOT NULL ,
    day VARCHAR(40) NOT NULL,
    center VARCHAR(40) NOT NULL,
    hour VARCHAR(40) NOT NULL
);

INSERT INTO public.patients(name, surname, email, password, center)
VALUES ('Daniel', 'San Juan', 'daniel@email.com', 'admin', 'Perpetuo Socorro');
INSERT INTO public.patients(name, surname, email, password, center)
VALUES ('Stefan', 'Hautz', 'stefan@email.com', 'admin', 'Perpetuo Socorro');
INSERT INTO public.patients(name, surname, email, password, center)
VALUES ('Yonay', 'Cabrera', 'yonay@email.com','admin', 'Perpetuo Socorro');
INSERT INTO public.patients(name, surname, email, password, center)
VALUES ('Jonatan', 'Acosta', 'jonatan@email.com','admin', 'Perpetuo Socorro');

INSERT INTO public.center(name, address, location, province)
VALUES ('Hospital Dr. Negrín', 'Calle Pintor Felo Monzón s/n', 'Las Palmas de Gran Canaria', 'Las Palmas');

INSERT INTO public.medicalHistory(name, email, sex, borndate, nationality, birthplace, allergy, illness, diagnosis, historydate, historytime, doctor, department)
VALUES ('Yonay Cabrera', 'yonay@email.com', 'Hombre', '19-04-1993', 'España', 'Gran Canaria', 'Polvo', 'Estornudos', 'Reposo', '02-04-2017', '17:51', 'Daniel San', 'Cardiologo');
