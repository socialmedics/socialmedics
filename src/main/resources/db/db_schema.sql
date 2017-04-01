INSERT INTO patients(name, surname, email)
VALUES ('Daniel', 'San Juan', 'daniel@email.com');
INSERT INTO patients(name, surname, email)
VALUES ('Stefan', 'Hautz', 'stefan@email.com');
INSERT INTO patients(name, surname, email)
VALUES ('Yonay', 'Cabrera', 'yonay@email.com');
INSERT INTO patients(name, surname, email)
VALUES ('Jonatan', 'Acosta', 'jonatan@email');

INSERT INTO medicalhistory(name,email,sex,borndate,nationality,birthplace,historydate,historytime,doctor)
VALUES ('Daniel San Juan', 'daniel@email.com','Hombre', 'Abril', 'Española', 'España', 'Hoy', 'Ahora', 'Juan Mendez');
INSERT INTO medicalhistory(name,email,sex,borndate,nationality,birthplace,historydate,historytime,doctor)
VALUES ('Stefan Hautz', 'stefan@email.com','Hombre', 'Abril', 'Española', 'España', 'Hoy', 'Ahora', 'Juan Mendez');
INSERT INTO medicalhistory(name,email,sex,borndate,nationality,birthplace,historydate,historytime,doctor)
VALUES ('Yonay Cabrera', 'yonay@email.com','Hombre', 'Abril', 'Española', 'España', 'Hoy', 'Ahora', 'Juan Mendez');
INSERT INTO medicalhistory(name,email,sex,borndate,nationality,birthplace,historydate,historytime,doctor)
VALUES ('Jonatan Acosta', 'jonatan@email.com','Hombre', 'Abril', 'Española', 'España', 'Hoy', 'Ahora', 'Juan Mendez');

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