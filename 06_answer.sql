USE CarDealershipDatabase;
SELECT *
FROM sales_contracts
JOIN vehicles ON sales_contracts.vehicle_id = vehicles.vin
JOIN inventory ON inventory.vin = sales_contracts.vehicle_id
JOIN dealerships ON inventory.dealership_id = dealerships.dealership_id
WHERE dealerships.name = 'ABC Motors' AND sales_contracts.sales_date BETWEEN '2022-12-01' AND '2023-05-01';