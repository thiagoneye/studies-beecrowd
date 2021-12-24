SELECT  temperature, COUNT(temperature) AS number_of_record
FROM records
GROUP BY mark, temperature
ORDER BY mark