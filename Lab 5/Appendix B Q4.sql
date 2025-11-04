SELECT 
    p.name AS owner_name,
    v.VRN AS vehicle_registration,
    COUNT(*) AS offence_count,
    SUM(r.fine) AS total_fines
FROM Offence o
JOIN Vehicle_Decom v ON o.VRN = v.VRN
JOIN Person p ON v.NRIC = p.NRIC
JOIN Rules r ON o.rule_no = r.rule_no AND o.vehicle_type = r.vehicle_type
LEFT JOIN Resident res ON v.NRIC = res.NRIC
LEFT JOIN Accesses a 
       ON o.carpark_id = a.carpark_id 
      AND res.postal_code = a.postal_code
      AND res.unit_number = a.unit_number
WHERE a.carpark_id IS NULL 
GROUP BY p.name, v.VRN
ORDER BY owner_name;