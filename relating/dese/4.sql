SELECT "city", COUNT("name") AS "no" FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city" 
ORDER BY "no" DESC, "city" ASC LIMIT 10;
