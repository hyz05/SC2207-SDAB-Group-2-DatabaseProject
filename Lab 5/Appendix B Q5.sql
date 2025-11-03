SELECT 
    carpark_id,
    MONTH(validity_start) AS month,
    COUNT(*) AS passes_sold
FROM Purchases
WHERE MONTH(validity_start) = 9 AND carpark_id = 'CP001'
GROUP BY carpark_id, MONTH(validity_start);

SELECT 
    p.VRN,
    pe.name,
    CASE 
        WHEN a.carpark_id IS NULL THEN 'Fail - Not Resident'
        ELSE 'Success - Resident'
    END AS purchase_status
FROM Purchases p
JOIN Vehicle_Decom vd ON p.VRN = vd.VRN
JOIN Person pe ON vd.NRIC = pe.NRIC
LEFT JOIN Resident r ON vd.NRIC = r.NRIC
LEFT JOIN Accesses a ON a.unit_number = r.unit_number AND a.postal_code = r.postal_code AND a.carpark_id = p.carpark_id
WHERE MONTH(p.validity_start) = 9 AND p.carpark_id = 'CP001';