CREATE TABLE public.medicos
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    email VARCHAR(255) UNIQUE ,
    password VARCHAR(40) NOT NULL,
    center VARCHAR(40) NOT NULL,
    especialidad VARCHAR(40) NOT NULL
);


CREATE TABLE public.patients
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    email VARCHAR(255) UNIQUE ,
    password VARCHAR(40) NOT NULL,
    center VARCHAR(40) NOT NULL,
    medicalhistory VARCHAR(255)
);


CREATE TABLE public.usuarios
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    surname VARCHAR(40) NOT NULL,
    email VARCHAR(255) UNIQUE ,
    password VARCHAR(40) NOT NULL,
    center VARCHAR(40) NOT NULL
);