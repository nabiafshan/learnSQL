-- Data available @
-- https://gist.github.com/pamelafox/b98e03caca7d1ec14394a90ec1512cff

-- What undergraduate majors do astronauts have?
SELECT COUNT(*) as counts, Undergraduate_Major from astronauts 
    GROUP BY Undergraduate_Major 
    ORDER BY counts;

-- What graduate majors do astronauts have?
SELECT COUNT(*) as g_counts, Graduate_Major from astronauts 
    GROUP by Graduate_Major 
    ORDER BY g_counts DESC;

-- Whihc schools do they graduate from?
SELECT COUNT(*) as counts, Alma_Mater FROM astronauts 
    GROUP BY Alma_Mater 
    ORDER BY counts;

--  How many studied engineering in their undergrad?
SELECT COUNT(*) as counts, Undergraduate_Major FROM astronauts 
    WHERE Undergraduate_Major LIKE '%Engineering' 
    GROUP BY Undergraduate_Major 
    ORDER BY counts;

-- Counts, average age and science/engineering majors of astronauts by gender
SELECT COUNT(*), gender, Birth_Date, 
    AVG(
        CAST(substr(date(), 0, 5) as INTEGER) - 
        CAST(substr(Birth_Date, -4, 4) as INTEGER)
        ) as avg_age,
    CASE
        WHEN Undergraduate_Major LIKE '%Engineering%' OR 
             Undergraduate_Major LIKE '%Science%' THEN 'TRUE'
        ELSE 'FALSE'
    END as is_engineer_science
    FROM astronauts
    GROUP BY is_engineer_science, gender;
 
-- How to get age from birth date. 
SELECT Birth_Date, 
    CAST(substr(date(), 0, 5) as INTEGER) - 
    CAST(substr(Birth_Date, -4, 4) as INTEGER) 
    as  age  
    from astronauts;

-- What military ranks?
SELECT COUNT(*) as counts, Military_Rank from astronauts 
    GROUP BY Military_Rank 
    ORDER BY counts;

-- Average spcae flights
SELECT AVG(Space_Flights) FROM astronauts;

-- Average space flights by gender
SELECT gender, 
    AVG(Space_Flights) as avg_sp_flights, 
    COUNT(*) as counts 
    FROM astronauts 
    GROUP BY gender 
    ORDER BY avg_sp_flights;


SELECT AVG(Space_Flight_hr) FROM astronauts;

SELECT gender, 
    AVG(Space_Flight_hr) as avg_sp_flight_hrs, 
    COUNT(*) as counts 
    FROM astronauts 
    GROUP BY gender 
    ORDER BY avg_sp_flight_hrs;

-- Find counts of astronauts with age < 60
SELECT COUNT(*) as counts, 
    CAST(substr(date(), 0, 5) as INTEGER) -
    CAST(substr(Birth_Date, -4, 4) as INTEGER) as  age  
    from astronauts 
    GROUP BY age 
    HAVING age < 60;