-- find the 10 counties with the lowest food environment index score
SELECT State, County, "Food Environment Index"
FROM "2025_CHR_county" cc 
ORDER BY "Food Environment Index" 
LIMIT 10;

-- Find the 10 states with the lowest food environment index score
SELECT State, "Food Environment Index"
FROM "2025_CHR_state" cc 
ORDER BY "Food Environment Index" 
LIMIT 10;

--- State with highest and lowest food environment index:
-- Lowest
SELECT State, "Food Environment Index"
FROM "2025_CHR_state" cs 
ORDER BY "Food Environment Index"
LIMIT 1; 
--Highest:
SELECT State, "Food Environment Index"
FROM "2025_CHR_state" cs 
ORDER BY "Food Environment Index" DESC
LIMIT 1; 


-- How many counties have adult obesity rate over 50% (~3 standard deviations from average)?
-- Counties with obesity rate of 50% or more
SELECT State, county, "% Adults with Obesity" 
FROM "2025_CHR_county" 
WHERE TRIM("% Adults with Obesity")  != 'N/A' AND "Adults with Obesity" IS NOT NULL AND "% Adults with Obesity" >= 50;

-- counties by state
SELECT State, Count(county)
FROM "2025_CHR_county" 
WHERE "% Adults with Obesity"  != 'N/A' AND "Adults with Obesity" IS NOT NULL AND "% Adults with Obesity" >= 50
GROUP BY State
ORDER BY COUNT(County);



-- Counties with diabetes rate of 18% or more  (~3 standard deviations from average)
SELECT State, county, "% Adults with Diabetes" 
FROM "2025_CHR_county" 
WHERE TRIM("% Adults with Diabetes")  != 'N/A' AND "% Adults with Diabetes" IS NOT NULL AND "% Adults with Diabetes" >= 18;

-- Number of counties  with  diabetes rate of 18% or more by state
SELECT State, COUNT(County) 
FROM "2025_CHR_county" 
WHERE "% Adults with Diabetes" != 'N/A' AND "% Adults with Diabetes" IS NOT NULL AND "% Adults with Diabetes" >= 18
GROUP BY "2025_CHR_county".State 
ORDER BY COUNT(County);






