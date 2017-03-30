# SocialMedics
Here we develop a project for the subjects of  _Software Architecture_ and  _Agile Development Methodologies_

## Our mission
We want to create a new way of communication between  hospitals, doctors and patients. 

## DB Configuration (PostgreSQL)

### If you don't have Docker

1. You will need to install *Postgres* in your machine and configure it matching your needs.
2. Update your *application.properties* file according to your local *postgres* configuration

### With Docker

1. Build the *postgresql* image called socialmedics

    `docker build -t socialmedics src/main/docker`

2. Run the container

    `docker run --name socialmedics -p 5432:5432 -d socialmedics`

3. Verify if the container is on execution

    `docker ps`

4. Verify that the environment variables in *Dockerfile* are the same in your *application.properties* file

    * `spring.datasource.url= jdbc:postgresql://localhost:5432/socialmedics`
    * `spring.datasource.username=root` 
    * `spring.datasource.password=root`

5. Execute the sql schema in your database

    * You have the DDL in `/src/main/resources/db_schema.sql`

6. Enjoy our app!

### Other Docker commands

1. If you want to stop your Docker container:

    `docker stop socialmedics`

2. If you want to restart the container:

    `docker restart socialmedics`
