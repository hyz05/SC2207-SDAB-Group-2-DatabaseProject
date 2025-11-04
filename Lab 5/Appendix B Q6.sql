SELECT 
    r.unit_number,
    r.postal_code,
    v.VRN,
    p.name AS owner_name,
    COUNT(*) AS season_pass_count,
    YEAR(pur.date_time) AS purchase_year,
    MONTH(pur.date_time) AS purchase_month
FROM Purchases pur
JOIN Vehicle_Decom v ON pur.VRN = v.VRN
JOIN Person p ON v.NRIC = p.NRIC
JOIN Resident r ON p.NRIC = r.NRIC
GROUP BY 
    r.unit_number,
    r.postal_code,
    v.VRN,
    p.name,
    YEAR(pur.date_time),
    MONTH(pur.date_time)
HAVING COUNT(*) > 3
ORDER BY r.postal_code, r.unit_number;