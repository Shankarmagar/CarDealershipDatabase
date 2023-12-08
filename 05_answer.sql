SELECT *
FROM dealerships
JOIN inventory ON dealerships.dealership_id = inventory.dealership_id
JOIN vehicles ON inventory.vin = vehicles.vin
WHERE vehicles.vehicleType = 'Sedan';