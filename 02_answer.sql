SELECT *
FROM vehicles
JOIN inventory ON vehicles.vin = inventory.vin
JOIN dealerships ON inventory.dealership_id = dealerships.dealership_id
WHERE dealerships.name = 'ABC Motors';