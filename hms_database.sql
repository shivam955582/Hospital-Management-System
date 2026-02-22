create database hospitalmana;
use hospitalmana;
CREATE TABLE staff_registration (
    userid VARCHAR(10) PRIMARY KEY,
    role VARCHAR(30) NOT NULL,
    name VARCHAR(50) NOT NULL,
    father VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    dob DATE NOT NULL,
    contact VARCHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    aadhar VARCHAR(12) NOT NULL UNIQUE,
    address VARCHAR(100) NOT NULL,
    joindate DATE NOT NULL,
    qualification VARCHAR(50) NOT NULL,
    specialization VARCHAR(50),
    experience VARCHAR(20) NOT NULL,
    salary INT NOT NULL,
    bankname VARCHAR(50) NOT NULL,
    ifsc VARCHAR(20) NOT NULL,
    accountno VARCHAR(20) NOT NULL,
    password VARCHAR(100) NOT NULL
);
ALTER table staff_registration add column leavingdate date;
create table new_patient(
userid varchar(20) primary key,
name varchar(50)NOT NULL,
father varchar(50),
gender varchar(10)not null,
age int not null,
contact varchar(10) not null,
address varchar(100) not null,
aadhar varchar(12)not null,
disease varchar(50),
registrationd date not null
);
CREATE TABLE appointment (
    userid VARCHAR(20),
    doctor VARCHAR(50) NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time VARCHAR(20) NOT NULL,
   fk_patient status VARCHAR(15) DEFAULT 'BOOKED',

    -- 🔑 composite primary key
    PRIMARY KEY (userid, appointment_date, appointment_time),

    CONSTRAINT fk_patient
    FOREIGN KEY (userid)
    REFERENCES new_patient(userid)
    ON DELETE CASCADE
);
alter table new_patient 
add unique (aadhar);
alter table new_patient
add unique (contact);
select*from appointment;
select*from new_patient;
 Select*from staff_registration;
 select*from appointment;
alter table appointment
drop column patient_name;
alter table appointment
add column diagnosis varchar(100);
alter table appointment add column prescription varchar(300);
alter table appointment 
modify prescription text;
INSERT INTO staff_registration
(userid, role, name,gender,age, password)
VALUES
('ADM001','Admin','System Admin','admin@123');
