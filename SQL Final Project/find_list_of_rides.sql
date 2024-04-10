SELECT *
FROM vehicle_location_histories AS v
WHERE v.city = 'new york'
    AND v.long BETWEEN 40.5 AND 40.6
    AND v.lat BETWEEN -74.997 AND -74.9968
    AND v.timestamp::date = '2020-06-23'::date
    