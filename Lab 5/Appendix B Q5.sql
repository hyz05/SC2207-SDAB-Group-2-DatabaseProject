WITH CarparkThresholds AS (
    SELECT 
        c.carpark_id,
        COUNT(DISTINCT cl.lot_id) AS total_lots,
        CAST(COUNT(DISTINCT cl.lot_id) * 0.9 AS INT) AS threshold_90_percent,
        ISNULL((
            SELECT COUNT(*) 
            FROM Purchases p 
            WHERE p.carpark_id = c.carpark_id 
              AND p.validity_start >= '2025-10-01'
              AND p.validity_start < '2025-11-01'
        ), 0) AS passes_sold
    FROM Carpark c
    JOIN Carpark_Lot_Decom cl ON c.carpark_id = cl.carpark_id
    GROUP BY c.carpark_id
),
VehicleOwners AS (
    SELECT DISTINCT
        vd.VRN,
        pe.name,
        vd.NRIC,
        r.unit_number,
        r.postal_code
    FROM Vehicle_Decom vd
    JOIN Person pe ON vd.NRIC = pe.NRIC
    LEFT JOIN Resident r ON vd.NRIC = r.NRIC
),
CarparkNonResidents AS (
    SELECT 
        vo.VRN,
        vo.name,
        ct.carpark_id,
        CASE 
            WHEN EXISTS (
                SELECT 1 
                FROM Accesses a 
                WHERE a.carpark_id = ct.carpark_id 
                  AND a.unit_number = vo.unit_number 
                  AND a.postal_code = vo.postal_code
            ) THEN 'Resident of this carpark'
            ELSE 'Non-resident of this carpark'
        END AS residency_status
    FROM VehicleOwners vo
    CROSS JOIN CarparkThresholds ct
    WHERE vo.unit_number IS NOT NULL AND vo.postal_code IS NOT NULL
)
SELECT 
    cnr.VRN,
    cnr.name,
    cnr.carpark_id,
    ct.passes_sold AS current_passes_sold,
    ct.total_lots,
    ct.threshold_90_percent,
    CASE 
        WHEN ct.passes_sold >= ct.total_lots THEN 'Full ¨C No available spots'
        WHEN ct.passes_sold >= ct.threshold_90_percent THEN 'Threshold Reached ¨C Residents Only'
        ELSE 'Open to All'
    END AS carpark_status,
    cnr.residency_status,
    CASE 
        WHEN ct.passes_sold >= ct.total_lots THEN 'FAIL - Full: No available spots'
        WHEN ct.passes_sold >= ct.threshold_90_percent 
             AND cnr.residency_status = 'Non-resident of this carpark'
        THEN 'FAIL - Blocked: 90% threshold reached (residents only)'
        WHEN ct.passes_sold >= ct.threshold_90_percent 
             AND cnr.residency_status = 'Resident of this carpark'
        THEN 'SUCCESS - Eligible (resident of this carpark)'
        ELSE 'SUCCESS - Eligible for purchase (open to all)'
    END AS purchase_result
FROM CarparkNonResidents cnr
JOIN CarparkThresholds ct ON cnr.carpark_id = ct.carpark_id
WHERE NOT EXISTS (
    SELECT 1 
    FROM Purchases p 
    WHERE p.VRN = cnr.VRN 
      AND p.carpark_id = ct.carpark_id
      AND p.validity_start >= '2025-10-01'
      AND p.validity_start < '2025-11-01'
)
ORDER BY 
    ct.carpark_id,
    cnr.residency_status,
    cnr.VRN;
