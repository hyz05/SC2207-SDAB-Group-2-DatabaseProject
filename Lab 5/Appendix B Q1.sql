SELECT
    pt.carpark_id,
    COUNT(CASE WHEN v.vehicle_category = 'Car' THEN 1 END) AS num_cars,
    COUNT(CASE WHEN v.vehicle_category = 'Motorcycle' THEN 1 END) AS num_motorcycles,
    COUNT(CASE WHEN v.vehicle_category = 'Commercial Vehicle' THEN 1 END) AS num_commercial_vehicles
FROM Parking_Transaction pt
JOIN Vehicle_Decom v ON pt.VRN = v.VRN
JOIN MSCP m ON pt.carpark_id = m.carpark_id
WHERE pt.duration_minutes < 60
  AND pt.day_of_week IN ('Monday','Tuesday','Wednesday','Thursday','Friday')
GROUP BY pt.carpark_id
ORDER BY pt.carpark_id;