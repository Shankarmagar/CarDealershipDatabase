INSERT INTO dealerships (name, address, phone) VALUES
('ABC Motors', '123 Main St', '555-1234'),
('XYZ Cars', '456 Oak St', '555-5678'),
('123 Auto Group', '789 Maple Ave', '555-9876'),
('Best Wheels Inc.', '101 Pine Blvd', '555-4321'),
('City Auto Mall', '202 Elm Lane', '555-8765'),
('Speedy Cars Co.', '303 Cedar Road', '555-3456'),
('Greenfield Motors', '404 Birch Street', '555-6543'),
('Sunset Autos', '505 Spruce Drive', '555-2345'),
('Silver Star Motors', '606 Oakwood Lane', '555-7654'),
('Golden Gate Cars', '707 Palm Street', '555-8765');

INSERT INTO vehicles (vin, year, make, model, vehicleType, color, odometer, price, SOLD) VALUES
(10112, 2022, 'Toyota', 'Camry', 'Sedan', 'Blue', 15000, 25000.00, true),
(22345, 2021, 'Honda', 'Civic', 'Sedan', 'Red', 12000, 20000.00, true),
(38403, 2023, 'Ford', 'Escape', 'SUV', 'Silver', 18000, 30000.00, true),
(43433, 2020, 'Chevrolet', 'Malibu', 'Sedan', 'White', 22000, 22000.00, true),
(50347, 2021, 'Nissan', 'Rogue', 'SUV', 'Black', 16000, 28000.00, true),
(60583, 2022, 'Hyundai', 'Elantra', 'Sedan', 'Gray', 14000, 23000.00, false),
(71893, 2023, 'Kia', 'Sportage', 'SUV', 'Green', 20000, 32000.00, false),
(80348, 2020, 'Mazda', 'CX-5', 'SUV', 'Blue', 24000, 25000.00, false),
(96482, 2021, 'Volkswagen', 'Jetta', 'Sedan', 'Red', 17000, 26000.00, false),
(10034, 2022, 'Subaru', 'Outback', 'Wagon', 'Silver', 19000, 27000.00, false);


INSERT INTO inventory (dealership_id, vin) VALUES
(1, 10112),
(2, 22345),
(3, 38403),
(4, 43433),
(5, 50347),
(6, 60583),
(7, 71893),
(8, 80348),
(9, 96482),
(10, 10034);


INSERT INTO sales_contracts (sales_date, customerName, customerEmail, vehicle_id, total_price, monthlyPayment) VALUES
('2023-01-15', 'John Doe', 'john@example.com', 10112, 25000.00, 500.00),
('2023-02-20', 'Jane Smith', 'jane@example.com', 22345, 20000.00, 400.00),
('2023-03-10', 'Bob Johnson', 'bob@example.com', 38403, 30000.00, 600.00),
('2023-04-05', 'Alice Brown', 'alice@example.com', 43433, 22000.00, 440.00),
('2023-05-15', 'Chris Evans', 'chris@example.com', 50347, 28000.00, 560.00);


INSERT INTO lease_contracts (lease_date, customerName, customerEmail, vehicle_id, total_price, monthlyPayment) VALUES
('2023-01-15', 'Michael Jordan', 'michael@example.com', 60583, 25000.00, 350.00),
('2023-02-20', 'Serena Williams', 'serena@example.com', 71893, 20000.00, 300.00),
('2023-03-10', 'Usain Bolt', 'usain@example.com', 80348, 30000.00, 400.00),
('2023-04-05', 'Simone Biles', 'simone@example.com', 96482, 22000.00, 320.00),
('2023-05-15', 'Roger Federer', 'roger@example.com', 10034, 28000.00, 380.00);

