USE sdabg2
GO

-- Find persons who have committed more than 3 parking offenses 
-- at carparks which do not allow night parking

SELECT 
    p.NRIC,
    p.person_name,
    COUNT(o.offence_id) AS total_offenses
FROM Person p
INNER JOIN Vehicle_Decom v ON p.NRIC = v.NRIC
INNER JOIN Offence o ON v.VRN = o.VRN
INNER JOIN Carpark c ON o.carpark_id = c.carpark_id
WHERE c.Night_Parking = 'No'
GROUP BY p.NRIC, p.person_name
HAVING COUNT(o.offence_id) > 3
ORDER BY total_offenses DESC;
