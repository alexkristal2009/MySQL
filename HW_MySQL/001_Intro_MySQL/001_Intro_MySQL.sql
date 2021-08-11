DROP DATABASE IF EXISTS MyBD;

-- tasks 2 and 3

CREATE DATABASE MyBD;

USE MyBD;

CREATE TABLE Staff
(
	id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    phone_number VARCHAR(30) NOT NULL UNIQUE DEFAULT 'Unknown',
    PRIMARY KEY(id)
);

CREATE TABLE SalaryAndPositions
(
	id INT AUTO_INCREMENT NOT NULL,
    salary INT NOT NULL DEFAULT 0,
    positions VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    PRIMARY KEY(id)
);

CREATE TABLE PersonalInformation
(
	id INT AUTO_INCREMENT NOT NULL,
    family_status VARCHAR(8) NOT NULL DEFAULT 'Unknown',
    DOB DATE NOT NULL DEFAULT '0000-00-00',
    city VARCHAR(30) NOT NULL DEFAULT 'Unknown',
    PRIMARY KEY(id)
);

DROP TABLE Staff;

DROP TABLE SalaryAndPositions;

DROP TABLE PersonalInformation;

INSERT Staff 
(name, phone_number)
VALUES 
('Суворов Тарас Богданович', '+38(099)1478523'),
('Казаков Герман Альбертович', '+38(050)8415269'),
('Коновалов Алан Дмитриевич', '+38(069)7418596');

INSERT SalaryAndPositions 
(salary, positions)
VALUES 
(15000, 'Директор'),
(10000, 'Помощник директора'),
(5000, 'Охранник');

INSERT PersonalInformation 
(family_status, DOB, city)
VALUES 
('Married', '1990-05-14', 'Kiev'),
('Married', '1995-02-02', 'Kharkov'), 
('Single', '2000-10-25', 'Odesa');

SELECT * FROM Staff;

SELECT * FROM SalaryAndPositions;

SELECT * FROM PersonalInformation;

DESC Staff;

DESC SalaryAndPositions;

DESC PersonalInformation;

-- tasks 4

SELECT id FROM SalaryAndPositions
WHERE salary > 10000;

-- task 5

UPDATE PersonalInformation
SET family_status = 'Single'
WHERE id = 1;DROP DATABASE IF EXISTS MyBD;

-- tasks 2 and 3

CREATE DATABASE MyBD;

USE MyBD;

CREATE TABLE Staff
(
	id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    phone_number VARCHAR(30) NOT NULL UNIQUE DEFAULT 'Unknown',
    PRIMARY KEY(id)
);

CREATE TABLE SalaryAndPositions
(
	id INT AUTO_INCREMENT NOT NULL,
    salary INT NOT NULL DEFAULT 0,
    positions VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    PRIMARY KEY(id)
);

CREATE TABLE PersonalInformation
(
	id INT AUTO_INCREMENT NOT NULL,
    family_status VARCHAR(8) NOT NULL DEFAULT 'Unknown',
    DOB DATE NOT NULL DEFAULT '0000-00-00',
    city VARCHAR(30) NOT NULL DEFAULT 'Unknown',
    PRIMARY KEY(id)
);

DROP TABLE Staff;

DROP TABLE SalaryAndPositions;

DROP TABLE PersonalInformation;

INSERT Staff 
(name, phone_number)
VALUES 
('Суворов Тарас Богданович', '+38(099)1478523'),
('Казаков Герман Альбертович', '+38(050)8415269'),
('Коновалов Алан Дмитриевич', '+38(069)7418596');

INSERT SalaryAndPositions 
(salary, positions)
VALUES 
(15000, 'Директор'),
(10000, 'Помощник директора'),
(5000, 'Охранник');

INSERT PersonalInformation 
(family_status, DOB, city)
VALUES 
('Married', '1990-05-14', 'Kiev'),
('Married', '1995-02-02', 'Kharkov'), 
('Single', '2000-10-25', 'Odesa');

SELECT * FROM Staff;

SELECT * FROM SalaryAndPositions;

SELECT * FROM PersonalInformation;

DESC Staff;

DESC SalaryAndPositions;

DESC PersonalInformation;

-- tasks 4

SELECT id FROM SalaryAndPositions
WHERE salary > 10000;

-- task 5

UPDATE PersonalInformation
SET family_status = 'Single'
WHERE id = 1;