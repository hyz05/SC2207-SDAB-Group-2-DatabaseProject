SELECT 
    c.carpark_id,
    ISNULL(s.short_term_revenue, 0) AS short_term_revenue,
    ISNULL(p.season_parking_revenue, 0) AS season_parking_revenue
FROM Carpark c
LEFT JOIN (
    SELECT pt.carpark_id, SUM(str.charges) AS short_term_revenue
    FROM Parking_Transaction pt
    JOIN Short_Term_Parking_Rate str ON pt.UID = str.UID
    GROUP BY pt.carpark_id
) s ON c.carpark_id = s.carpark_id
LEFT JOIN (
    SELECT carpark_id, SUM(amount_paid) AS season_parking_revenue
    FROM Purchases
    GROUP BY carpark_id
) p ON c.carpark_id = p.carpark_id;