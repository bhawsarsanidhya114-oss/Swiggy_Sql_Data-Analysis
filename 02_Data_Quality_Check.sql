-- Swiggy SQL Data Analysis
-- Phase 2: Data Quality Check

-- 1. Check duplicate restaurant IDs

SELECT 
    id,
    COUNT(*) AS id_count
FROM Swiggy
GROUP BY id
HAVING COUNT(*) > 1;


-- 2. Check extra spaces in city

SELECT *
FROM Swiggy
WHERE city <> LTRIM(RTRIM(city));


-- 3. Check duplicate restaurant names

SELECT 
    name,
    COUNT(*) AS name_count
FROM Swiggy
GROUP BY name
HAVING COUNT(*) > 1
ORDER BY name_count DESC;


-- 4. Check rating values

SELECT DISTINCT rating
FROM Swiggy
ORDER BY rating;


-- 5. Check rating count values

SELECT DISTINCT rating_count
FROM Swiggy
ORDER BY rating_count;


-- 6. Check cost values

SELECT DISTINCT cost
FROM Swiggy
ORDER BY cost;


-- 7. Check cuisine values

SELECT DISTINCT cuisine
FROM Swiggy
ORDER BY cuisine;


-- 8. Check missing or blank links

SELECT *
FROM Swiggy
WHERE link IS NULL
   OR LTRIM(RTRIM(link)) = '';


-- 9. Check extra spaces in address

SELECT *
FROM Swiggy
WHERE address <> LTRIM(RTRIM(address));  


-- 10. Check menu values

SELECT TOP 20 menu
FROM Swiggy;


-- 11. Check invalid license values

SELECT *
FROM Swiggy
WHERE lic_no = 'license';


