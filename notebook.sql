CREATE DATABASE notebook;

-- DROP DATABASE notebook;

USE notebook;

CREATE TABLE login(
id_user int primary key auto_increment not null,
user_name varchar (30)not null,
pass_name varchar (15)not null
);

CREATE TABLE contact(
id_contact int primary key auto_increment not null,
description varchar (30)
);

CREATE TABLE  sport(
id_sport int primary key auto_increment not null,
description varchar (20)
);

CREATE TABLE  specialty(
id_specialty int primary key auto_increment not null,
description varchar (20)
);

CREATE TABLE athlete(
id_athlete int primary key auto_increment not null,
athlete_name varchar (20) not null,
father_surname varchar (25) not null,
mother_surname varchar (25),
gender boolean not null,
birthdate date,

id_sport int not null,
foreign key (id_sport) references sport (id_sport),

id_contact int not null,
foreign key (id_contact) references contact (id_contact)
);

CREATE TABLE doctor(
id_doctor int primary key auto_increment not null,
doctor_name varchar (20) not null,
father_surname varchar (25) not null,
mother_surname varchar (25),
birthdate date not null,

id_contact int not null,
foreign key (id_contact) references contact (id_contact),

id_specialty int not null,
foreign key (id_specialty) references specialty (id_specialty),

hospital_name varchar (55),
hospital_adress varchar (90)
);

CREATE TABLE student(
id_student int primary key auto_increment not null,
student_name varchar (20) not null,
father_surname varchar (25) not null,
mother_surname varchar (25),
country_of_birth varchar (60) not null,
city_of_birth varchar (60) not null,
birthdate date,
career varchar (50) not null,
email varchar (50) not null,

id_contact int not null,
foreign key (id_contact) references contact (id_contact)
);

CREATE TABLE graduate (
id_graduate int primary key auto_increment not null,
graduate_name varchar (20) not null,
father_surname varchar (25) not null,
mother_surname varchar (25),
office_telephone varchar (25),
schedule_of_attention datetime not null,

id_contact int not null,
foreign key (id_contact) references contact (id_contact)
);

CREATE TABLE person(
id_person int primary key auto_increment not null,
person_name varchar (20),
father_surname varchar (25) not null,
mother_surname varchar (25),

id_contact int not null,
foreign key (id_contact) references contact (id_contact),

adress varchar (90) not null,
favorite_contact varchar (20),
occupation varchar (30) not null
);

