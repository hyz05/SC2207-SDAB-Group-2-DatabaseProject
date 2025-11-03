SELECT 
    pe.name,
    vd.VRN,
    COUNT(*) AS offence_count,
    SUM(r.fine) AS total_fine
FROM Offence o
JOIN Rules r ON o.rule_no = r.rule_no
JOIN Vehicle_Decom vd ON o.VRN = vd.VRN
JOIN Person pe ON vd.NRIC = pe.NRIC
LEFT JOIN Resident res ON vd.NRIC = res.NRIC
LEFT JOIN Accesses a ON a.unit_number = res.unit_number AND a.postal_code = res.postal_code AND a.carpark_id = o.VRN
WHERE a.carpark_id IS NULL
GROUP BY pe.name, vd.VRN;