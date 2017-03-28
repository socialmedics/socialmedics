INSERT INTO patients(name, surname, email)
VALUES ('russo', 'san juan', 'russo@email');


INSERT INTO medicalhistory(name,email,sex,borndate,nationality,birthplace,historydate,historytime,doctor)
VALUES ('danielito', 'yonay@gmail.com','Hombre', 'Abril', 'Española', 'España', 'Hoy', 'Ahora', 'Juan Mendez');

CREATE TABLE patients
(
    id SERIAL PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    surname TEXT NOT NULL,
    email VARCHAR (40) NOT NULL
);
CREATE UNIQUE INDEX patients_id_uindex ON patients (id);

CREATE TABLE medicalHistory
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
CREATE UNIQUE INDEX "medicalHistory_id_uindex" ON medicalHistory (id);