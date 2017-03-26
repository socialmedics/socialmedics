CREATE TABLE public.patients
(
    ID SERIAL PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    SURNAME TEXT NOT NULL
);

create table medicalhistory
(
	id serial not null
		constraint medicalhistory_pkey
			primary key,
        name varchar(40) not null,
	sex varchar(40) not null,
	borndate varchar(40) not null,
	nationality varchar(40) not null,
	birthplace varchar(40) not null,
	historydate varchar(40) not null,
	historytime varchar(40) not null,
	doctor varchar(40) not null
)
;

create unique index medicalhistory_id_uindex
	on medicalhistory (id)
;