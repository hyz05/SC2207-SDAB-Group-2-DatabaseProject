SELECT 
    pt.carpark_id,
    SUM(str.charges) AS short_term_revenue
FROM Parking_Transaction pt
JOIN Short_Term_Parking_Rate str ON pt.UID = str.UID
GROUP BY pt.carpark_id;

SELECT 
    carpark_id,
    SUM(amount_paid) AS season_parking_revenue
FROM Purchases
GROUP BY carpark_id;