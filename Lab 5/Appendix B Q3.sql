SELECT 
    p.VRN,
    pe.name,
    p.carpark_id,
    DATEDIFF(MONTH, p.validity_start, p.validity_end) AS months_subscribed
FROM Purchases p
JOIN Vehicle_Decom vd ON p.VRN = vd.VRN
JOIN Person pe ON vd.NRIC = pe.NRIC
LEFT JOIN Resident r ON vd.NRIC = r.NRIC
LEFT JOIN Accesses a ON a.unit_number = r.unit_number AND a.postal_code = r.postal_code AND a.carpark_id = p.carpark_id
WHERE a.carpark_id IS NULL;