SELECT DISTINCT u.name AS "rider name", r.vehicle_id, u.address
FROM rides AS r
JOIN (
    SELECT *
    FROM vehicle_location_histories AS v
    WHERE v.city = 'new york'
        AND v.long BETWEEN 40.5 AND 40.6
        AND v.lat BETWEEN -74.997 AND -74.9968
        AND v.timestamp::date = '2020-06-23'::date
) AS vlh ON (vlh.ride_id = r.id)
JOIN vehicles AS v ON (v.id = r.vehicle_id)
JOIN users AS u ON (r.rider_id = u.id)
ORDER BY u.name





    