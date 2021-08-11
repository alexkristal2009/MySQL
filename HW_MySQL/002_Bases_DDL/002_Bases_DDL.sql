DROP DATABASE IF EXISTS Wholesale_Base;

-- task 2

CREATE DATABASE Wholesale_Base;

USE Wholesale_Base;

CREATE TABLE Supplier
(
	id INT AUTO_INCREMENT NOT NULL,
    supplier_name VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    products SET('Product_1', 'Product_2', 'Product_3', 'Product_4', 'Product_5') NOT NULL,
    phone_number VARCHAR(30) NOT NULL UNIQUE DEFAULT 'Unknown',
    PRIMARY KEY(id)
);

CREATE TABLE Staff
(
	id INT AUTO_INCREMENT NOT NULL,
    staff_name VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    positions VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    salary INT NOT NULL DEFAULT 0,
    phone_number VARCHAR(30) NOT NULL UNIQUE DEFAULT 'Unknown',
    PRIMARY KEY(id)
);

CREATE TABLE Customer
(
	id INT AUTO_INCREMENT NOT NULL,
    customer_name VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    phone_number VARCHAR(30) NOT NULL UNIQUE DEFAULT 'Unknown',
    city VARCHAR(30) NOT NULL DEFAULT 'Unknown',
    PRIMARY KEY(id)
);

CREATE TABLE Orders
(
	orders_number INT AUTO_INCREMENT NOT NULL,
    orders_status VARCHAR(15) NOT NULL DEFAULT 'Unknown',
    orders_supplier INT DEFAULT NULL, 
    orders_staff INT DEFAULT NULL,
    orders_customer INT DEFAULT NULL, 
    PRIMARY KEY(orders_number)
); 

ALTER TABLE Orders
ADD CONSTRAINT fk_sipplier_id
FOREIGN KEY (orders_supplier) REFERENCES Supplier(id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Orders
ADD CONSTRAINT fk_staff_id
FOREIGN KEY (orders_staff) REFERENCES Staff(id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Orders
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (orders_customer) REFERENCES Customer(id)
ON DELETE CASCADE ON UPDATE CASCADE;



DROP TABLE Supplier;

DROP TABLE Staff;

DROP TABLE Customer;

DROP TABLE Orders;



DESC Supplier;

DESC Staff;

DESC Customer;

DESC Orders;



INSERT Supplier
(supplier_name, products, phone_number)
VALUES
('Supplier_1', ('Product_1,Product_4,Product_5'), '+38(088)7412357'),
('Supplier_2', ('Product_1,Product_2,Product_4,Product_5'), '+38(022)7841020'),
('Supplier_3', ('Product_1'), '+38(055)5874121'),
('Supplier_4', ('Product_1,Product_2,Product_3,Product_4,Product_5'), '+38(077)6523654');

INSERT Staff
(Staff_name, positions, salary, phone_number)
VALUES
('Гордеев Власий Анатольевич', 'Начальник', 20000, '+38(011)1452141'),
('Беспалов Гордей Парфеньевич', 'Охранник', 70000, '+38(044)1452141'),
('Юдин Аверьян Кимович', 'Завсклада', 15000, '+38(022)1452141'),
('Титов Степан Вениаминович', 'Менеджер', 16500, '+38(033)1452141');

INSERT Customer
(customer_name, phone_number, city)
VALUES
('Рыбаков Прохор Викторович', '+38(024)7489563', 'Kiev'),
('Назаров Вилли Альвианович', '+38(058)5477447', 'Kharkov'),
('Устинов Олег Владленович', '+38(088)1234569', 'Dnepro'),
('Селиверстов Филипп Рубенович', '+38(074)5876985', 'Odesa');

INSERT Orders
(orders_status, orders_supplier, orders_staff, orders_customer)
VALUES
('Done', 1, 3, 2),
('not ready', 2, 3, 1),
('not ready', 1, 3, 4),
('Done', 4, 2, 1);



SELECT * FROM Supplier;

SELECT * FROM Staff;

SELECT * FROM Customer;

SELECT * FROM Orders;




DELETE FROM Customer
WHERE customer_name = 'Назаров Вилли Альвианович';