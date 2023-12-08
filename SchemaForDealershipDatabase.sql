CREATE SCHEMA IF NOT EXISTS CarDealershipDatabase;

USE CarDealershipDatabase;

CREATE TABLE dealerships(
dealership_id int NOT NULL auto_increment, 
name varchar(50),
address varchar(50),
phone varchar(12),
PRIMARY KEY (dealership_id)
);

CREATE TABLE vehicles(
vin int NOT NULL,
year int,
make varchar(30),
model varchar(30),
vehicleType varchar(30),
color varchar(30),
odometer int NOT NULL,
price DECIMAL (15,2) CHECK (price >0),
SOLD bool default false,
PRIMARY KEY (vin)
);

CREATE TABLE inventory(
inventory_id int NOT NULL auto_increment,
dealership_id int NOT NULL, 
vin int NOT NULL,
PRIMARY KEY (inventory_id),
FOREIGN KEY(dealership_id) REFERENCES dealerships(dealership_id) 
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (vin) REFERENCES vehicles(vin) 
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE sales_contracts (
    sales_contract_id INT NOT NULL AUTO_INCREMENT,
    sales_date DATE,
    customerName VARCHAR(50) NOT NULL,
    customerEmail VARCHAR(100),
    vehicle_id INT NOT NULL,
    total_price DECIMAL(15,2) CHECK (total_price > 0),
    monthlyPayment DECIMAL(15,2),
    PRIMARY KEY (sales_contract_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vin) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE lease_contracts (
    lease_contract_id INT NOT NULL AUTO_INCREMENT,
    lease_date DATE,
    customerName VARCHAR(50) NOT NULL,
    customerEmail VARCHAR(100),
    vehicle_id INT NOT NULL,
    total_price DECIMAL(15,2) CHECK (total_price > 0),
    monthlyPayment DECIMAL(15,2),
    PRIMARY KEY (lease_contract_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vin) ON DELETE CASCADE ON UPDATE CASCADE
);



