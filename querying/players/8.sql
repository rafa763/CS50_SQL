SELECT ROUND(AVG("Height"), 2) AS "Average Height", 
ROUND(AVG("weight"), 2) AS "Average Weight" FROM "players"
WHERE "debut" >= '2000-01-01';
