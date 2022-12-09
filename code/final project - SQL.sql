create database if not exists final_project;
use final_project;

SELECT model, COUNT(ad_name) AS number_of_cars FROM main_table GROUP BY model ORDER BY number_of_cars DESC;

SELECT m.model, s.Engine_size, m.registration_year FROM main_table m LEFT JOIN secondary s ON m.model=s.Genmodel WHERE m.model = 'golf' AND  s.Engine_size < 1200 GROUP BY m.registration_year;

SELECT model, AVG(kilometer) FROM main_table GROUP BY model ORDER BY AVG(kilometer) ASC;

SELECT model, AVG(dollar_price) as price, registration_year FROM main_table  WHERE brand = 'mercedes_benz' GROUP BY registration_year ORDER BY price ASC;

SELECT brand, AVG(dollar_price),
CASE
    WHEN AVG(dollar_price) > 15000 THEN "This brand is expensive"
    WHEN AVG(dollar_price) < 5000 THEN "This brand is cheap"
    ELSE "This brand is affordable"
END
FROM main_table
GROUP BY brand;