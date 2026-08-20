-- Swiggy SQL Data Analysis
-- Phase 1: Data Understanding

-- 1. Total number of rows
SELECT COUNT(*) AS Total_Rows
FROM Swiggy;


-- 2. View the data
SELECT *
FROM Swiggy;


-- 3. Check table structure
EXEC sp_help 'Swiggy';


-- 4. Count unique restaurant IDs
SELECT COUNT(DISTINCT id) AS Unique_Restaurants
FROM Swiggy;


-- 5. Compare total rows with unique IDs
SELECT
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT id) AS Unique_IDs
FROM Swiggy


-- 6. Check NULL values in each important column

SELECT
    SUM(CASE WHEN id IS NULL THEN 1 ELSE 0 END) AS null_id,
    SUM(CASE WHEN name IS NULL THEN 1 ELSE 0 END) AS null_name,
    SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS null_city,
    SUM(CASE WHEN rating IS NULL THEN 1 ELSE 0 END) AS null_rating,
    SUM(CASE WHEN rating_count IS NULL THEN 1 ELSE 0 END) AS null_rating_count,
    SUM(CASE WHEN cost IS NULL THEN 1 ELSE 0 END) AS null_cost,
    SUM(CASE WHEN cuisine IS NULL THEN 1 ELSE 0 END) AS null_cuisine
FROM Swiggy;


-- 7. Understand rating distribution
SELECT
    rating,
    COUNT(*) AS total
FROM Swiggy
GROUP BY rating
ORDER BY total DESC;


-- 8. Understand rating count distribution
SELECT
    rating_count,
    COUNT(*) AS total
FROM Swiggy
GROUP BY rating_count
ORDER BY total DESC;