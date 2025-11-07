SELECT 
    p.name,
    vd.NRIC,
    COUNT(*) AS total_offences
FROM Offence o
JOIN Carpark c 
    ON o.carpark_id = c.carpark_id
JOIN Vehicle_Decom vd 
    ON o.VRN = vd.VRN
JOIN Person p 
    ON vd.NRIC = p.NRIC
WHERE c.night_parking = 'No'
GROUP BY p.name, vd.NRIC
HAVING COUNT(*) > 3;
