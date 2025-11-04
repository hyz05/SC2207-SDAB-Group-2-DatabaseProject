SELECT 
    p.name AS owner_name,
    v.VRN,
    COUNT(o.date_time) AS offence_count,
    SUM(r.fine) AS total_fines
FROM Offence o
JOIN Vehicle_Decom v ON o.VRN = v.VRN
JOIN Person p ON v.NRIC = p.NRIC
JOIN Rules r ON o.rule_no = r.rule_no AND o.vehicle_type = r.vehicle_type
JOIN Accesses a ON o.VRN = v.VRN
JOIN Resident res ON p.NRIC = res.NRIC
WHERE NOT EXISTS (
    SELECT 1
    FROM Accesses a2
    WHERE a2.carpark_id = o.carpark_id
      AND a2.unit_number = res.unit_number
      AND a2.postal_code = res.postal_code
)
GROUP BY p.name, v.VRN
ORDER BY total_fines DESC;