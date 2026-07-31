-- Mississippi Vs. New Hampshire -- county level
SELECT State, County, "Food Environment Index", "% Adults with Obesity", "% Adults with Diabetes"
FROM "2025_CHR_county" cc 
WHERE State = "Mississippi";

SELECT State, County, "Food Environment Index", "% Adults with Obesity", "% Adults with Diabetes"
FROM "2025_CHR_county" cc 
WHERE State = "New Hampshire";


-- Mississippi vs New Hampshire -- State level
SELECT State, "Food Environment Index", "% Adults with Obesity", "% Adults with Diabetes"
FROM "2025_CHR_state" cc 
WHERE State = "Mississippi" OR State = "New Hampshire";