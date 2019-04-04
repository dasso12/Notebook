CREATE DATABASE notebook;

USE notebook;

CREATE TABLE login(
id_user int primary key auto_increment not null,
user_name varchar (30)not null,
pass_name varchar (15)not null
);

CREATE TABLE athlete(
id_athlete int primary key auto_increment not null,
athlete_name varchar (20) not null,
father_surname varchar (25) not null,
mother_surname varchar (25),
gender varchar (20),
birthdate varchar (15),
cellphone_number varchar (45),
telephone_home varchar (45),
email varchar (45) not null
);

CREATE TABLE doctor(
id_doctor int primary key auto_increment not null,
doctor_name varchar (20) not null,
father_surname varchar (25) not null,
mother_surname varchar (25),
birthdate varchar (15) not null,
hospital_name varchar (55),
hospital_adress varchar (90),
cellphone_number varchar (45),
telephone_home varchar (45),
email varchar (45) not null
);

CREATE TABLE student(
id_student int primary key auto_increment not null,
student_name varchar (20) not null,
father_surname varchar (25) not null,
mother_surname varchar (25),
country_of_birth varchar (60) not null,
city_of_birth varchar (60) not null,
birthdate varchar (15),
career varchar (50) not null,
email varchar (50) not null,
cellphone_number varchar (45),
telephone_home varchar (45)
);

CREATE TABLE graduate (
id_graduate int primary key auto_increment not null,
graduate_name varchar (20) not null,
father_surname varchar (25) not null,
mother_surname varchar (25),
office_telephone varchar (25),
schedule_of_attention varchar (45) not null,
cellphone_number varchar (45),
telephone_home varchar (45),
email varchar (45) not null
);

CREATE TABLE person(
id_person int primary key auto_increment not null,
person_name varchar (20),
father_surname varchar (25) not null,
mother_surname varchar (25),
adress varchar (90) not null,
favorite_contact varchar (20),
occupation varchar (30) not null,
cellphone_number varchar (45),
telephone_home varchar (45),
email varchar (45) not null
);


DROP DATABASE notebook;
SELECT * FROM person;
