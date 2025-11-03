SELECT 
    m.carpark_id,
    vd.vehicle_category,
    COUNT(*) AS vehicle_count
FROM Parking_Transaction pt
JOIN MSCP m ON pt.carpark_id = m.carpark_id
JOIN Vehicle_Decom vd ON pt.VRN = vd.VRN
WHERE pt.day_of_week IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')
  AND pt.duration_minutes < 60
GROUP BY m.carpark_id, vd.vehicle_category;