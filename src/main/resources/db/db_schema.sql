CREATE TABLE "user"
(
    id INTEGER DEFAULT nextval('user_id_seq'::regclass) PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    surname TEXT NOT NULL
);
INSERT INTO user (name,surname)
VALUES ('yonay','cabrera');